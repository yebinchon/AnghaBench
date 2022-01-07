
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_4__ {TYPE_1__* bridge_dev; scalar_t__ registers; } ;
struct TYPE_3__ {scalar_t__ device; int dev; } ;




 int I830_GMCH_CTRL ;

 int I830_GMCH_GMS_MASK ;



 scalar_t__ I830_RDRAM_CHANNEL_TYPE ;
 size_t I830_RDRAM_DDT (int ) ;
 int I830_RDRAM_ND (int ) ;
 int I855_GMCH_GMS_MASK ;
 int INTEL_GTT_GEN ;
 unsigned int KB (int) ;
 unsigned int MB (int const) ;
 scalar_t__ PCI_DEVICE_ID_INTEL_82830_HB ;
 scalar_t__ PCI_DEVICE_ID_INTEL_82845G_HB ;
 int dev_info (int *,char*,...) ;
 TYPE_2__ intel_private ;
 int pci_read_config_word (TYPE_1__*,int ,int*) ;
 int readb (scalar_t__) ;

__attribute__((used)) static unsigned int intel_gtt_stolen_size(void)
{
 u16 gmch_ctrl;
 u8 rdct;
 int local = 0;
 static const int ddt[4] = { 0, 16, 32, 64 };
 unsigned int stolen_size = 0;

 if (INTEL_GTT_GEN == 1)
  return 0;

 pci_read_config_word(intel_private.bridge_dev,
        I830_GMCH_CTRL, &gmch_ctrl);

 if (intel_private.bridge_dev->device == PCI_DEVICE_ID_INTEL_82830_HB ||
     intel_private.bridge_dev->device == PCI_DEVICE_ID_INTEL_82845G_HB) {
  switch (gmch_ctrl & I830_GMCH_GMS_MASK) {
  case 140:
   stolen_size = KB(512);
   break;
  case 141:
   stolen_size = MB(1);
   break;
  case 139:
   stolen_size = MB(8);
   break;
  case 142:
   rdct = readb(intel_private.registers+I830_RDRAM_CHANNEL_TYPE);
   stolen_size = (I830_RDRAM_ND(rdct) + 1) *
     MB(ddt[I830_RDRAM_DDT(rdct)]);
   local = 1;
   break;
  default:
   stolen_size = 0;
   break;
  }
 } else {
  switch (gmch_ctrl & I855_GMCH_GMS_MASK) {
  case 137:
   stolen_size = MB(1);
   break;
  case 135:
   stolen_size = MB(4);
   break;
  case 134:
   stolen_size = MB(8);
   break;
  case 138:
   stolen_size = MB(16);
   break;
  case 136:
   stolen_size = MB(32);
   break;
  case 133:
   stolen_size = MB(48);
   break;
  case 132:
   stolen_size = MB(64);
   break;
  case 144:
   stolen_size = MB(128);
   break;
  case 143:
   stolen_size = MB(256);
   break;
  case 128:
   stolen_size = MB(96);
   break;
  case 131:
   stolen_size = MB(160);
   break;
  case 130:
   stolen_size = MB(224);
   break;
  case 129:
   stolen_size = MB(352);
   break;
  default:
   stolen_size = 0;
   break;
  }
 }

 if (stolen_size > 0) {
  dev_info(&intel_private.bridge_dev->dev, "detected %dK %s memory\n",
         stolen_size / KB(1), local ? "local" : "stolen");
 } else {
  dev_info(&intel_private.bridge_dev->dev,
         "no pre-allocated video memory detected\n");
  stolen_size = 0;
 }

 return stolen_size;
}
