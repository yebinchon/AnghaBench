
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ iobase; } ;
struct tpm_chip {TYPE_1__ vendor; } ;


 int ATML_STATUS_ABORT ;
 int iowrite8 (int ,scalar_t__) ;

__attribute__((used)) static void tpm_atml_cancel(struct tpm_chip *chip)
{
 iowrite8(ATML_STATUS_ABORT, chip->vendor.iobase + 1);
}
