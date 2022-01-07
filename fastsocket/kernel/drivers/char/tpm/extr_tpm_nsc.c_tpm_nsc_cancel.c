
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ base; } ;
struct tpm_chip {TYPE_1__ vendor; } ;


 scalar_t__ NSC_COMMAND ;
 int NSC_COMMAND_CANCEL ;
 int outb (int ,scalar_t__) ;

__attribute__((used)) static void tpm_nsc_cancel(struct tpm_chip *chip)
{
 outb(NSC_COMMAND_CANCEL, chip->vendor.base + NSC_COMMAND);
}
