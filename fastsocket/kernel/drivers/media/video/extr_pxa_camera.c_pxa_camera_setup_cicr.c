
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct v4l2_subdev {int dummy; } ;
struct soc_camera_host {struct pxa_camera_dev* priv; } ;
struct TYPE_2__ {int parent; } ;
struct soc_camera_device {scalar_t__ user_height; scalar_t__ user_width; TYPE_1__ dev; } ;
struct pxa_camera_dev {int platform_flags; int channels; int mclk_divisor; scalar_t__ base; } ;
typedef int __u32 ;


 scalar_t__ CICR0 ;
 int CICR0_DMAEN ;
 int CICR0_ENB ;
 int CICR0_IRQ_MASK ;
 int CICR0_SIM_MP ;
 int CICR0_SIM_SP ;
 int CICR0_SL_CAP_EN ;
 scalar_t__ CICR1 ;
 int CICR1_COLOR_SP_VAL (int) ;
 unsigned long CICR1_PPL_VAL (scalar_t__) ;
 int CICR1_RGBT_CONV_VAL (int) ;
 int CICR1_RGB_BPP_VAL (int) ;
 int CICR1_TBIT ;
 int CICR1_YCBCR_F ;
 scalar_t__ CICR2 ;
 scalar_t__ CICR3 ;
 int CICR3_BFW_VAL (int ) ;
 int CICR3_LPF_VAL (scalar_t__) ;
 scalar_t__ CICR4 ;
 int CICR4_HSP ;
 int CICR4_MCLK_EN ;
 int CICR4_PCLK_EN ;
 int CICR4_PCP ;
 int CICR4_VSP ;
 int PXA_CAMERA_MASTER ;
 int PXA_CAMERA_MCLK_EN ;
 int PXA_CAMERA_PCLK_EN ;



 unsigned long SOCAM_DATAWIDTH_MASK ;
 unsigned long SOCAM_HSYNC_ACTIVE_LOW ;
 unsigned long SOCAM_PCLK_SAMPLE_FALLING ;
 unsigned long SOCAM_VSYNC_ACTIVE_LOW ;







 int __raw_readl (scalar_t__) ;
 int __raw_writel (int,scalar_t__) ;
 int g_skip_top_lines ;
 int min (int,int) ;
 int sensor ;
 struct v4l2_subdev* soc_camera_to_subdev (struct soc_camera_device*) ;
 struct soc_camera_host* to_soc_camera_host (int ) ;
 int v4l2_subdev_call (struct v4l2_subdev*,int ,int ,int*) ;

__attribute__((used)) static void pxa_camera_setup_cicr(struct soc_camera_device *icd,
      unsigned long flags, __u32 pixfmt)
{
 struct soc_camera_host *ici = to_soc_camera_host(icd->dev.parent);
 struct pxa_camera_dev *pcdev = ici->priv;
 struct v4l2_subdev *sd = soc_camera_to_subdev(icd);
 unsigned long dw, bpp;
 u32 cicr0, cicr1, cicr2, cicr3, cicr4 = 0, y_skip_top;
 int ret = v4l2_subdev_call(sd, sensor, g_skip_top_lines, &y_skip_top);

 if (ret < 0)
  y_skip_top = 0;





 switch (flags & SOCAM_DATAWIDTH_MASK) {
 case 137:
  dw = 4;
  bpp = 0x40;
  break;
 case 135:
  dw = 3;
  bpp = 0x20;
  break;
 default:




 case 136:
  dw = 2;
  bpp = 0;
 }

 if (pcdev->platform_flags & PXA_CAMERA_PCLK_EN)
  cicr4 |= CICR4_PCLK_EN;
 if (pcdev->platform_flags & PXA_CAMERA_MCLK_EN)
  cicr4 |= CICR4_MCLK_EN;
 if (flags & SOCAM_PCLK_SAMPLE_FALLING)
  cicr4 |= CICR4_PCP;
 if (flags & SOCAM_HSYNC_ACTIVE_LOW)
  cicr4 |= CICR4_HSP;
 if (flags & SOCAM_VSYNC_ACTIVE_LOW)
  cicr4 |= CICR4_VSP;

 cicr0 = __raw_readl(pcdev->base + CICR0);
 if (cicr0 & CICR0_ENB)
  __raw_writel(cicr0 & ~CICR0_ENB, pcdev->base + CICR0);

 cicr1 = CICR1_PPL_VAL(icd->user_width - 1) | bpp | dw;

 switch (pixfmt) {
 case 130:
  pcdev->channels = 3;
  cicr1 |= CICR1_YCBCR_F;







 case 132:
 case 131:
 case 129:
 case 128:
  cicr1 |= CICR1_COLOR_SP_VAL(2);
  break;
 case 134:
  cicr1 |= CICR1_RGB_BPP_VAL(1) | CICR1_RGBT_CONV_VAL(2) |
   CICR1_TBIT | CICR1_COLOR_SP_VAL(1);
  break;
 case 133:
  cicr1 |= CICR1_COLOR_SP_VAL(1) | CICR1_RGB_BPP_VAL(2);
  break;
 }

 cicr2 = 0;
 cicr3 = CICR3_LPF_VAL(icd->user_height - 1) |
  CICR3_BFW_VAL(min((u32)255, y_skip_top));
 cicr4 |= pcdev->mclk_divisor;

 __raw_writel(cicr1, pcdev->base + CICR1);
 __raw_writel(cicr2, pcdev->base + CICR2);
 __raw_writel(cicr3, pcdev->base + CICR3);
 __raw_writel(cicr4, pcdev->base + CICR4);


 cicr0 = (cicr0 & CICR0_ENB) | (pcdev->platform_flags & PXA_CAMERA_MASTER ?
  CICR0_SIM_MP : (CICR0_SL_CAP_EN | CICR0_SIM_SP));
 cicr0 |= CICR0_DMAEN | CICR0_IRQ_MASK;
 __raw_writel(cicr0, pcdev->base + CICR0);
}
