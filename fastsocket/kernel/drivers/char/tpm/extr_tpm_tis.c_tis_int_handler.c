
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int locality; scalar_t__ iobase; int int_queue; int read_queue; } ;
struct tpm_chip {TYPE_1__ vendor; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int TPM_INTF_CMD_READY_INT ;
 int TPM_INTF_DATA_AVAIL_INT ;
 int TPM_INTF_LOCALITY_CHANGE_INT ;
 int TPM_INTF_STS_VALID_INT ;
 scalar_t__ TPM_INT_STATUS (int ) ;
 scalar_t__ check_locality (struct tpm_chip*,int) ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int,scalar_t__) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static irqreturn_t tis_int_handler(int dummy, void *dev_id)
{
 struct tpm_chip *chip = dev_id;
 u32 interrupt;
 int i;

 interrupt = ioread32(chip->vendor.iobase +
        TPM_INT_STATUS(chip->vendor.locality));

 if (interrupt == 0)
  return IRQ_NONE;

 if (interrupt & TPM_INTF_DATA_AVAIL_INT)
  wake_up_interruptible(&chip->vendor.read_queue);
 if (interrupt & TPM_INTF_LOCALITY_CHANGE_INT)
  for (i = 0; i < 5; i++)
   if (check_locality(chip, i) >= 0)
    break;
 if (interrupt &
     (TPM_INTF_LOCALITY_CHANGE_INT | TPM_INTF_STS_VALID_INT |
      TPM_INTF_CMD_READY_INT))
  wake_up_interruptible(&chip->vendor.int_queue);


 iowrite32(interrupt,
    chip->vendor.iobase +
    TPM_INT_STATUS(chip->vendor.locality));
 ioread32(chip->vendor.iobase + TPM_INT_STATUS(chip->vendor.locality));
 return IRQ_HANDLED;
}
