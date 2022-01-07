
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef enum ctype { ____Placeholder_ctype } ctype ;


 int BUG () ;
 int GFP_KERNEL ;
 int TASK_UNINTERRUPTIBLE ;
 int cpu_relax () ;
 int kfree (int*) ;
 int* kmalloc (size_t,int ) ;
 int local_irq_disable () ;
 int memset (int*,int,size_t) ;
 int panic (char*) ;
 int preempt_disable () ;
 int recursive_loop (int ) ;
 int schedule () ;
 int set_current_state (int ) ;

__attribute__((used)) static void lkdtm_do_action(enum ctype which)
{
 switch (which) {
 case 131:
  panic("dumptest");
  break;
 case 140:
  BUG();
  break;
 case 138:
  *((int *) 0) = 0;
  break;
 case 135:
  for (;;)
   ;
  break;
 case 133:
  (void) recursive_loop(0);
  break;
 case 139: {
  volatile u32 data[8];
  volatile u32 *p = data;

  p[12] = 0x12345678;
  break;
 }
 case 129: {
  static u8 data[5] __attribute__((aligned(4))) = {1, 2,
    3, 4, 5};
  u32 *p;
  u32 val = 0x12345678;

  p = (u32 *)(data + 1);
  if (*p == 0)
   val = 0x87654321;
  *p = val;
   break;
 }
 case 132: {
  size_t len = 1020;
  u32 *data = kmalloc(len, GFP_KERNEL);

  data[1024 / sizeof(u32)] = 0x12345678;
  kfree(data);
  break;
 }
 case 128: {
  size_t len = 1024;
  u32 *data = kmalloc(len, GFP_KERNEL);

  kfree(data);
  schedule();
  memset(data, 0x78, len);
  break;
 }
 case 130:
  preempt_disable();
  for (;;)
   cpu_relax();
  break;
 case 137:
  local_irq_disable();
  for (;;)
   cpu_relax();
  break;
 case 136:
  set_current_state(TASK_UNINTERRUPTIBLE);
  schedule();
  break;
 case 134:
 default:
  break;
 }

}
