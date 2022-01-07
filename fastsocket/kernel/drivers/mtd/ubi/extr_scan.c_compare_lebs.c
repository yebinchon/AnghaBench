
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint32_t ;
struct ubi_vid_hdr {int data_crc; int data_size; int copy_flag; int sqnum; } ;
struct ubi_scan_leb {unsigned long long sqnum; int pnum; } ;
struct ubi_device {int dummy; } ;


 int EBADMSG ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int UBI_CRC32_INIT ;
 int UBI_IO_BITFLIPS ;
 void* be32_to_cpu (int ) ;
 unsigned long long be64_to_cpu (int ) ;
 void* crc32 (int ,void*,int) ;
 int dbg_bld (char*,int,...) ;
 int dbg_err (char*,int) ;
 int ubi_err (char*) ;
 int ubi_free_vid_hdr (struct ubi_device*,struct ubi_vid_hdr*) ;
 int ubi_io_read_data (struct ubi_device*,void*,int,int ,int) ;
 int ubi_io_read_vid_hdr (struct ubi_device*,int,struct ubi_vid_hdr*,int ) ;
 struct ubi_vid_hdr* ubi_zalloc_vid_hdr (struct ubi_device*,int ) ;
 int vfree (void*) ;
 void* vmalloc (int) ;

__attribute__((used)) static int compare_lebs(struct ubi_device *ubi, const struct ubi_scan_leb *seb,
   int pnum, const struct ubi_vid_hdr *vid_hdr)
{
 void *buf;
 int len, err, second_is_newer, bitflips = 0, corrupted = 0;
 uint32_t data_crc, crc;
 struct ubi_vid_hdr *vh = ((void*)0);
 unsigned long long sqnum2 = be64_to_cpu(vid_hdr->sqnum);

 if (sqnum2 == seb->sqnum) {
  ubi_err("unsupported on-flash UBI format\n");
  return -EINVAL;
 }


 second_is_newer = !!(sqnum2 > seb->sqnum);
 if (second_is_newer) {
  if (!vid_hdr->copy_flag) {

   dbg_bld("second PEB %d is newer, copy_flag is unset",
    pnum);
   return 1;
  }
 } else {
  pnum = seb->pnum;

  vh = ubi_zalloc_vid_hdr(ubi, GFP_KERNEL);
  if (!vh)
   return -ENOMEM;

  err = ubi_io_read_vid_hdr(ubi, pnum, vh, 0);
  if (err) {
   if (err == UBI_IO_BITFLIPS)
    bitflips = 1;
   else {
    dbg_err("VID of PEB %d header is bad, but it "
     "was OK earlier", pnum);
    if (err > 0)
     err = -EIO;

    goto out_free_vidh;
   }
  }

  if (!vh->copy_flag) {

   dbg_bld("first PEB %d is newer, copy_flag is unset",
    pnum);
   err = bitflips << 1;
   goto out_free_vidh;
  }

  vid_hdr = vh;
 }



 len = be32_to_cpu(vid_hdr->data_size);
 buf = vmalloc(len);
 if (!buf) {
  err = -ENOMEM;
  goto out_free_vidh;
 }

 err = ubi_io_read_data(ubi, buf, pnum, 0, len);
 if (err && err != UBI_IO_BITFLIPS && err != -EBADMSG)
  goto out_free_buf;

 data_crc = be32_to_cpu(vid_hdr->data_crc);
 crc = crc32(UBI_CRC32_INIT, buf, len);
 if (crc != data_crc) {
  dbg_bld("PEB %d CRC error: calculated %#08x, must be %#08x",
   pnum, crc, data_crc);
  corrupted = 1;
  bitflips = 0;
  second_is_newer = !second_is_newer;
 } else {
  dbg_bld("PEB %d CRC is OK", pnum);
  bitflips = !!err;
 }

 vfree(buf);
 ubi_free_vid_hdr(ubi, vh);

 if (second_is_newer)
  dbg_bld("second PEB %d is newer, copy_flag is set", pnum);
 else
  dbg_bld("first PEB %d is newer, copy_flag is set", pnum);

 return second_is_newer | (bitflips << 1) | (corrupted << 2);

out_free_buf:
 vfree(buf);
out_free_vidh:
 ubi_free_vid_hdr(ubi, vh);
 return err;
}
