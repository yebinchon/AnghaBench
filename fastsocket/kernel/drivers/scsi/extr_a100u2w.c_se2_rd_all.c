
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct orc_host {int dummy; } ;
struct TYPE_2__ {scalar_t__ CheckSum; } ;


 TYPE_1__* nvramp ;
 scalar_t__ orc_nv_read (struct orc_host*,scalar_t__,scalar_t__*) ;

__attribute__((used)) static int se2_rd_all(struct orc_host * host)
{
 int i;
 u8 *np, chksum = 0;

 np = (u8 *) nvramp;
 for (i = 0; i < 64; i++, np++) {
  if (orc_nv_read(host, (u8) i, np) == 0)
   return -1;
 }


 np = (u8 *) nvramp;
 for (i = 0; i < 63; i++)
  chksum += *np++;

 if (nvramp->CheckSum != (u8) chksum)
  return -1;
 return 1;
}
