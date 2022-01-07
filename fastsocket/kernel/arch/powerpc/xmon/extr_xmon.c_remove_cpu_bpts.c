
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_FTR_IABR ;
 int SPRN_IABR ;
 scalar_t__ cpu_has_feature (int ) ;
 int mtspr (int ,int ) ;
 int set_dabr (int ) ;

__attribute__((used)) static void remove_cpu_bpts(void)
{
 set_dabr(0);
 if (cpu_has_feature(CPU_FTR_IABR))
  mtspr(SPRN_IABR, 0);
}
