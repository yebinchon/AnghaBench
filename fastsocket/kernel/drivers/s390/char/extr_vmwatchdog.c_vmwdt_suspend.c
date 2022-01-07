
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NOTIFY_BAD ;
 int NOTIFY_DONE ;
 int VMWDT_OPEN ;
 int VMWDT_RUNNING ;
 int clear_bit (int ,int *) ;
 int pr_err (char*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int vmwdt_is_open ;

__attribute__((used)) static int vmwdt_suspend(void)
{
 if (test_and_set_bit(VMWDT_OPEN, &vmwdt_is_open)) {
  pr_err("The system cannot be suspended while the watchdog"
   " is in use\n");
  return NOTIFY_BAD;
 }
 if (test_bit(VMWDT_RUNNING, &vmwdt_is_open)) {
  clear_bit(VMWDT_OPEN, &vmwdt_is_open);
  pr_err("The system cannot be suspended while the watchdog"
   " is running\n");
  return NOTIFY_BAD;
 }
 return NOTIFY_DONE;
}
