#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_4__ {int /*<<< orphan*/  type; } ;
struct serio {int /*<<< orphan*/  base; struct serio* io; int /*<<< orphan*/  irq; int /*<<< orphan*/  clk; TYPE_2__ dev; struct serio* port_data; int /*<<< orphan*/  phys; int /*<<< orphan*/  name; int /*<<< orphan*/  close; int /*<<< orphan*/  open; int /*<<< orphan*/  write; TYPE_1__ id; } ;
struct amba_kmi_port {int /*<<< orphan*/  base; struct amba_kmi_port* io; int /*<<< orphan*/  irq; int /*<<< orphan*/  clk; TYPE_2__ dev; struct amba_kmi_port* port_data; int /*<<< orphan*/  phys; int /*<<< orphan*/  name; int /*<<< orphan*/  close; int /*<<< orphan*/  open; int /*<<< orphan*/  write; TYPE_1__ id; } ;
struct amba_id {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  start; } ;
struct amba_device {int /*<<< orphan*/ * irq; int /*<<< orphan*/  dev; TYPE_3__ res; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SERIO_8042 ; 
 int /*<<< orphan*/  amba_kmi_close ; 
 int /*<<< orphan*/  amba_kmi_open ; 
 int /*<<< orphan*/  amba_kmi_write ; 
 int /*<<< orphan*/  FUNC2 (struct amba_device*) ; 
 int FUNC3 (struct amba_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct amba_device*,struct serio*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct serio*) ; 
 struct serio* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (struct serio*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC14(struct amba_device *dev, struct amba_id *id)
{
	struct amba_kmi_port *kmi;
	struct serio *io;
	int ret;

	ret = FUNC3(dev, NULL);
	if (ret)
		return ret;

	kmi = FUNC10(sizeof(struct amba_kmi_port), GFP_KERNEL);
	io = FUNC10(sizeof(struct serio), GFP_KERNEL);
	if (!kmi || !io) {
		ret = -ENOMEM;
		goto out;
	}


	io->id.type	= SERIO_8042;
	io->write	= amba_kmi_write;
	io->open	= amba_kmi_open;
	io->close	= amba_kmi_close;
	FUNC13(io->name, FUNC6(&dev->dev), sizeof(io->name));
	FUNC13(io->phys, FUNC6(&dev->dev), sizeof(io->phys));
	io->port_data	= kmi;
	io->dev.parent	= &dev->dev;

	kmi->io 	= io;
	kmi->base	= FUNC7(dev->res.start, FUNC11(&dev->res));
	if (!kmi->base) {
		ret = -ENOMEM;
		goto out;
	}

	kmi->clk = FUNC5(&dev->dev, "KMIREFCLK");
	if (FUNC0(kmi->clk)) {
		ret = FUNC1(kmi->clk);
		goto unmap;
	}

	kmi->irq = dev->irq[0];
	FUNC4(dev, kmi);

	FUNC12(kmi->io);
	return 0;

 unmap:
	FUNC8(kmi->base);
 out:
	FUNC9(kmi);
	FUNC9(io);
	FUNC2(dev);
	return ret;
}