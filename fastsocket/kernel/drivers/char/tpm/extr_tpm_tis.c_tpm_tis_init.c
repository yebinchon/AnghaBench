
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int name; } ;
struct TYPE_4__ {unsigned int irq; scalar_t__ iobase; int list; int locality; TYPE_1__ miscdev; int int_queue; int read_queue; void* timeout_d; void* timeout_c; void* timeout_b; void* timeout_a; } ;
struct tpm_chip {int dev; TYPE_2__ vendor; } ;
struct device {int dummy; } ;
typedef int resource_size_t ;


 int EIO ;
 int ENODEV ;
 int INIT_LIST_HEAD (int *) ;
 int IRQF_SHARED ;
 int TIS_LONG_TIMEOUT ;
 int TIS_SHORT_TIMEOUT ;
 scalar_t__ TPM_DID_VID (int ) ;
 int TPM_GLOBAL_INT_ENABLE ;
 int TPM_INTF_BURST_COUNT_STATIC ;
 scalar_t__ TPM_INTF_CAPS (int ) ;
 int TPM_INTF_CMD_READY_INT ;
 int TPM_INTF_DATA_AVAIL_INT ;
 int TPM_INTF_INT_EDGE_FALLING ;
 int TPM_INTF_INT_EDGE_RISING ;
 int TPM_INTF_INT_LEVEL_HIGH ;
 int TPM_INTF_INT_LEVEL_LOW ;
 int TPM_INTF_LOCALITY_CHANGE_INT ;
 int TPM_INTF_STS_VALID_INT ;
 scalar_t__ TPM_INT_ENABLE (int ) ;
 scalar_t__ TPM_INT_STATUS (int ) ;
 scalar_t__ TPM_INT_VECTOR (int ) ;
 scalar_t__ TPM_RID (int ) ;
 int dev_dbg (struct device*,char*,...) ;
 int dev_info (int ,char*,...) ;
 int free_irq (int,struct tpm_chip*) ;
 int init_waitqueue_head (int *) ;
 scalar_t__ interrupts ;
 int ioread32 (scalar_t__) ;
 unsigned int ioread8 (scalar_t__) ;
 scalar_t__ ioremap (int ,int ) ;
 int iounmap (scalar_t__) ;
 int iowrite32 (int,scalar_t__) ;
 int iowrite8 (int,scalar_t__) ;
 scalar_t__ itpm ;
 int list_add (int *,int *) ;
 void* msecs_to_jiffies (int ) ;
 scalar_t__ request_irq (int,int ,int ,int ,struct tpm_chip*) ;
 scalar_t__ request_locality (struct tpm_chip*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tis_chips ;
 int tis_int_handler ;
 int tis_int_probe ;
 int tis_lock ;
 int tpm_continue_selftest (struct tpm_chip*) ;
 int tpm_gen_interrupt (struct tpm_chip*) ;
 int tpm_get_timeouts (struct tpm_chip*) ;
 struct tpm_chip* tpm_register_hardware (struct device*,int *) ;
 int tpm_remove_hardware (int ) ;
 int tpm_tis ;

__attribute__((used)) static int tpm_tis_init(struct device *dev, resource_size_t start,
   resource_size_t len, unsigned int irq)
{
 u32 vendor, intfcaps, intmask;
 int rc, i;
 struct tpm_chip *chip;

 if (!(chip = tpm_register_hardware(dev, &tpm_tis)))
  return -ENODEV;

 chip->vendor.iobase = ioremap(start, len);
 if (!chip->vendor.iobase) {
  rc = -EIO;
  goto out_err;
 }


 chip->vendor.timeout_a = msecs_to_jiffies(TIS_SHORT_TIMEOUT);
 chip->vendor.timeout_b = msecs_to_jiffies(TIS_LONG_TIMEOUT);
 chip->vendor.timeout_c = msecs_to_jiffies(TIS_SHORT_TIMEOUT);
 chip->vendor.timeout_d = msecs_to_jiffies(TIS_SHORT_TIMEOUT);

 if (request_locality(chip, 0) != 0) {
  rc = -ENODEV;
  goto out_err;
 }

 vendor = ioread32(chip->vendor.iobase + TPM_DID_VID(0));

 dev_info(dev,
   "1.2 TPM (device-id 0x%X, rev-id %d)\n",
   vendor >> 16, ioread8(chip->vendor.iobase + TPM_RID(0)));

 if (itpm)
  dev_info(dev, "Intel iTPM workaround enabled\n");



 intfcaps =
     ioread32(chip->vendor.iobase +
       TPM_INTF_CAPS(chip->vendor.locality));
 dev_dbg(dev, "TPM interface capabilities (0x%x):\n",
  intfcaps);
 if (intfcaps & TPM_INTF_BURST_COUNT_STATIC)
  dev_dbg(dev, "\tBurst Count Static\n");
 if (intfcaps & TPM_INTF_CMD_READY_INT)
  dev_dbg(dev, "\tCommand Ready Int Support\n");
 if (intfcaps & TPM_INTF_INT_EDGE_FALLING)
  dev_dbg(dev, "\tInterrupt Edge Falling\n");
 if (intfcaps & TPM_INTF_INT_EDGE_RISING)
  dev_dbg(dev, "\tInterrupt Edge Rising\n");
 if (intfcaps & TPM_INTF_INT_LEVEL_LOW)
  dev_dbg(dev, "\tInterrupt Level Low\n");
 if (intfcaps & TPM_INTF_INT_LEVEL_HIGH)
  dev_dbg(dev, "\tInterrupt Level High\n");
 if (intfcaps & TPM_INTF_LOCALITY_CHANGE_INT)
  dev_dbg(dev, "\tLocality Change Int Support\n");
 if (intfcaps & TPM_INTF_STS_VALID_INT)
  dev_dbg(dev, "\tSts Valid Int Support\n");
 if (intfcaps & TPM_INTF_DATA_AVAIL_INT)
  dev_dbg(dev, "\tData Avail Int Support\n");


 init_waitqueue_head(&chip->vendor.read_queue);
 init_waitqueue_head(&chip->vendor.int_queue);

 intmask =
     ioread32(chip->vendor.iobase +
       TPM_INT_ENABLE(chip->vendor.locality));

 intmask |= TPM_INTF_CMD_READY_INT
     | TPM_INTF_LOCALITY_CHANGE_INT | TPM_INTF_DATA_AVAIL_INT
     | TPM_INTF_STS_VALID_INT;

 iowrite32(intmask,
    chip->vendor.iobase +
    TPM_INT_ENABLE(chip->vendor.locality));
 if (interrupts)
  chip->vendor.irq = irq;
 if (interrupts && !chip->vendor.irq) {
  chip->vendor.irq =
      ioread8(chip->vendor.iobase +
       TPM_INT_VECTOR(chip->vendor.locality));

  for (i = 3; i < 16 && chip->vendor.irq == 0; i++) {
   iowrite8(i, chip->vendor.iobase +
        TPM_INT_VECTOR(chip->vendor.locality));
   if (request_irq
       (i, tis_int_probe, IRQF_SHARED,
        chip->vendor.miscdev.name, chip) != 0) {
    dev_info(chip->dev,
      "Unable to request irq: %d for probe\n",
      i);
    continue;
   }


   iowrite32(ioread32
      (chip->vendor.iobase +
       TPM_INT_STATUS(chip->vendor.locality)),
      chip->vendor.iobase +
      TPM_INT_STATUS(chip->vendor.locality));


   iowrite32(intmask | TPM_GLOBAL_INT_ENABLE,
      chip->vendor.iobase +
      TPM_INT_ENABLE(chip->vendor.locality));


   tpm_gen_interrupt(chip);


   iowrite32(intmask,
      chip->vendor.iobase +
      TPM_INT_ENABLE(chip->vendor.locality));
   free_irq(i, chip);
  }
 }
 if (chip->vendor.irq) {
  iowrite8(chip->vendor.irq,
    chip->vendor.iobase +
    TPM_INT_VECTOR(chip->vendor.locality));
  if (request_irq
      (chip->vendor.irq, tis_int_handler, IRQF_SHARED,
       chip->vendor.miscdev.name, chip) != 0) {
   dev_info(chip->dev,
     "Unable to request irq: %d for use\n",
     chip->vendor.irq);
   chip->vendor.irq = 0;
  } else {

   iowrite32(ioread32
      (chip->vendor.iobase +
       TPM_INT_STATUS(chip->vendor.locality)),
      chip->vendor.iobase +
      TPM_INT_STATUS(chip->vendor.locality));


   iowrite32(intmask | TPM_GLOBAL_INT_ENABLE,
      chip->vendor.iobase +
      TPM_INT_ENABLE(chip->vendor.locality));
  }
 }

 INIT_LIST_HEAD(&chip->vendor.list);
 spin_lock(&tis_lock);
 list_add(&chip->vendor.list, &tis_chips);
 spin_unlock(&tis_lock);

 tpm_get_timeouts(chip);
 tpm_continue_selftest(chip);

 return 0;
out_err:
 if (chip->vendor.iobase)
  iounmap(chip->vendor.iobase);
 tpm_remove_hardware(chip->dev);
 return rc;
}
