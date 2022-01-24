#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct drm_device {scalar_t__ dev_private; } ;
struct TYPE_8__ {int /*<<< orphan*/ * virtual_start; } ;
struct TYPE_9__ {int dma_low; scalar_t__ pci_buf; TYPE_1__ ring; } ;
typedef  TYPE_2__ drm_via_private_t ;
struct TYPE_10__ {int size; int /*<<< orphan*/  buf; } ;
typedef  TYPE_3__ drm_via_cmdbuffer_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int EAGAIN ; 
 int EFAULT ; 
 int ENOMEM ; 
 int VIA_PCI_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int,struct drm_device*,int) ; 

__attribute__((used)) static int FUNC7(struct drm_device *dev, drm_via_cmdbuffer_t *cmd)
{
	drm_via_private_t *dev_priv;
	uint32_t *vb;
	int ret;

	dev_priv = (drm_via_private_t *) dev->dev_private;

	if (dev_priv->ring.virtual_start == NULL) {
		FUNC1("called without initializing AGP ring buffer.\n");
		return -EFAULT;
	}

	if (cmd->size > VIA_PCI_BUF_SIZE)
		return -ENOMEM;

	if (FUNC0(dev_priv->pci_buf, cmd->buf, cmd->size))
		return -EFAULT;

	/*
	 * Running this function on AGP memory is dead slow. Therefore
	 * we run it on a temporary cacheable system memory buffer and
	 * copy it to AGP memory when ready.
	 */

	if ((ret =
	     FUNC6((uint32_t *) dev_priv->pci_buf,
				       cmd->size, dev, 1))) {
		return ret;
	}

	vb = FUNC3(dev_priv, (cmd->size < 0x100) ? 0x102 : cmd->size);
	if (vb == NULL)
		return -EAGAIN;

	FUNC2(vb, dev_priv->pci_buf, cmd->size);

	dev_priv->dma_low += cmd->size;

	/*
	 * Small submissions somehow stalls the CPU. (AGP cache effects?)
	 * pad to greater size.
	 */

	if (cmd->size < 0x100)
		FUNC5(dev_priv, (0x100 - cmd->size) >> 3);
	FUNC4(dev_priv);

	return 0;
}