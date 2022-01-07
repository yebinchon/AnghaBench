
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request {TYPE_1__* rq_disk; } ;
struct hd_i_struct {int head; scalar_t__ special_op; int sect; scalar_t__ recalibrate; } ;
struct TYPE_2__ {int disk_name; } ;


 int ATA_CMD_RESTORE ;
 int EIO ;
 int hd_end_request_cur (int ) ;
 int hd_out (struct hd_i_struct*,int ,int ,int ,int ,int ,int *) ;
 int printk (char*,int ) ;
 int recal_intr ;
 int reset ;

__attribute__((used)) static int do_special_op(struct hd_i_struct *disk, struct request *req)
{
 if (disk->recalibrate) {
  disk->recalibrate = 0;
  hd_out(disk, disk->sect, 0, 0, 0, ATA_CMD_RESTORE, &recal_intr);
  return reset;
 }
 if (disk->head > 16) {
  printk("%s: cannot handle device with more than 16 heads - giving up\n", req->rq_disk->disk_name);
  hd_end_request_cur(-EIO);
 }
 disk->special_op = 0;
 return 1;
}
