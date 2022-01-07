
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DBCR0_RST_SYSTEM ;
 int SPRN_DBCR0 ;
 int mfspr (int ) ;
 int mtspr (int ,int) ;

void ppc4xx_reset_system(char *cmd)
{
 mtspr(SPRN_DBCR0, mfspr(SPRN_DBCR0) | DBCR0_RST_SYSTEM);
 while (1)
  ;
}
