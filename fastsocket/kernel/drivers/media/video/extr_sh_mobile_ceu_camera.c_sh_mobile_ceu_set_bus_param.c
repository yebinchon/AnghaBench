
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct soc_camera_host {struct sh_mobile_ceu_dev* priv; } ;
struct TYPE_8__ {int parent; } ;
struct soc_camera_device {int user_height; int user_width; TYPE_4__ dev; TYPE_3__* current_fmt; TYPE_1__* ops; struct sh_mobile_ceu_cam* host_priv; } ;
struct sh_mobile_ceu_dev {int is_16bit; unsigned long cflcr; scalar_t__ is_interlaced; } ;
struct sh_mobile_ceu_cam {TYPE_2__* camera_fmt; } ;
typedef int __u32 ;
struct TYPE_7__ {int fourcc; } ;
struct TYPE_6__ {int fourcc; } ;
struct TYPE_5__ {unsigned long (* query_bus_param ) (struct soc_camera_device*) ;int (* set_bus_param ) (struct soc_camera_device*,unsigned long) ;} ;


 int BUG () ;
 int CAIFR ;
 int CAMCR ;
 int CAPCR ;
 int CDOCR ;
 int CFLCR ;
 int CFWCR ;
 int CRCMPR ;
 int CRCNTR ;
 int EINVAL ;


 unsigned long SOCAM_DATAWIDTH_MASK ;
 unsigned long SOCAM_HSYNC_ACTIVE_LOW ;
 unsigned long SOCAM_VSYNC_ACTIVE_LOW ;
 int capture_restore (struct sh_mobile_ceu_dev*,int ) ;
 int capture_save_reset (struct sh_mobile_ceu_dev*) ;
 int ceu_write (struct sh_mobile_ceu_dev*,int ,unsigned long) ;
 int dev_dbg (int ,char*,int,int,int,int,int ,int ) ;
 int make_bus_param (struct sh_mobile_ceu_dev*) ;
 int mdelay (int) ;
 int sh_mobile_ceu_set_rect (struct soc_camera_device*,int ,int ) ;
 unsigned long soc_camera_bus_param_compatible (unsigned long,int ) ;
 unsigned long stub1 (struct soc_camera_device*) ;
 int stub2 (struct soc_camera_device*,unsigned long) ;
 struct soc_camera_host* to_soc_camera_host (int ) ;

__attribute__((used)) static int sh_mobile_ceu_set_bus_param(struct soc_camera_device *icd,
           __u32 pixfmt)
{
 struct soc_camera_host *ici = to_soc_camera_host(icd->dev.parent);
 struct sh_mobile_ceu_dev *pcdev = ici->priv;
 int ret;
 unsigned long camera_flags, common_flags, value;
 int yuv_lineskip;
 struct sh_mobile_ceu_cam *cam = icd->host_priv;
 u32 capsr = capture_save_reset(pcdev);

 camera_flags = icd->ops->query_bus_param(icd);
 common_flags = soc_camera_bus_param_compatible(camera_flags,
             make_bus_param(pcdev));
 if (!common_flags)
  return -EINVAL;

 ret = icd->ops->set_bus_param(icd, common_flags);
 if (ret < 0)
  return ret;

 switch (common_flags & SOCAM_DATAWIDTH_MASK) {
 case 136:
  pcdev->is_16bit = 0;
  break;
 case 137:
  pcdev->is_16bit = 1;
  break;
 default:
  return -EINVAL;
 }

 ceu_write(pcdev, CRCNTR, 0);
 ceu_write(pcdev, CRCMPR, 0);

 value = 0x00000010;
 yuv_lineskip = 0;

 switch (icd->current_fmt->fourcc) {
 case 135:
 case 133:
  yuv_lineskip = 1;

 case 134:
 case 132:
  switch (cam->camera_fmt->fourcc) {
  case 131:
   value = 0x00000000;
   break;
  case 130:
   value = 0x00000100;
   break;
  case 129:
   value = 0x00000200;
   break;
  case 128:
   value = 0x00000300;
   break;
  default:
   BUG();
  }
 }

 if (icd->current_fmt->fourcc == 133 ||
     icd->current_fmt->fourcc == 132)
  value ^= 0x00000100;

 value |= common_flags & SOCAM_VSYNC_ACTIVE_LOW ? 1 << 1 : 0;
 value |= common_flags & SOCAM_HSYNC_ACTIVE_LOW ? 1 << 0 : 0;
 value |= pcdev->is_16bit ? 1 << 12 : 0;
 ceu_write(pcdev, CAMCR, value);

 ceu_write(pcdev, CAPCR, 0x00300000);
 ceu_write(pcdev, CAIFR, pcdev->is_interlaced ? 0x101 : 0);

 sh_mobile_ceu_set_rect(icd, icd->user_width, icd->user_height);
 mdelay(1);

 ceu_write(pcdev, CFLCR, pcdev->cflcr);
 value = 0x00000017;
 if (yuv_lineskip)
  value &= ~0x00000010;

 ceu_write(pcdev, CDOCR, value);
 ceu_write(pcdev, CFWCR, 0);

 dev_dbg(icd->dev.parent, "S_FMT successful for %c%c%c%c %ux%u\n",
  pixfmt & 0xff, (pixfmt >> 8) & 0xff,
  (pixfmt >> 16) & 0xff, (pixfmt >> 24) & 0xff,
  icd->user_width, icd->user_height);

 capture_restore(pcdev, capsr);


 return 0;
}
