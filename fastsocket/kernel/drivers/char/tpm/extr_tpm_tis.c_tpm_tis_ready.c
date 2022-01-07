
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int locality; scalar_t__ iobase; } ;
struct tpm_chip {TYPE_1__ vendor; } ;


 scalar_t__ TPM_STS (int ) ;
 int TPM_STS_COMMAND_READY ;
 int iowrite8 (int ,scalar_t__) ;

__attribute__((used)) static void tpm_tis_ready(struct tpm_chip *chip)
{

 iowrite8(TPM_STS_COMMAND_READY,
   chip->vendor.iobase + TPM_STS(chip->vendor.locality));
}
