
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int devno; } ;
struct urdev {TYPE_1__ dev_id; } ;
struct file_control_block {int file_stat; } ;


 int EMFILE ;
 int ENODATA ;
 int ENOMEM ;
 int EPERM ;
 int FLG_IN_USE ;
 int FLG_SYSTEM_HOLD ;
 int FLG_USER_HOLD ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 scalar_t__ __get_free_page (int) ;
 int diag_read_file (int ,char*) ;
 int diag_read_next_file_info (struct file_control_block*,int ) ;
 int free_page (unsigned long) ;
 int kfree (struct file_control_block*) ;
 struct file_control_block* kmalloc (int,int) ;

__attribute__((used)) static int verify_uri_device(struct urdev *urd)
{
 struct file_control_block *fcb;
 char *buf;
 int rc;

 fcb = kmalloc(sizeof(*fcb), GFP_KERNEL | GFP_DMA);
 if (!fcb)
  return -ENOMEM;


 rc = diag_read_next_file_info(fcb, 0);
 if (rc)
  goto fail_free_fcb;


 if (fcb->file_stat & (FLG_SYSTEM_HOLD | FLG_USER_HOLD)) {
  rc = -EPERM;
  goto fail_free_fcb;
 }


 buf = (char *) __get_free_page(GFP_KERNEL | GFP_DMA);
 if (!buf) {
  rc = -ENOMEM;
  goto fail_free_fcb;
 }
 rc = diag_read_file(urd->dev_id.devno, buf);
 if ((rc != 0) && (rc != -ENODATA))
  goto fail_free_buf;


 rc = diag_read_next_file_info(fcb, 0);
 if (rc)
  goto fail_free_buf;
 if (!(fcb->file_stat & FLG_IN_USE)) {
  rc = -EMFILE;
  goto fail_free_buf;
 }
 rc = 0;

fail_free_buf:
 free_page((unsigned long) buf);
fail_free_fcb:
 kfree(fcb);
 return rc;
}
