
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum vpss_ccdc_source_sel { ____Placeholder_vpss_ccdc_source_sel } vpss_ccdc_source_sel ;


 int DM355_VPSSBL_CCDCMUX ;
 int VPSS_HSSISEL_SHIFT ;
 int bl_regw (int,int ) ;

__attribute__((used)) static void dm355_select_ccdc_source(enum vpss_ccdc_source_sel src_sel)
{
 bl_regw(src_sel << VPSS_HSSISEL_SHIFT, DM355_VPSSBL_CCDCMUX);
}
