
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VPSS_PCR_CCDC_WBL_O ;
 int vpss_clear_wbl_overflow (int ) ;

__attribute__((used)) static void ccdc_sbl_reset(void)
{
 vpss_clear_wbl_overflow(VPSS_PCR_CCDC_WBL_O);
}
