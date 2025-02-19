
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_sdrc_params {unsigned long rate; } ;


 struct omap_sdrc_params* sdrc_init_params_cs0 ;
 struct omap_sdrc_params* sdrc_init_params_cs1 ;

int omap2_sdrc_get_params(unsigned long r,
     struct omap_sdrc_params **sdrc_cs0,
     struct omap_sdrc_params **sdrc_cs1)
{
 struct omap_sdrc_params *sp0, *sp1;

 if (!sdrc_init_params_cs0)
  return -1;

 sp0 = sdrc_init_params_cs0;
 sp1 = sdrc_init_params_cs1;

 while (sp0->rate && sp0->rate != r) {
  sp0++;
  if (sdrc_init_params_cs1)
   sp1++;
 }

 if (!sp0->rate)
  return -1;

 *sdrc_cs0 = sp0;
 *sdrc_cs1 = sp1;
 return 0;
}
