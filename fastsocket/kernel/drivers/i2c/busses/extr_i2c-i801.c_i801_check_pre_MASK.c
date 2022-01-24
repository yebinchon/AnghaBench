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
struct i801_priv {TYPE_1__* pci_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (struct i801_priv*) ; 
 int SMBHSTSTS_HOST_BUSY ; 
 int STATUS_FLAGS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct i801_priv *priv)
{
	int status;

	status = FUNC3(FUNC0(priv));
	if (status & SMBHSTSTS_HOST_BUSY) {
		FUNC2(&priv->pci_dev->dev, "SMBus is busy, can't use it!\n");
		return -EBUSY;
	}

	status &= STATUS_FLAGS;
	if (status) {
		FUNC1(&priv->pci_dev->dev, "Clearing status flags (%02x)\n",
			status);
		FUNC4(status, FUNC0(priv));
		status = FUNC3(FUNC0(priv)) & STATUS_FLAGS;
		if (status) {
			FUNC2(&priv->pci_dev->dev,
				"Failed clearing status flags (%02x)\n",
				status);
			return -EBUSY;
		}
	}

	return 0;
}