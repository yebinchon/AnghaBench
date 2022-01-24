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
 int MAX_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct i801_priv*) ; 
 int SMBHSTSTS_INTR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct i801_priv *priv)
{
	int timeout = 0;
	int status;

	do {
		FUNC3(1);
		status = FUNC2(FUNC0(priv));
	} while ((!(status & SMBHSTSTS_INTR))
		 && (timeout++ < MAX_TIMEOUT));

	if (timeout > MAX_TIMEOUT)
		FUNC1(&priv->pci_dev->dev, "PEC Timeout!\n");

	FUNC4(status, FUNC0(priv));
}