
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_vid_hdr {int vol_type; int data_pad; int used_ebs; int vol_id; } ;
struct ubi_scan_volume {scalar_t__ leb_count; int vol_id; scalar_t__ vol_type; int used_ebs; int data_pad; } ;


 int EINVAL ;
 scalar_t__ UBI_STATIC_VOLUME ;
 int UBI_VID_DYNAMIC ;
 int UBI_VID_STATIC ;
 int be32_to_cpu (int ) ;
 int dbg_err (char*) ;
 int ubi_dbg_dump_sv (struct ubi_scan_volume const*) ;
 int ubi_dbg_dump_vid_hdr (struct ubi_vid_hdr const*) ;
 int ubi_err (char*,int) ;

__attribute__((used)) static int validate_vid_hdr(const struct ubi_vid_hdr *vid_hdr,
       const struct ubi_scan_volume *sv, int pnum)
{
 int vol_type = vid_hdr->vol_type;
 int vol_id = be32_to_cpu(vid_hdr->vol_id);
 int used_ebs = be32_to_cpu(vid_hdr->used_ebs);
 int data_pad = be32_to_cpu(vid_hdr->data_pad);

 if (sv->leb_count != 0) {
  int sv_vol_type;







  if (vol_id != sv->vol_id) {
   dbg_err("inconsistent vol_id");
   goto bad;
  }

  if (sv->vol_type == UBI_STATIC_VOLUME)
   sv_vol_type = UBI_VID_STATIC;
  else
   sv_vol_type = UBI_VID_DYNAMIC;

  if (vol_type != sv_vol_type) {
   dbg_err("inconsistent vol_type");
   goto bad;
  }

  if (used_ebs != sv->used_ebs) {
   dbg_err("inconsistent used_ebs");
   goto bad;
  }

  if (data_pad != sv->data_pad) {
   dbg_err("inconsistent data_pad");
   goto bad;
  }
 }

 return 0;

bad:
 ubi_err("inconsistent VID header at PEB %d", pnum);
 ubi_dbg_dump_vid_hdr(vid_hdr);
 ubi_dbg_dump_sv(sv);
 return -EINVAL;
}
