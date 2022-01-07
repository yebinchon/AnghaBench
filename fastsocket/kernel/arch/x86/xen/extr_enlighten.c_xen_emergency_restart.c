
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SHUTDOWN_reboot ;
 int xen_reboot (int ) ;

__attribute__((used)) static void xen_emergency_restart(void)
{
 xen_reboot(SHUTDOWN_reboot);
}
