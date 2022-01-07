
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int P1275_INOUT (int ,int ) ;
 int p1275_cmd (char const*,int ) ;
 int prom_service_exists (char const*) ;

void prom_sun4v_guest_soft_state(void)
{
 const char *svc = "SUNW,soft-state-supported";

 if (!prom_service_exists(svc))
  return;
 p1275_cmd(svc, P1275_INOUT(0, 0));
}
