#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct pnp_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  capabilities; } ;
struct acpi_resource_vendor_typed {int dummy; } ;
struct acpi_resource_memory32 {int /*<<< orphan*/  write_protect; int /*<<< orphan*/  address_length; int /*<<< orphan*/  minimum; } ;
struct acpi_resource_memory24 {int /*<<< orphan*/  write_protect; int /*<<< orphan*/  address_length; int /*<<< orphan*/  minimum; } ;
struct acpi_resource_irq {int interrupt_count; int /*<<< orphan*/  sharable; int /*<<< orphan*/  polarity; int /*<<< orphan*/  triggering; int /*<<< orphan*/ * interrupts; } ;
struct acpi_resource_io {int /*<<< orphan*/  io_decode; int /*<<< orphan*/  address_length; int /*<<< orphan*/  minimum; } ;
struct acpi_resource_fixed_memory32 {int /*<<< orphan*/  write_protect; int /*<<< orphan*/  address_length; int /*<<< orphan*/  address; } ;
struct acpi_resource_fixed_io {int /*<<< orphan*/  address_length; int /*<<< orphan*/  address; } ;
struct acpi_resource_extended_irq {int interrupt_count; int /*<<< orphan*/  sharable; int /*<<< orphan*/  polarity; int /*<<< orphan*/  triggering; int /*<<< orphan*/ * interrupts; } ;
struct acpi_resource_dma {int /*<<< orphan*/ * channels; int /*<<< orphan*/  transfer; int /*<<< orphan*/  bus_master; int /*<<< orphan*/  type; int /*<<< orphan*/  channel_count; } ;
struct TYPE_2__ {struct acpi_resource_extended_irq extended_irq; struct acpi_resource_fixed_memory32 fixed_memory32; struct acpi_resource_memory32 memory32; struct acpi_resource_memory24 memory24; struct acpi_resource_vendor_typed vendor_typed; struct acpi_resource_fixed_io fixed_io; struct acpi_resource_io io; struct acpi_resource_dma dma; struct acpi_resource_irq irq; } ;
struct acpi_resource {int type; TYPE_1__ data; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DECODE_10 ; 
#define  ACPI_RESOURCE_TYPE_ADDRESS16 144 
#define  ACPI_RESOURCE_TYPE_ADDRESS32 143 
#define  ACPI_RESOURCE_TYPE_ADDRESS64 142 
#define  ACPI_RESOURCE_TYPE_DMA 141 
#define  ACPI_RESOURCE_TYPE_END_DEPENDENT 140 
#define  ACPI_RESOURCE_TYPE_END_TAG 139 
#define  ACPI_RESOURCE_TYPE_EXTENDED_ADDRESS64 138 
#define  ACPI_RESOURCE_TYPE_EXTENDED_IRQ 137 
#define  ACPI_RESOURCE_TYPE_FIXED_IO 136 
#define  ACPI_RESOURCE_TYPE_FIXED_MEMORY32 135 
#define  ACPI_RESOURCE_TYPE_GENERIC_REGISTER 134 
#define  ACPI_RESOURCE_TYPE_IO 133 
#define  ACPI_RESOURCE_TYPE_IRQ 132 
#define  ACPI_RESOURCE_TYPE_MEMORY24 131 
#define  ACPI_RESOURCE_TYPE_MEMORY32 130 
#define  ACPI_RESOURCE_TYPE_START_DEPENDENT 129 
#define  ACPI_RESOURCE_TYPE_VENDOR 128 
 int /*<<< orphan*/  AE_ERROR ; 
 int /*<<< orphan*/  AE_OK ; 
 int IORESOURCE_DISABLED ; 
 int /*<<< orphan*/  PNP_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC1 (struct pnp_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pnp_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct pnp_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pnp_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pnp_dev*,struct acpi_resource*) ; 
 int /*<<< orphan*/  FUNC6 (struct pnp_dev*,struct acpi_resource*) ; 
 int /*<<< orphan*/  FUNC7 (struct pnp_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct pnp_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct pnp_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct pnp_dev*,struct acpi_resource_vendor_typed*) ; 

__attribute__((used)) static acpi_status FUNC11(struct acpi_resource *res,
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
	case ACPI_RESOURCE_TYPE_IRQ:
		/*
		 * Per spec, only one interrupt per descriptor is allowed in
		 * _CRS, but some firmware violates this, so parse them all.
		 */
		irq = &res->data.irq;
		if (irq->interrupt_count == 0)
			FUNC3(dev, 0, IORESOURCE_DISABLED);
		else {
			for (i = 0; i < irq->interrupt_count; i++) {
				FUNC8(dev,
					irq->interrupts[i],
					irq->triggering,
					irq->polarity,
				    irq->sharable);
			}

			/*
			 * The IRQ encoder puts a single interrupt in each
			 * descriptor, so if a _CRS descriptor has more than
			 * one interrupt, we won't be able to re-encode it.
			 */
			if (FUNC4(dev) && irq->interrupt_count > 1) {
				FUNC0(&dev->dev, "multiple interrupts in "
					 "_CRS descriptor; configuration can't "
					 "be changed\n");
				dev->capabilities &= ~PNP_WRITE;
			}
		}
		break;

	case ACPI_RESOURCE_TYPE_DMA:
		dma = &res->data.dma;
		if (dma->channel_count > 0 && dma->channels[0] != (u8) -1)
			flags = FUNC1(dev, dma->type, dma->bus_master,
					  dma->transfer);
		else
			flags = IORESOURCE_DISABLED;
		FUNC2(dev, dma->channels[0], flags);
		break;

	case ACPI_RESOURCE_TYPE_IO:
		io = &res->data.io;
		FUNC7(dev,
			io->minimum,
			io->address_length,
			io->io_decode);
		break;

	case ACPI_RESOURCE_TYPE_START_DEPENDENT:
	case ACPI_RESOURCE_TYPE_END_DEPENDENT:
		break;

	case ACPI_RESOURCE_TYPE_FIXED_IO:
		fixed_io = &res->data.fixed_io;
		FUNC7(dev,
			fixed_io->address,
			fixed_io->address_length,
			ACPI_DECODE_10);
		break;

	case ACPI_RESOURCE_TYPE_VENDOR:
		vendor_typed = &res->data.vendor_typed;
		FUNC10(dev, vendor_typed);
		break;

	case ACPI_RESOURCE_TYPE_END_TAG:
		break;

	case ACPI_RESOURCE_TYPE_MEMORY24:
		memory24 = &res->data.memory24;
		FUNC9(dev,
			memory24->minimum,
			memory24->address_length,
			memory24->write_protect);
		break;
	case ACPI_RESOURCE_TYPE_MEMORY32:
		memory32 = &res->data.memory32;
		FUNC9(dev,
			memory32->minimum,
			memory32->address_length,
			memory32->write_protect);
		break;
	case ACPI_RESOURCE_TYPE_FIXED_MEMORY32:
		fixed_memory32 = &res->data.fixed_memory32;
		FUNC9(dev,
			fixed_memory32->address,
			fixed_memory32->address_length,
			fixed_memory32->write_protect);
		break;
	case ACPI_RESOURCE_TYPE_ADDRESS16:
	case ACPI_RESOURCE_TYPE_ADDRESS32:
	case ACPI_RESOURCE_TYPE_ADDRESS64:
		FUNC5(dev, res);
		break;

	case ACPI_RESOURCE_TYPE_EXTENDED_ADDRESS64:
		FUNC6(dev, res);
		break;

	case ACPI_RESOURCE_TYPE_EXTENDED_IRQ:
		extended_irq = &res->data.extended_irq;

		if (extended_irq->interrupt_count == 0)
			FUNC3(dev, 0, IORESOURCE_DISABLED);
		else {
			for (i = 0; i < extended_irq->interrupt_count; i++) {
				FUNC8(dev,
					extended_irq->interrupts[i],
					extended_irq->triggering,
					extended_irq->polarity,
					extended_irq->sharable);
			}

			/*
			 * The IRQ encoder puts a single interrupt in each
			 * descriptor, so if a _CRS descriptor has more than
			 * one interrupt, we won't be able to re-encode it.
			 */
			if (FUNC4(dev) &&
			    extended_irq->interrupt_count > 1) {
				FUNC0(&dev->dev, "multiple interrupts in "
					 "_CRS descriptor; configuration can't "
					 "be changed\n");
				dev->capabilities &= ~PNP_WRITE;
			}
		}
		break;

	case ACPI_RESOURCE_TYPE_GENERIC_REGISTER:
		break;

	default:
		FUNC0(&dev->dev, "unknown resource type %d in _CRS\n",
			 res->type);
		return AE_ERROR;
	}

	return AE_OK;
}