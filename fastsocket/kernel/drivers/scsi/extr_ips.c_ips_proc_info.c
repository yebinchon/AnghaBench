
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {scalar_t__ hostdata; } ;
typedef int off_t ;
typedef int ips_ha_t ;


 int EINVAL ;
 int METHOD_TRACE (char*,int) ;
 int ips_host_info (int *,char*,int ,int) ;
 int ips_next_controller ;
 struct Scsi_Host** ips_sh ;

__attribute__((used)) static int
ips_proc_info(struct Scsi_Host *host, char *buffer, char **start, off_t offset,
       int length, int func)
{
 int i;
 int ret;
 ips_ha_t *ha = ((void*)0);

 METHOD_TRACE("ips_proc_info", 1);


 for (i = 0; i < ips_next_controller; i++) {
  if (ips_sh[i]) {
   if (ips_sh[i] == host) {
    ha = (ips_ha_t *) ips_sh[i]->hostdata;
    break;
   }
  }
 }

 if (!ha)
  return (-EINVAL);

 if (func) {

  return (0);
 } else {

  if (start)
   *start = buffer;

  ret = ips_host_info(ha, buffer, offset, length);

  return (ret);
 }
}
