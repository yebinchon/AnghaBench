
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct Scsi_Host {int dummy; } ;
struct TYPE_3__ {int host_num; } ;
typedef TYPE_1__ ips_ha_t ;


 TYPE_1__** ips_ha ;
 struct Scsi_Host** ips_sh ;

__attribute__((used)) static void
ips_shift_controllers(int lowindex, int highindex)
{
 ips_ha_t *ha_sav = ips_ha[highindex];
 struct Scsi_Host *sh_sav = ips_sh[highindex];
 int i;

 for (i = highindex; i > lowindex; i--) {
  ips_ha[i] = ips_ha[i - 1];
  ips_sh[i] = ips_sh[i - 1];
  ips_ha[i]->host_num = i;
 }
 ha_sav->host_num = lowindex;
 ips_ha[lowindex] = ha_sav;
 ips_sh[lowindex] = sh_sav;
}
