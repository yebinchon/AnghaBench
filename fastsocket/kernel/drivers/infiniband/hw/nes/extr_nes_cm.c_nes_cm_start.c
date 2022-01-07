
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int NES_DBG_CM ;
 scalar_t__ g_cm_core ;
 scalar_t__ nes_cm_alloc_core () ;
 int nes_debug (int ,char*) ;

int nes_cm_start(void)
{
 nes_debug(NES_DBG_CM, "\n");

 g_cm_core = nes_cm_alloc_core();
 if (g_cm_core)
  return 0;
 else
  return -ENOMEM;
}
