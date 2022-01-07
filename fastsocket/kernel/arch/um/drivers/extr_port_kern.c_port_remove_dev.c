
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port_dev {int helper_pid; int telnetd_pid; } ;


 int os_kill_process (int,int) ;

void port_remove_dev(void *d)
{
 struct port_dev *dev = d;

 if (dev->helper_pid != -1)
  os_kill_process(dev->helper_pid, 0);
 if (dev->telnetd_pid != -1)
  os_kill_process(dev->telnetd_pid, 1);
 dev->helper_pid = -1;
 dev->telnetd_pid = -1;
}
