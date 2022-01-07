
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct ubi_vid_hdr {int dummy; } ;
struct ubi_device {int peb_size; int vid_hdr_aloffset; TYPE_1__* mtd; } ;
typedef int loff_t ;
struct TYPE_3__ {int (* write ) (TYPE_1__*,int,int,size_t*,void*) ;} ;


 int EIO ;
 int UBI_IO_BAD_VID_HDR ;
 int stub1 (TYPE_1__*,int,int,size_t*,void*) ;
 int stub2 (TYPE_1__*,int,int,size_t*,void*) ;
 int ubi_dbg_dump_flash (struct ubi_device*,int,int ,int) ;
 int ubi_err (char*,int,int,int) ;
 int ubi_io_read_vid_hdr (struct ubi_device*,int,struct ubi_vid_hdr*,int ) ;

__attribute__((used)) static int nor_erase_prepare(struct ubi_device *ubi, int pnum)
{
 int err, err1;
 size_t written;
 loff_t addr;
 uint32_t data = 0;
 struct ubi_vid_hdr vid_hdr;

 addr = (loff_t)pnum * ubi->peb_size + ubi->vid_hdr_aloffset;
 err = ubi->mtd->write(ubi->mtd, addr, 4, &written, (void *)&data);
 if (!err) {
  addr -= ubi->vid_hdr_aloffset;
  err = ubi->mtd->write(ubi->mtd, addr, 4, &written,
          (void *)&data);
  if (!err)
   return 0;
 }







 err1 = ubi_io_read_vid_hdr(ubi, pnum, &vid_hdr, 0);
 if (err1 == UBI_IO_BAD_VID_HDR)





  return 0;






 ubi_err("cannot invalidate PEB %d, write returned %d read returned %d",
  pnum, err, err1);
 ubi_dbg_dump_flash(ubi, pnum, 0, ubi->peb_size);
 return -EIO;
}
