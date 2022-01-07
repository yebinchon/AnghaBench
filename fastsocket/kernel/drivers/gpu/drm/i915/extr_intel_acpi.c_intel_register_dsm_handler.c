
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int intel_dsm_detect () ;

void intel_register_dsm_handler(void)
{
 if (!intel_dsm_detect())
  return;
}
