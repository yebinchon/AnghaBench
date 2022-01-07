
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hd_i_struct {int special_op; int recalibrate; int cyl; scalar_t__ head; int sect; } ;


 int ATA_CMD_INIT_DEV_PARAMS ;
 int NR_HD ;
 int check_status () ;
 struct hd_i_struct* hd_info ;
 int hd_out (struct hd_i_struct*,int ,int ,scalar_t__,int ,int ,void (*) ()) ;
 int hd_request () ;
 scalar_t__ reset ;
 int reset_controller () ;

__attribute__((used)) static void reset_hd(void)
{
 static int i;

repeat:
 if (reset) {
  reset = 0;
  i = -1;
  reset_controller();
 } else {
  check_status();
  if (reset)
   goto repeat;
 }
 if (++i < NR_HD) {
  struct hd_i_struct *disk = &hd_info[i];
  disk->special_op = disk->recalibrate = 1;
  hd_out(disk, disk->sect, disk->sect, disk->head-1,
   disk->cyl, ATA_CMD_INIT_DEV_PARAMS, &reset_hd);
  if (reset)
   goto repeat;
 } else
  hd_request();
}
