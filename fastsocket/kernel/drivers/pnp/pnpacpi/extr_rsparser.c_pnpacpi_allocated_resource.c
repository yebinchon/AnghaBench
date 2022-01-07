
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct pnp_dev {int dev; int capabilities; } ;
struct acpi_resource_vendor_typed {int dummy; } ;
struct acpi_resource_memory32 {int write_protect; int address_length; int minimum; } ;
struct acpi_resource_memory24 {int write_protect; int address_length; int minimum; } ;
struct acpi_resource_irq {int interrupt_count; int sharable; int polarity; int triggering; int * interrupts; } ;
struct acpi_resource_io {int io_decode; int address_length; int minimum; } ;
struct acpi_resource_fixed_memory32 {int write_protect; int address_length; int address; } ;
struct acpi_resource_fixed_io {int address_length; int address; } ;
struct acpi_resource_extended_irq {int interrupt_count; int sharable; int polarity; int triggering; int * interrupts; } ;
struct acpi_resource_dma {int * channels; int transfer; int bus_master; int type; int channel_count; } ;
struct TYPE_2__ {struct acpi_resource_extended_irq extended_irq; struct acpi_resource_fixed_memory32 fixed_memory32; struct acpi_resource_memory32 memory32; struct acpi_resource_memory24 memory24; struct acpi_resource_vendor_typed vendor_typed; struct acpi_resource_fixed_io fixed_io; struct acpi_resource_io io; struct acpi_resource_dma dma; struct acpi_resource_irq irq; } ;
struct acpi_resource {int type; TYPE_1__ data; } ;
typedef int acpi_status ;


 int ACPI_DECODE_10 ;
 int AE_ERROR ;
 int AE_OK ;
 int IORESOURCE_DISABLED ;
 int PNP_WRITE ;
 int dev_warn (int *,char*,...) ;
 int dma_flags (struct pnp_dev*,int ,int ,int ) ;
 int pnp_add_dma_resource (struct pnp_dev*,int ,int) ;
 int pnp_add_irq_resource (struct pnp_dev*,int ,int) ;
 int pnp_can_write (struct pnp_dev*) ;
 int pnpacpi_parse_allocated_address_space (struct pnp_dev*,struct acpi_resource*) ;
 int pnpacpi_parse_allocated_ext_address_space (struct pnp_dev*,struct acpi_resource*) ;
 int pnpacpi_parse_allocated_ioresource (struct pnp_dev*,int ,int ,int ) ;
 int pnpacpi_parse_allocated_irqresource (struct pnp_dev*,int ,int ,int ,int ) ;
 int pnpacpi_parse_allocated_memresource (struct pnp_dev*,int ,int ,int ) ;
 int pnpacpi_parse_allocated_vendor (struct pnp_dev*,struct acpi_resource_vendor_typed*) ;

__attribute__((used)) static acpi_status pnpacpi_allocated_resource(struct acpi_resource *res,
           void *data)
{
 struct pnp_dev *dev = data;
 struct acpi_resource_irq *irq;
 struct acpi_resource_dma *dma;
 struct acpi_resource_io *io;
 struct acpi_resource_fixed_io *fixed_io;
 struct acpi_resource_vendor_typed *vendor_typed;
 struct acpi_resource_memory24 *memory24;
 struct acpi_resource_memory32 *memory32;
 struct acpi_resource_fixed_memory32 *fixed_memory32;
 struct acpi_resource_extended_irq *extended_irq;
 int i, flags;

 switch (res->type) {
 case 132:




  irq = &res->data.irq;
  if (irq->interrupt_count == 0)
   pnp_add_irq_resource(dev, 0, IORESOURCE_DISABLED);
  else {
   for (i = 0; i < irq->interrupt_count; i++) {
    pnpacpi_parse_allocated_irqresource(dev,
     irq->interrupts[i],
     irq->triggering,
     irq->polarity,
        irq->sharable);
   }






   if (pnp_can_write(dev) && irq->interrupt_count > 1) {
    dev_warn(&dev->dev, "multiple interrupts in "
      "_CRS descriptor; configuration can't "
      "be changed\n");
    dev->capabilities &= ~PNP_WRITE;
   }
  }
  break;

 case 141:
  dma = &res->data.dma;
  if (dma->channel_count > 0 && dma->channels[0] != (u8) -1)
   flags = dma_flags(dev, dma->type, dma->bus_master,
       dma->transfer);
  else
   flags = IORESOURCE_DISABLED;
  pnp_add_dma_resource(dev, dma->channels[0], flags);
  break;

 case 133:
  io = &res->data.io;
  pnpacpi_parse_allocated_ioresource(dev,
   io->minimum,
   io->address_length,
   io->io_decode);
  break;

 case 129:
 case 140:
  break;

 case 136:
  fixed_io = &res->data.fixed_io;
  pnpacpi_parse_allocated_ioresource(dev,
   fixed_io->address,
   fixed_io->address_length,
   ACPI_DECODE_10);
  break;

 case 128:
  vendor_typed = &res->data.vendor_typed;
  pnpacpi_parse_allocated_vendor(dev, vendor_typed);
  break;

 case 139:
  break;

 case 131:
  memory24 = &res->data.memory24;
  pnpacpi_parse_allocated_memresource(dev,
   memory24->minimum,
   memory24->address_length,
   memory24->write_protect);
  break;
 case 130:
  memory32 = &res->data.memory32;
  pnpacpi_parse_allocated_memresource(dev,
   memory32->minimum,
   memory32->address_length,
   memory32->write_protect);
  break;
 case 135:
  fixed_memory32 = &res->data.fixed_memory32;
  pnpacpi_parse_allocated_memresource(dev,
   fixed_memory32->address,
   fixed_memory32->address_length,
   fixed_memory32->write_protect);
  break;
 case 144:
 case 143:
 case 142:
  pnpacpi_parse_allocated_address_space(dev, res);
  break;

 case 138:
  pnpacpi_parse_allocated_ext_address_space(dev, res);
  break;

 case 137:
  extended_irq = &res->data.extended_irq;

  if (extended_irq->interrupt_count == 0)
   pnp_add_irq_resource(dev, 0, IORESOURCE_DISABLED);
  else {
   for (i = 0; i < extended_irq->interrupt_count; i++) {
    pnpacpi_parse_allocated_irqresource(dev,
     extended_irq->interrupts[i],
     extended_irq->triggering,
     extended_irq->polarity,
     extended_irq->sharable);
   }






   if (pnp_can_write(dev) &&
       extended_irq->interrupt_count > 1) {
    dev_warn(&dev->dev, "multiple interrupts in "
      "_CRS descriptor; configuration can't "
      "be changed\n");
    dev->capabilities &= ~PNP_WRITE;
   }
  }
  break;

 case 134:
  break;

 default:
  dev_warn(&dev->dev, "unknown resource type %d in _CRS\n",
    res->type);
  return AE_ERROR;
 }

 return AE_OK;
}
