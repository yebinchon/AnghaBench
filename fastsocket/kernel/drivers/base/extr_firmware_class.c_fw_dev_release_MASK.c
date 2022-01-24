#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct firmware_priv {int nr_pages; struct firmware_priv* fw_id; struct firmware_priv* pages; } ;
struct device {int nr_pages; struct device* fw_id; struct device* pages; } ;

/* Variables and functions */
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (struct firmware_priv) ; 
 struct firmware_priv* FUNC1 (struct firmware_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct firmware_priv*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct device *dev)
{
	struct firmware_priv *fw_priv = FUNC1(dev);
	int i;

	for (i = 0; i < fw_priv->nr_pages; i++)
		FUNC0(fw_priv->pages[i]);
	FUNC2(fw_priv->pages);
	FUNC2(fw_priv->fw_id);
	FUNC2(fw_priv);
	FUNC2(dev);

	FUNC3(THIS_MODULE);
}