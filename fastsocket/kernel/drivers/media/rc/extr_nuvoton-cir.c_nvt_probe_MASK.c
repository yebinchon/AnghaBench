#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  version; int /*<<< orphan*/  product; int /*<<< orphan*/  vendor; int /*<<< orphan*/  bustype; } ;
struct rc_dev {char* input_name; void* tx_resolution; void* rx_resolution; void* timeout; void* max_timeout; void* min_timeout; int /*<<< orphan*/  map_name; int /*<<< orphan*/  driver_name; TYPE_2__ input_id; int /*<<< orphan*/  s_tx_carrier; int /*<<< orphan*/  tx_ir; int /*<<< orphan*/  close; int /*<<< orphan*/  open; int /*<<< orphan*/  allowed_protos; int /*<<< orphan*/  driver_type; struct nvt_dev* priv; } ;
struct pnp_device_id {int dummy; } ;
struct pnp_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  queue; int /*<<< orphan*/  lock; } ;
struct nvt_dev {void* cir_wake_addr; scalar_t__ cir_wake_irq; void* cir_addr; scalar_t__ cir_irq; struct rc_dev* rdev; int /*<<< orphan*/  chip_minor; int /*<<< orphan*/  chip_major; TYPE_1__ tx; struct pnp_dev* pdev; int /*<<< orphan*/  rawir; int /*<<< orphan*/  nvt_lock; int /*<<< orphan*/  cr_efdr; int /*<<< orphan*/  cr_efir; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_HOST ; 
 scalar_t__ CIR_IOREG_LENGTH ; 
 int /*<<< orphan*/  CR_EFDR ; 
 int /*<<< orphan*/  CR_EFIR ; 
 int EBUSY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  KERN_NOTICE ; 
 int /*<<< orphan*/  NVT_DRIVER_NAME ; 
 int /*<<< orphan*/  PCI_VENDOR_ID_WINBOND2 ; 
 int /*<<< orphan*/  RC_DRIVER_IR_RAW ; 
 int /*<<< orphan*/  RC_MAP_RC6_MCE ; 
 int /*<<< orphan*/  RC_TYPE_ALL ; 
 void* XYZ ; 
 int /*<<< orphan*/  FUNC0 (struct nvt_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct nvt_dev*) ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,struct nvt_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct nvt_dev*) ; 
 struct nvt_dev* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nvt_cir_isr ; 
 int /*<<< orphan*/  FUNC10 (struct nvt_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct nvt_dev*) ; 
 int /*<<< orphan*/  nvt_cir_wake_isr ; 
 int /*<<< orphan*/  FUNC12 (struct nvt_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct nvt_dev*) ; 
 int /*<<< orphan*/  nvt_close ; 
 int /*<<< orphan*/  FUNC14 (struct nvt_dev*) ; 
 int /*<<< orphan*/  FUNC15 (struct nvt_dev*) ; 
 int FUNC16 (struct nvt_dev*) ; 
 int /*<<< orphan*/  nvt_open ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  nvt_set_tx_carrier ; 
 int /*<<< orphan*/  nvt_tx_ir ; 
 scalar_t__ FUNC18 (struct pnp_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct pnp_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (struct pnp_dev*,int) ; 
 void* FUNC21 (struct pnp_dev*,int) ; 
 int /*<<< orphan*/  FUNC22 (struct pnp_dev*,int) ; 
 int /*<<< orphan*/  FUNC23 (struct pnp_dev*,struct nvt_dev*) ; 
 struct rc_dev* FUNC24 () ; 
 int /*<<< orphan*/  FUNC25 (struct rc_dev*) ; 
 int FUNC26 (struct rc_dev*) ; 
 int /*<<< orphan*/  FUNC27 (void*,scalar_t__) ; 
 scalar_t__ FUNC28 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC29 (void*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC31(struct pnp_dev *pdev, const struct pnp_device_id *dev_id)
{
	struct nvt_dev *nvt;
	struct rc_dev *rdev;
	int ret = -ENOMEM;

	nvt = FUNC9(sizeof(struct nvt_dev), GFP_KERNEL);
	if (!nvt)
		return ret;

	/* input device for IR remote (and tx) */
	rdev = FUNC24();
	if (!rdev)
		goto failure;

	ret = -ENODEV;
	/* validate pnp resources */
	if (!FUNC22(pdev, 0) ||
	    FUNC20(pdev, 0) < CIR_IOREG_LENGTH) {
		FUNC2(&pdev->dev, "IR PNP Port not valid!\n");
		goto failure;
	}

	if (!FUNC19(pdev, 0)) {
		FUNC2(&pdev->dev, "PNP IRQ not valid!\n");
		goto failure;
	}

	if (!FUNC22(pdev, 1) ||
	    FUNC20(pdev, 1) < CIR_IOREG_LENGTH) {
		FUNC2(&pdev->dev, "Wake PNP Port not valid!\n");
		goto failure;
	}

	nvt->cir_addr = FUNC21(pdev, 0);
	nvt->cir_irq  = FUNC18(pdev, 0);

	nvt->cir_wake_addr = FUNC21(pdev, 1);
	/* irq is always shared between cir and cir wake */
	nvt->cir_wake_irq  = nvt->cir_irq;

	nvt->cr_efir = CR_EFIR;
	nvt->cr_efdr = CR_EFDR;

	FUNC30(&nvt->nvt_lock);
	FUNC30(&nvt->tx.lock);
	FUNC6(&nvt->rawir);

	ret = -EBUSY;
	/* now claim resources */
	if (!FUNC29(nvt->cir_addr,
			    CIR_IOREG_LENGTH, NVT_DRIVER_NAME))
		goto failure;

	if (FUNC28(nvt->cir_irq, nvt_cir_isr, IRQF_SHARED,
			NVT_DRIVER_NAME, (void *)nvt))
		goto failure;

	if (!FUNC29(nvt->cir_wake_addr,
			    CIR_IOREG_LENGTH, NVT_DRIVER_NAME))
		goto failure;

	if (FUNC28(nvt->cir_wake_irq, nvt_cir_wake_isr, IRQF_SHARED,
			NVT_DRIVER_NAME, (void *)nvt))
		goto failure;

	FUNC23(pdev, nvt);
	nvt->pdev = pdev;

	FUNC7(&nvt->tx.queue);

	ret = FUNC16(nvt);
	if (ret)
		goto failure;

	/* Initialize CIR & CIR Wake Logical Devices */
	FUNC15(nvt);
	FUNC10(nvt);
	FUNC12(nvt);
	FUNC14(nvt);

	/* Initialize CIR & CIR Wake Config Registers */
	FUNC11(nvt);
	FUNC13(nvt);

	/* Set up the rc device */
	rdev->priv = nvt;
	rdev->driver_type = RC_DRIVER_IR_RAW;
	rdev->allowed_protos = RC_TYPE_ALL;
	rdev->open = nvt_open;
	rdev->close = nvt_close;
	rdev->tx_ir = nvt_tx_ir;
	rdev->s_tx_carrier = nvt_set_tx_carrier;
	rdev->input_name = "Nuvoton w836x7hg Infrared Remote Transceiver";
	rdev->input_id.bustype = BUS_HOST;
	rdev->input_id.vendor = PCI_VENDOR_ID_WINBOND2;
	rdev->input_id.product = nvt->chip_major;
	rdev->input_id.version = nvt->chip_minor;
	rdev->driver_name = NVT_DRIVER_NAME;
	rdev->map_name = RC_MAP_RC6_MCE;
#if 0
	rdev->min_timeout = XYZ;
	rdev->max_timeout = XYZ;
	rdev->timeout = XYZ;
	/* rx resolution is hardwired to 50us atm, 1, 25, 100 also possible */
	rdev->rx_resolution = XYZ;
	/* tx bits */
	rdev->tx_resolution = XYZ;
#endif

	ret = FUNC26(rdev);
	if (ret)
		goto failure;

	FUNC3(&pdev->dev, 1);
	FUNC4(&pdev->dev, 1);
	nvt->rdev = rdev;
	FUNC17(KERN_NOTICE, "driver has been successfully loaded\n");
	if (debug) {
		FUNC0(nvt);
		FUNC1(nvt);
	}

	return 0;

failure:
	if (nvt->cir_irq)
		FUNC5(nvt->cir_irq, nvt);
	if (nvt->cir_addr)
		FUNC27(nvt->cir_addr, CIR_IOREG_LENGTH);

	if (nvt->cir_wake_irq)
		FUNC5(nvt->cir_wake_irq, nvt);
	if (nvt->cir_wake_addr)
		FUNC27(nvt->cir_wake_addr, CIR_IOREG_LENGTH);

	FUNC25(rdev);
	FUNC8(nvt);

	return ret;
}