
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_4__ {TYPE_1__* pcidev; scalar_t__ registers; int bridge_dev; } ;
struct TYPE_3__ {int dev; } ;




 int G4x_GMCH_SIZE_MASK ;



 scalar_t__ I810_PGETBL_CTL ;
 int I830_GMCH_CTRL ;






 int I965_PGETBL_SIZE_MASK ;
 int INTEL_GTT_GEN ;
 int KB (int) ;
 int dev_info (int *,char*) ;
 int i965_adjust_pgetbl_size (int) ;
 TYPE_2__ intel_private ;
 int pci_read_config_word (int ,int ,int*) ;
 int readl (scalar_t__) ;

__attribute__((used)) static unsigned int i965_gtt_total_entries(void)
{
 int size;
 u32 pgetbl_ctl;
 u16 gmch_ctl;

 pci_read_config_word(intel_private.bridge_dev,
        I830_GMCH_CTRL, &gmch_ctl);

 if (INTEL_GTT_GEN == 5) {
  switch (gmch_ctl & G4x_GMCH_SIZE_MASK) {
  case 138:
  case 136:
   i965_adjust_pgetbl_size(132);
   break;
  case 135:
   i965_adjust_pgetbl_size(131);
   break;
  case 137:
  case 134:
   i965_adjust_pgetbl_size(129);
   break;
  }
 }

 pgetbl_ctl = readl(intel_private.registers+I810_PGETBL_CTL);

 switch (pgetbl_ctl & I965_PGETBL_SIZE_MASK) {
 case 133:
  size = KB(128);
  break;
 case 130:
  size = KB(256);
  break;
 case 128:
  size = KB(512);
  break;

 case 132:
  size = KB(1024);
  break;
 case 129:
  size = KB(2048);
  break;
 case 131:
  size = KB(1024 + 512);
  break;
 default:
  dev_info(&intel_private.pcidev->dev,
    "unknown page table size, assuming 512KB\n");
  size = KB(512);
 }

 return size/4;
}
