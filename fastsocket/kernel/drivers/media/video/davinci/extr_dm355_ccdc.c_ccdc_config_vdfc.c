
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int vdfcsl; int vdfcuda; int vdflsft; } ;
struct ccdc_vertical_dft {int gen_dft_en; int table_size; int saturation_ctl; TYPE_1__ dft_corr_ctl; int ver_dft_en; } ;


 int CCDC_DFCCTL_GDFCEN_MASK ;
 int CCDC_DFCCTL_VDFCEN_MASK ;
 int CCDC_DFCCTL_VDFCEN_SHIFT ;
 int CCDC_DFCCTL_VDFCSL_MASK ;
 int CCDC_DFCCTL_VDFCSL_SHIFT ;
 int CCDC_DFCCTL_VDFCUDA_MASK ;
 int CCDC_DFCCTL_VDFCUDA_SHIFT ;
 int CCDC_DFCCTL_VDFC_DISABLE ;
 int CCDC_DFCCTL_VDFLSFT_MASK ;
 int CCDC_DFCCTL_VDFLSFT_SHIFT ;
 int CCDC_DFCMEMCTL_DFCMARST_MASK ;
 int CCDC_DFCMEMCTL_DFCMARST_SHIFT ;
 int CCDC_DFCMEMCTL_INC_ADDR ;
 int CCDC_DFT_TABLE_SIZE ;
 int CCDC_VDC_DFCVSAT_MASK ;
 int DFCCTL ;
 int DFCMEMCTL ;
 int DFCVSAT ;
 int EFAULT ;
 int EINVAL ;
 scalar_t__ ccdc_write_dfc_entry (int,struct ccdc_vertical_dft*) ;
 int regr (int ) ;
 int regw (int,int ) ;

__attribute__((used)) static int ccdc_config_vdfc(struct ccdc_vertical_dft *dfc)
{
 u32 val;
 int i;


 val = dfc->gen_dft_en & CCDC_DFCCTL_GDFCEN_MASK;


 if (!dfc->ver_dft_en) {

  regw(val, DFCCTL);
  return 0;
 }

 if (dfc->table_size > CCDC_DFT_TABLE_SIZE)
  return -EINVAL;

 val |= CCDC_DFCCTL_VDFC_DISABLE;
 val |= (dfc->dft_corr_ctl.vdfcsl & CCDC_DFCCTL_VDFCSL_MASK) <<
  CCDC_DFCCTL_VDFCSL_SHIFT;
 val |= (dfc->dft_corr_ctl.vdfcuda & CCDC_DFCCTL_VDFCUDA_MASK) <<
  CCDC_DFCCTL_VDFCUDA_SHIFT;
 val |= (dfc->dft_corr_ctl.vdflsft & CCDC_DFCCTL_VDFLSFT_MASK) <<
  CCDC_DFCCTL_VDFLSFT_SHIFT;
 regw(val , DFCCTL);


 val = CCDC_DFCMEMCTL_DFCMARST_MASK << CCDC_DFCMEMCTL_DFCMARST_SHIFT;


 for (i = 0; i < dfc->table_size; i++) {

  if (i != 0)
   val = CCDC_DFCMEMCTL_INC_ADDR;
  regw(val, DFCMEMCTL);
  if (ccdc_write_dfc_entry(i, dfc) < 0)
   return -EFAULT;
 }


 regw(dfc->saturation_ctl & CCDC_VDC_DFCVSAT_MASK, DFCVSAT);
 val = regr(DFCCTL) | (CCDC_DFCCTL_VDFCEN_MASK <<
   CCDC_DFCCTL_VDFCEN_SHIFT);
 regw(val, DFCCTL);
 return 0;
}
