
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int width; } ;
struct TYPE_5__ {unsigned int gama_wd; scalar_t__ enable; } ;
struct TYPE_4__ {unsigned int horz_offset; unsigned int vert_offset; } ;
struct ccdc_config_params_raw {scalar_t__ data_sz; int lpf_enable; unsigned int datasft; unsigned int med_filt_thres; unsigned int mfilt1; unsigned int mfilt2; TYPE_2__ alaw; TYPE_1__ data_offset; int col_pat_field1; int col_pat_field0; int csc; int vertical_dft; int blk_comp; int blk_clamp; } ;
struct ccdc_params_raw {unsigned int vd_pol; unsigned int hd_pol; unsigned int fid_pol; unsigned int frm_fmt; unsigned int pix_fmt; unsigned int horz_flip_enable; scalar_t__ image_invert_enable; TYPE_3__ win; struct ccdc_config_params_raw config_params; } ;


 int CCDCFG ;
 unsigned int CCDC_ALAW_ENABLE ;
 unsigned int CCDC_ALAW_GAMA_WD_MASK ;
 unsigned int CCDC_CCDCFG_EXTRG_DISABLE ;
 unsigned int CCDC_CCDCFG_FIDMD_LATCH_VSYNC ;
 unsigned int CCDC_CCDCFG_TRGSEL_WEN ;
 unsigned int CCDC_CCDCFG_WENLOG_AND ;
 unsigned int CCDC_CFA_MOSAIC ;
 unsigned int CCDC_DATAOFST_H_SHIFT ;
 unsigned int CCDC_DATAOFST_MASK ;
 unsigned int CCDC_DATAOFST_V_SHIFT ;
 unsigned int CCDC_DATAPOL_NORMAL ;
 unsigned int CCDC_DATASFT_MASK ;
 unsigned int CCDC_DATASFT_SHIFT ;
 scalar_t__ CCDC_DATA_8BITS ;
 unsigned int CCDC_DATA_PACK_ENABLE ;
 unsigned int CCDC_EXWEN_DISABLE ;
 unsigned int CCDC_FID_POL_MASK ;
 unsigned int CCDC_FID_POL_SHIFT ;
 unsigned int CCDC_FRMFMT_INTERLACED ;
 unsigned int CCDC_FRMFMT_PROGRESSIVE ;
 unsigned int CCDC_FRM_FMT_MASK ;
 unsigned int CCDC_FRM_FMT_SHIFT ;
 unsigned int CCDC_GAMMAWD_INPUT_SHIFT ;
 unsigned int CCDC_GAMMA_BITS_11_2 ;
 unsigned int CCDC_HD_POL_MASK ;
 unsigned int CCDC_HD_POL_SHIFT ;
 unsigned int CCDC_HSIZE_FLIP_MASK ;
 unsigned int CCDC_HSIZE_FLIP_SHIFT ;
 int CCDC_HSIZE_VAL_MASK ;
 unsigned int CCDC_LATCH_ON_VSYNC_DISABLE ;
 unsigned int CCDC_LPF_MASK ;
 unsigned int CCDC_LPF_SHIFT ;
 unsigned int CCDC_MED_FILT_THRESH ;
 unsigned int CCDC_MFILT1_SHIFT ;
 unsigned int CCDC_MFILT2_SHIFT ;
 unsigned int CCDC_PIX_FMT_MASK ;
 unsigned int CCDC_PIX_FMT_SHIFT ;
 unsigned int CCDC_RAW_IP_MODE ;
 unsigned int CCDC_SDOFST_INTERLACE_INVERSE ;
 unsigned int CCDC_SDOFST_INTERLACE_NORMAL ;
 unsigned int CCDC_SDOFST_PROGRESSIVE_INVERSE ;
 unsigned int CCDC_SDOFST_PROGRESSIVE_NORMAL ;
 unsigned int CCDC_VDHDOUT_INPUT ;
 unsigned int CCDC_VD_POL_MASK ;
 unsigned int CCDC_VD_POL_SHIFT ;
 unsigned int CCDC_YCINSWP_RAW ;
 int DATAOFST ;
 int EFAULT ;
 int GAMMAWD ;
 int HSIZE ;
 int MEDFILT ;
 int MODESET ;
 int SDOFST ;
 int ccdc_config_black_clamp (int *) ;
 int ccdc_config_black_compense (int *) ;
 int ccdc_config_color_patterns (int *,int *) ;
 int ccdc_config_csc (int *) ;
 int ccdc_config_gain_offset () ;
 scalar_t__ ccdc_config_vdfc (int *) ;
 struct ccdc_params_raw ccdc_hw_params_raw ;
 int ccdc_restore_defaults () ;
 int ccdc_setwin (TYPE_3__*,unsigned int,int) ;
 int dev ;
 int dev_dbg (int ,char*,...) ;
 int regw (unsigned int,int ) ;

__attribute__((used)) static int ccdc_config_raw(void)
{
 struct ccdc_params_raw *params = &ccdc_hw_params_raw;
 struct ccdc_config_params_raw *config_params =
  &ccdc_hw_params_raw.config_params;
 unsigned int val;

 dev_dbg(dev, "\nStarting ccdc_config_raw...");


 ccdc_restore_defaults();
 regw(CCDC_YCINSWP_RAW | CCDC_CCDCFG_FIDMD_LATCH_VSYNC |
      CCDC_CCDCFG_WENLOG_AND | CCDC_CCDCFG_TRGSEL_WEN |
      CCDC_CCDCFG_EXTRG_DISABLE | CCDC_LATCH_ON_VSYNC_DISABLE, CCDCFG);





 val = (CCDC_VDHDOUT_INPUT | CCDC_RAW_IP_MODE | CCDC_DATAPOL_NORMAL |
  CCDC_EXWEN_DISABLE);






 val |= (((params->vd_pol & CCDC_VD_POL_MASK) << CCDC_VD_POL_SHIFT) |
  ((params->hd_pol & CCDC_HD_POL_MASK) << CCDC_HD_POL_SHIFT) |
  ((params->fid_pol & CCDC_FID_POL_MASK) << CCDC_FID_POL_SHIFT) |
  ((params->frm_fmt & CCDC_FRM_FMT_MASK) << CCDC_FRM_FMT_SHIFT) |
  ((params->pix_fmt & CCDC_PIX_FMT_MASK) << CCDC_PIX_FMT_SHIFT));


 if ((config_params->data_sz == CCDC_DATA_8BITS) ||
      config_params->alaw.enable)
  val |= CCDC_DATA_PACK_ENABLE;


 if (config_params->lpf_enable)
  val |= (config_params->lpf_enable & CCDC_LPF_MASK) <<
   CCDC_LPF_SHIFT;


 val |= (config_params->datasft & CCDC_DATASFT_MASK) <<
  CCDC_DATASFT_SHIFT;
 regw(val , MODESET);
 dev_dbg(dev, "\nWriting 0x%x to MODESET...\n", val);


 regw((config_params->med_filt_thres) & CCDC_MED_FILT_THRESH, MEDFILT);


 val = CCDC_GAMMA_BITS_11_2 << CCDC_GAMMAWD_INPUT_SHIFT |
  CCDC_CFA_MOSAIC;


 if (config_params->alaw.enable) {
  val |= (CCDC_ALAW_ENABLE |
   ((config_params->alaw.gama_wd &
   CCDC_ALAW_GAMA_WD_MASK) <<
   CCDC_GAMMAWD_INPUT_SHIFT));
 }


 val |= ((config_params->mfilt1 << CCDC_MFILT1_SHIFT) |
  (config_params->mfilt2 << CCDC_MFILT2_SHIFT));

 regw(val, GAMMAWD);
 dev_dbg(dev, "\nWriting 0x%x to GAMMAWD...\n", val);


 ccdc_setwin(&params->win, params->frm_fmt, 1);


 ccdc_config_black_clamp(&config_params->blk_clamp);


 ccdc_config_black_compense(&config_params->blk_comp);


 if (ccdc_config_vdfc(&config_params->vertical_dft) < 0)
  return -EFAULT;


 ccdc_config_csc(&config_params->csc);


 ccdc_config_color_patterns(&config_params->col_pat_field0,
       &config_params->col_pat_field1);


 ccdc_config_gain_offset();

 dev_dbg(dev, "\nWriting %x to COLPTN...\n", val);


 val = (config_params->data_offset.horz_offset & CCDC_DATAOFST_MASK) <<
  CCDC_DATAOFST_H_SHIFT;
 val |= (config_params->data_offset.vert_offset & CCDC_DATAOFST_MASK) <<
  CCDC_DATAOFST_V_SHIFT;
 regw(val, DATAOFST);


 val = (params->horz_flip_enable & CCDC_HSIZE_FLIP_MASK) <<
  CCDC_HSIZE_FLIP_SHIFT;


 if ((config_params->data_sz == CCDC_DATA_8BITS) ||
      config_params->alaw.enable) {
  val |= (((params->win.width) + 31) >> 5) &
   CCDC_HSIZE_VAL_MASK;


  dev_dbg(dev, "\nWriting 0x%x to HSIZE...\n",
         (((params->win.width) + 31) >> 5) &
   CCDC_HSIZE_VAL_MASK);
 } else {

  val |= (((params->win.width * 2) + 31) >> 5) &
   CCDC_HSIZE_VAL_MASK;

  dev_dbg(dev, "\nWriting 0x%x to HSIZE...\n",
         (((params->win.width * 2) + 31) >> 5) &
   CCDC_HSIZE_VAL_MASK);
 }
 regw(val, HSIZE);


 if (params->frm_fmt == CCDC_FRMFMT_INTERLACED) {
  if (params->image_invert_enable) {

   regw(CCDC_SDOFST_INTERLACE_INVERSE, SDOFST);
   dev_dbg(dev, "\nWriting %x to SDOFST...\n",
    CCDC_SDOFST_INTERLACE_INVERSE);
  } else {

   regw(CCDC_SDOFST_INTERLACE_NORMAL, SDOFST);
   dev_dbg(dev, "\nWriting %x to SDOFST...\n",
    CCDC_SDOFST_INTERLACE_NORMAL);
  }
 } else if (params->frm_fmt == CCDC_FRMFMT_PROGRESSIVE) {
  if (params->image_invert_enable) {

   regw(CCDC_SDOFST_PROGRESSIVE_INVERSE, SDOFST);
   dev_dbg(dev, "\nWriting %x to SDOFST...\n",
    CCDC_SDOFST_PROGRESSIVE_INVERSE);
  } else {

   regw(CCDC_SDOFST_PROGRESSIVE_NORMAL, SDOFST);
   dev_dbg(dev, "\nWriting %x to SDOFST...\n",
    CCDC_SDOFST_PROGRESSIVE_NORMAL);
  }
 }
 dev_dbg(dev, "\nend of ccdc_config_raw...");
 return 0;
}
