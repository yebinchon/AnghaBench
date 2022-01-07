
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_host_template {int dummy; } ;


 int METHOD_TRACE (char*,int) ;
 scalar_t__ ips ;
 int ips_free (int ) ;
 int * ips_ha ;
 int ips_hotplug ;
 int ips_num_controllers ;
 scalar_t__ ips_register_scsi (int) ;
 int ips_released_controllers ;
 int ips_setup (scalar_t__) ;

__attribute__((used)) static int
ips_detect(struct scsi_host_template * SHT)
{
 int i;

 METHOD_TRACE("ips_detect", 1);






 for (i = 0; i < ips_num_controllers; i++) {
  if (ips_register_scsi(i))
   ips_free(ips_ha[i]);
  ips_released_controllers++;
 }
 ips_hotplug = 1;
 return (ips_num_controllers);
}
