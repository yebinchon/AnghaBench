
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfa_ioc_s {TYPE_1__* attr; } ;
struct TYPE_2__ {char asic_rev; } ;


 int BFA_IOC_CHIP_REV_LEN ;
 int WARN_ON (int) ;
 int memset (void*,int ,int ) ;

void
bfa_ioc_get_pci_chip_rev(struct bfa_ioc_s *ioc, char *chip_rev)
{
 WARN_ON(!chip_rev);

 memset((void *)chip_rev, 0, BFA_IOC_CHIP_REV_LEN);

 chip_rev[0] = 'R';
 chip_rev[1] = 'e';
 chip_rev[2] = 'v';
 chip_rev[3] = '-';
 chip_rev[4] = ioc->attr->asic_rev;
 chip_rev[5] = '\0';
}
