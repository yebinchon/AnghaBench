
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct sdhci_pci_chip {TYPE_1__* pdev; } ;
struct TYPE_3__ {int device; } ;


 int O2_SD_ADMA1 ;
 int O2_SD_ADMA2 ;
 int O2_SD_CAPS ;
 int O2_SD_CLKREQ ;
 int O2_SD_INF_MOD ;
 int O2_SD_LOCK_WP ;
 int O2_SD_MULTI_VCC3V ;




 int pci_read_config_byte (TYPE_1__*,int ,int*) ;
 int pci_write_config_byte (TYPE_1__*,int ,int) ;

__attribute__((used)) static int o2_probe(struct sdhci_pci_chip *chip)
{
 int ret;
 u8 scratch;

 switch (chip->pdev->device) {
 case 131:
 case 130:
 case 129:
 case 128:

  ret = pci_read_config_byte(chip->pdev, O2_SD_LOCK_WP, &scratch);
  if (ret)
   return ret;
  scratch &= 0x7f;
  pci_write_config_byte(chip->pdev, O2_SD_LOCK_WP, scratch);


  pci_write_config_byte(chip->pdev, O2_SD_MULTI_VCC3V, 0x08);


  ret = pci_read_config_byte(chip->pdev, O2_SD_CLKREQ, &scratch);
  if (ret)
   return ret;
  scratch |= 0x20;
  pci_write_config_byte(chip->pdev, O2_SD_CLKREQ, scratch);




  ret = pci_read_config_byte(chip->pdev, O2_SD_CAPS, &scratch);
  if (ret)
   return ret;
  scratch |= 0x01;
  pci_write_config_byte(chip->pdev, O2_SD_CAPS, scratch);
  pci_write_config_byte(chip->pdev, O2_SD_CAPS, 0x73);


  pci_write_config_byte(chip->pdev, O2_SD_ADMA1, 0x39);
  pci_write_config_byte(chip->pdev, O2_SD_ADMA2, 0x08);


  ret = pci_read_config_byte(chip->pdev, O2_SD_INF_MOD, &scratch);
  if (ret)
   return ret;
  scratch |= 0x08;
  pci_write_config_byte(chip->pdev, O2_SD_INF_MOD, scratch);


  ret = pci_read_config_byte(chip->pdev, O2_SD_LOCK_WP, &scratch);
  if (ret)
   return ret;
  scratch |= 0x80;
  pci_write_config_byte(chip->pdev, O2_SD_LOCK_WP, scratch);
 }

 return 0;
}
