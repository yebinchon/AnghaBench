
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
struct ahc_softc {int dummy; } ;
typedef int role_t ;



int
ahc_platform_abort_scbs(struct ahc_softc *ahc, int target, char channel,
   int lun, u_int tag, role_t role, uint32_t status)
{
 return 0;
}
