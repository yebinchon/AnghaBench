
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int OMAP_MCBSP2 ;
 scalar_t__ cpu_is_omap2420 () ;
 int omap2_mcbsp2_mux_setup () ;

__attribute__((used)) static void omap2_mcbsp_request(unsigned int id)
{
 if (cpu_is_omap2420() && (id == OMAP_MCBSP2))
  omap2_mcbsp2_mux_setup();
}
