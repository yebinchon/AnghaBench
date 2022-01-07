
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int width; } ;
struct ccdc_params_ycbcr {int pix_fmt; int frm_fmt; int fid_pol; int hd_pol; int vd_pol; int pix_order; scalar_t__ buf_type; TYPE_1__ win; scalar_t__ bt656_enable; } ;


 scalar_t__ CCDC_BUFTYPE_FLD_INTERLEAVED ;
 int CCDC_CCDCFG ;
 int CCDC_CCDCFG_Y8POS_SHIFT ;
 int CCDC_DATA_PACK_ENABLE ;
 int CCDC_FID_POL_MASK ;
 int CCDC_FID_POL_SHIFT ;
 int CCDC_HD_POL_MASK ;
 int CCDC_HD_POL_SHIFT ;
 int CCDC_HSIZE_OFF ;
 int CCDC_LATCH_ON_VSYNC_DISABLE ;
 int CCDC_REC656IF ;
 int CCDC_REC656IF_BT656_EN ;
 int CCDC_SDOFST ;
 int CCDC_SDOFST_FIELD_INTERLEAVED ;
 int CCDC_SYN_FLDMODE_MASK ;
 int CCDC_SYN_FLDMODE_SHIFT ;
 int CCDC_SYN_MODE ;
 int CCDC_SYN_MODE_8BITS ;
 int CCDC_SYN_MODE_INPMOD_MASK ;
 int CCDC_SYN_MODE_INPMOD_SHIFT ;
 int CCDC_SYN_MODE_VD_POL_NEGATIVE ;
 int CCDC_VDHDEN_ENABLE ;
 int CCDC_VD_POL_MASK ;
 int CCDC_VD_POL_SHIFT ;
 int CCDC_WEN_ENABLE ;
 struct ccdc_params_ycbcr ccdc_hw_params_ycbcr ;
 int ccdc_readregs () ;
 int ccdc_restore_defaults () ;
 int ccdc_sbl_reset () ;
 int ccdc_setwin (TYPE_1__*,int,int) ;
 int dev ;
 int dev_dbg (int ,char*) ;
 int regw (int,int ) ;

void ccdc_config_ycbcr(void)
{
 struct ccdc_params_ycbcr *params = &ccdc_hw_params_ycbcr;
 u32 syn_mode;

 dev_dbg(dev, "\nStarting ccdc_config_ycbcr...");





 ccdc_restore_defaults();






 syn_mode = (((params->pix_fmt & CCDC_SYN_MODE_INPMOD_MASK) <<
      CCDC_SYN_MODE_INPMOD_SHIFT) |
      ((params->frm_fmt & CCDC_SYN_FLDMODE_MASK) <<
      CCDC_SYN_FLDMODE_SHIFT) | CCDC_VDHDEN_ENABLE |
      CCDC_WEN_ENABLE | CCDC_DATA_PACK_ENABLE);


 if (params->bt656_enable) {
  regw(CCDC_REC656IF_BT656_EN, CCDC_REC656IF);





  syn_mode |= CCDC_SYN_MODE_VD_POL_NEGATIVE | CCDC_SYN_MODE_8BITS;
 } else {

  syn_mode |= (((params->fid_pol & CCDC_FID_POL_MASK) <<
        CCDC_FID_POL_SHIFT) |
        ((params->hd_pol & CCDC_HD_POL_MASK) <<
        CCDC_HD_POL_SHIFT) |
        ((params->vd_pol & CCDC_VD_POL_MASK) <<
        CCDC_VD_POL_SHIFT));
 }
 regw(syn_mode, CCDC_SYN_MODE);


 ccdc_setwin(&params->win, params->frm_fmt, 2);





 regw((params->pix_order << CCDC_CCDCFG_Y8POS_SHIFT) |
   CCDC_LATCH_ON_VSYNC_DISABLE, CCDC_CCDCFG);





 regw(((params->win.width * 2 + 31) & ~0x1f), CCDC_HSIZE_OFF);


 if (params->buf_type == CCDC_BUFTYPE_FLD_INTERLEAVED)

  regw(CCDC_SDOFST_FIELD_INTERLEAVED, CCDC_SDOFST);

 ccdc_sbl_reset();
 dev_dbg(dev, "\nEnd of ccdc_config_ycbcr...\n");
 ccdc_readregs();
}
