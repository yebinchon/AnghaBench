
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int locality; scalar_t__ iobase; } ;
struct tpm_chip {TYPE_1__ vendor; } ;


 scalar_t__ TPM_ACCESS (int) ;
 int TPM_ACCESS_ACTIVE_LOCALITY ;
 int TPM_ACCESS_VALID ;
 int ioread8 (scalar_t__) ;

__attribute__((used)) static int check_locality(struct tpm_chip *chip, int l)
{
 if ((ioread8(chip->vendor.iobase + TPM_ACCESS(l)) &
      (TPM_ACCESS_ACTIVE_LOCALITY | TPM_ACCESS_VALID)) ==
     (TPM_ACCESS_ACTIVE_LOCALITY | TPM_ACCESS_VALID))
  return chip->vendor.locality = l;

 return -1;
}
