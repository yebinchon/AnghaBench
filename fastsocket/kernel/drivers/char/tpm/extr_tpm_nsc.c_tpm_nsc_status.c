
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {scalar_t__ base; } ;
struct tpm_chip {TYPE_1__ vendor; } ;


 scalar_t__ NSC_STATUS ;
 int inb (scalar_t__) ;

__attribute__((used)) static u8 tpm_nsc_status(struct tpm_chip *chip)
{
 return inb(chip->vendor.base + NSC_STATUS);
}
