
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx88_core {int dummy; } ;


 int EINVAL ;
 int MO_GP2_IO ;

 int cx_write (int ,int) ;
 int mdelay (int) ;

__attribute__((used)) static int cx88_pv_8000gt_callback(struct cx88_core *core,
       int command, int arg)
{
 switch (command) {
 case 128:
  cx_write(MO_GP2_IO, 0xcf7);
  mdelay(50);
  cx_write(MO_GP2_IO, 0xef5);
  mdelay(50);
  cx_write(MO_GP2_IO, 0xcf7);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
