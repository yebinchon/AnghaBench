
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct controller {int dummy; } ;


 scalar_t__ check_link_active (struct controller*) ;
 int ctrl_dbg (struct controller*,char*) ;
 int msleep (int) ;

__attribute__((used)) static void pcie_wait_link_active(struct controller *ctrl)
{
 int timeout = 1000;

 if (check_link_active(ctrl))
  return;
 while (timeout > 0) {
  msleep(10);
  timeout -= 10;
  if (check_link_active(ctrl))
   return;
 }
 ctrl_dbg(ctrl, "Data Link Layer Link Active not set in 1000 msec\n");
}
