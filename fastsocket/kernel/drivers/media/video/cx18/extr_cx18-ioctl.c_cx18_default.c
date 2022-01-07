
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct file {int dummy; } ;
struct cx18_open_id {struct cx18* cx; } ;
struct cx18 {int dummy; } ;


 int CX18_GPIO_RESET_Z8F0811 ;
 int CX18_HW_GPIO_RESET_CTRL ;
 long EINVAL ;

 int core ;
 int cx18_call_hw (struct cx18*,int ,int ,int ,int) ;
 int reset ;

__attribute__((used)) static long cx18_default(struct file *file, void *fh, int cmd, void *arg)
{
 struct cx18 *cx = ((struct cx18_open_id *)fh)->cx;

 switch (cmd) {
 case 128: {
  u32 val = *(u32 *)arg;

  if ((val == 0) || (val & 0x01))
   cx18_call_hw(cx, CX18_HW_GPIO_RESET_CTRL, core, reset,
         (u32) CX18_GPIO_RESET_Z8F0811);
  break;
 }

 default:
  return -EINVAL;
 }
 return 0;
}
