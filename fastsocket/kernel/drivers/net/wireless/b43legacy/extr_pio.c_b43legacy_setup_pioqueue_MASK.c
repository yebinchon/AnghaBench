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
typedef  int /*<<< orphan*/  u32 ;
typedef  scalar_t__ u16 ;
struct b43legacy_wldev {int /*<<< orphan*/  wl; TYPE_2__* dev; } ;
struct b43legacy_pioqueue {int need_workarounds; scalar_t__ tx_devq_size; scalar_t__ mmio_base; int /*<<< orphan*/  txtask; int /*<<< orphan*/  txrunning; int /*<<< orphan*/  txqueue; int /*<<< orphan*/  txfree; struct b43legacy_wldev* dev; } ;
struct TYPE_3__ {int revision; } ;
struct TYPE_4__ {TYPE_1__ id; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43legacy_MACCTL_BE ; 
 int /*<<< orphan*/  B43legacy_MMIO_MACCTL ; 
 scalar_t__ B43legacy_PIO_TXQADJUST ; 
 scalar_t__ B43legacy_PIO_TXQBUFSIZE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct b43legacy_wldev*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct b43legacy_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct b43legacy_wldev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct b43legacy_pioqueue*) ; 
 struct b43legacy_pioqueue* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct b43legacy_pioqueue*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  tx_tasklet ; 

__attribute__((used)) static
struct b43legacy_pioqueue *FUNC9(struct b43legacy_wldev *dev,
						    u16 pio_mmio_base)
{
	struct b43legacy_pioqueue *queue;
	u32 value;
	u16 qsize;

	queue = FUNC6(sizeof(*queue), GFP_KERNEL);
	if (!queue)
		goto out;

	queue->dev = dev;
	queue->mmio_base = pio_mmio_base;
	queue->need_workarounds = (dev->dev->id.revision < 3);

	FUNC0(&queue->txfree);
	FUNC0(&queue->txqueue);
	FUNC0(&queue->txrunning);
	FUNC8(&queue->txtask, tx_tasklet,
		     (unsigned long)queue);

	value = FUNC2(dev, B43legacy_MMIO_MACCTL);
	value &= ~B43legacy_MACCTL_BE;
	FUNC3(dev, B43legacy_MMIO_MACCTL, value);

	qsize = FUNC1(dev, queue->mmio_base
				 + B43legacy_PIO_TXQBUFSIZE);
	if (qsize == 0) {
		FUNC4(dev->wl, "This card does not support PIO "
		       "operation mode. Please use DMA mode "
		       "(module parameter pio=0).\n");
		goto err_freequeue;
	}
	if (qsize <= B43legacy_PIO_TXQADJUST) {
		FUNC4(dev->wl, "PIO tx device-queue too small (%u)\n",
		       qsize);
		goto err_freequeue;
	}
	qsize -= B43legacy_PIO_TXQADJUST;
	queue->tx_devq_size = qsize;

	FUNC7(queue);

out:
	return queue;

err_freequeue:
	FUNC5(queue);
	queue = NULL;
	goto out;
}