
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_device {int dummy; } ;


 int dasd_alias_add_device (struct dasd_device*) ;

__attribute__((used)) static int dasd_eckd_ready_to_online(struct dasd_device *device)
{
 return dasd_alias_add_device(device);
}
