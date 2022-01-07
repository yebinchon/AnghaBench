
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int type; int addr; } ;
struct v4l2_dbg_chip_ident {int revision; void* ident; TYPE_1__ match; } ;
struct file {int dummy; } ;
struct cx23885_fh {struct cx23885_dev* dev; } ;
struct cx23885_dev {int hwrevision; int * v4l_device; TYPE_2__* pci; } ;
struct TYPE_4__ {int device; } ;


 int CX23885_HW_888_IR ;
 int EINVAL ;
 int RDR_CFG2 ;



 void* V4L2_IDENT_CX23417 ;
 void* V4L2_IDENT_CX23885 ;
 void* V4L2_IDENT_CX23887 ;
 void* V4L2_IDENT_CX23888 ;
 void* V4L2_IDENT_NONE ;
 void* V4L2_IDENT_UNKNOWN ;
 int call_all (struct cx23885_dev*,int ,int ,struct v4l2_dbg_chip_ident*) ;
 int call_hw (struct cx23885_dev*,int ,int ,int ,struct v4l2_dbg_chip_ident*) ;
 int core ;
 int cx_read (int ) ;
 int g_chip_ident ;

int cx23885_g_chip_ident(struct file *file, void *fh,
    struct v4l2_dbg_chip_ident *chip)
{
 struct cx23885_dev *dev = ((struct cx23885_fh *)fh)->dev;
 int err = 0;
 u8 rev;

 chip->ident = V4L2_IDENT_NONE;
 chip->revision = 0;
 switch (chip->match.type) {
 case 130:
  switch (chip->match.addr) {
  case 0:
   rev = cx_read(RDR_CFG2) & 0xff;
   switch (dev->pci->device) {
   case 0x8852:

    if (rev == 0x04)
     chip->ident = V4L2_IDENT_CX23888;
    else
     chip->ident = V4L2_IDENT_CX23885;
    break;
   case 0x8880:
    if (rev == 0x0e || rev == 0x0f)
     chip->ident = V4L2_IDENT_CX23887;
    else
     chip->ident = V4L2_IDENT_CX23888;
    break;
   default:
    chip->ident = V4L2_IDENT_UNKNOWN;
    break;
   }
   chip->revision = (dev->pci->device << 16) | (rev << 8) |
      (dev->hwrevision & 0xff);
   break;
  case 1:
   if (dev->v4l_device != ((void*)0)) {
    chip->ident = V4L2_IDENT_CX23417;
    chip->revision = 0;
   }
   break;
  case 2:







   call_hw(dev, CX23885_HW_888_IR, core, g_chip_ident,
    chip);
   break;
  default:
   err = -EINVAL;
   break;
  }
  break;
 case 128:

  call_all(dev, core, g_chip_ident, chip);
  break;
 case 129:





  call_all(dev, core, g_chip_ident, chip);
  break;
 default:
  err = -EINVAL;
  break;
 }
 return err;
}
