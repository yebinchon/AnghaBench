
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {scalar_t__ iobase; } ;
struct tpm_chip {TYPE_1__ vendor; } ;


 int ioread8 (scalar_t__) ;

__attribute__((used)) static u8 tpm_atml_status(struct tpm_chip *chip)
{
 return ioread8(chip->vendor.iobase + 1);
}
