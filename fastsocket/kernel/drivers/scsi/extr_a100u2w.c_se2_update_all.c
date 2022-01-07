
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct orc_host {int dummy; } ;


 scalar_t__ default_nvram ;
 scalar_t__ nvramp ;
 int orc_nv_write (struct orc_host*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void se2_update_all(struct orc_host * host)
{
 int i;
 u8 *np, *np1, chksum = 0;


 np = (u8 *) default_nvram;
 for (i = 0; i < 63; i++)
  chksum += *np++;
 *np = chksum;

 np = (u8 *) default_nvram;
 np1 = (u8 *) nvramp;
 for (i = 0; i < 64; i++, np++, np1++) {
  if (*np != *np1)
   orc_nv_write(host, (u8) i, *np);
 }
}
