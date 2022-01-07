
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ubi_volume {int vol_id; int data_pad; int* eba_tbl; } ;
struct ubi_vid_hdr {void* sqnum; void* data_crc; void* used_ebs; void* data_size; int vol_type; void* data_pad; int compat; void* lnum; void* vol_id; } ;
struct ubi_device {int bad_allowed; int min_io_size; scalar_t__ ro_mode; } ;


 int ALIGN (int,int ) ;
 int EIO ;
 int ENOMEM ;
 int EROFS ;
 int GFP_NOFS ;
 int UBI_CRC32_INIT ;
 int UBI_IO_RETRIES ;
 int UBI_VID_STATIC ;
 void* cpu_to_be32 (int) ;
 void* cpu_to_be64 (int ) ;
 int crc32 (int ,void const*,int) ;
 int dbg_eba (char*,int,int,int,int,int) ;
 int leb_write_lock (struct ubi_device*,int,int) ;
 int leb_write_unlock (struct ubi_device*,int,int) ;
 int next_sqnum (struct ubi_device*) ;
 int ubi_assert (int) ;
 int ubi_free_vid_hdr (struct ubi_device*,struct ubi_vid_hdr*) ;
 int ubi_get_compat (struct ubi_device*,int) ;
 int ubi_io_write_data (struct ubi_device*,void const*,int,int ,int) ;
 int ubi_io_write_vid_hdr (struct ubi_device*,int,struct ubi_vid_hdr*) ;
 int ubi_msg (char*) ;
 int ubi_ro_mode (struct ubi_device*) ;
 int ubi_warn (char*,int,int,...) ;
 int ubi_wl_get_peb (struct ubi_device*,int) ;
 int ubi_wl_put_peb (struct ubi_device*,int,int) ;
 struct ubi_vid_hdr* ubi_zalloc_vid_hdr (struct ubi_device*,int ) ;

int ubi_eba_write_leb_st(struct ubi_device *ubi, struct ubi_volume *vol,
    int lnum, const void *buf, int len, int dtype,
    int used_ebs)
{
 int err, pnum, tries = 0, data_size = len, vol_id = vol->vol_id;
 struct ubi_vid_hdr *vid_hdr;
 uint32_t crc;

 if (ubi->ro_mode)
  return -EROFS;

 if (lnum == used_ebs - 1)

  len = ALIGN(data_size, ubi->min_io_size);
 else
  ubi_assert(!(len & (ubi->min_io_size - 1)));

 vid_hdr = ubi_zalloc_vid_hdr(ubi, GFP_NOFS);
 if (!vid_hdr)
  return -ENOMEM;

 err = leb_write_lock(ubi, vol_id, lnum);
 if (err) {
  ubi_free_vid_hdr(ubi, vid_hdr);
  return err;
 }

 vid_hdr->sqnum = cpu_to_be64(next_sqnum(ubi));
 vid_hdr->vol_id = cpu_to_be32(vol_id);
 vid_hdr->lnum = cpu_to_be32(lnum);
 vid_hdr->compat = ubi_get_compat(ubi, vol_id);
 vid_hdr->data_pad = cpu_to_be32(vol->data_pad);

 crc = crc32(UBI_CRC32_INIT, buf, data_size);
 vid_hdr->vol_type = UBI_VID_STATIC;
 vid_hdr->data_size = cpu_to_be32(data_size);
 vid_hdr->used_ebs = cpu_to_be32(used_ebs);
 vid_hdr->data_crc = cpu_to_be32(crc);

retry:
 pnum = ubi_wl_get_peb(ubi, dtype);
 if (pnum < 0) {
  ubi_free_vid_hdr(ubi, vid_hdr);
  leb_write_unlock(ubi, vol_id, lnum);
  return pnum;
 }

 dbg_eba("write VID hdr and %d bytes at LEB %d:%d, PEB %d, used_ebs %d",
  len, vol_id, lnum, pnum, used_ebs);

 err = ubi_io_write_vid_hdr(ubi, pnum, vid_hdr);
 if (err) {
  ubi_warn("failed to write VID header to LEB %d:%d, PEB %d",
    vol_id, lnum, pnum);
  goto write_error;
 }

 err = ubi_io_write_data(ubi, buf, pnum, 0, len);
 if (err) {
  ubi_warn("failed to write %d bytes of data to PEB %d",
    len, pnum);
  goto write_error;
 }

 ubi_assert(vol->eba_tbl[lnum] < 0);
 vol->eba_tbl[lnum] = pnum;

 leb_write_unlock(ubi, vol_id, lnum);
 ubi_free_vid_hdr(ubi, vid_hdr);
 return 0;

write_error:
 if (err != -EIO || !ubi->bad_allowed) {





  ubi_ro_mode(ubi);
  leb_write_unlock(ubi, vol_id, lnum);
  ubi_free_vid_hdr(ubi, vid_hdr);
  return err;
 }

 err = ubi_wl_put_peb(ubi, pnum, 1);
 if (err || ++tries > UBI_IO_RETRIES) {
  ubi_ro_mode(ubi);
  leb_write_unlock(ubi, vol_id, lnum);
  ubi_free_vid_hdr(ubi, vid_hdr);
  return err;
 }

 vid_hdr->sqnum = cpu_to_be64(next_sqnum(ubi));
 ubi_msg("try another PEB");
 goto retry;
}
