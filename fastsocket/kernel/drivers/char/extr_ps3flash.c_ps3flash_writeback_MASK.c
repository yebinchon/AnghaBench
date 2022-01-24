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
struct ps3flash_private {int dirty; scalar_t__ tag; } ;
struct ps3_storage_device {int /*<<< orphan*/  sbd; } ;

/* Variables and functions */
 struct ps3flash_private* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct ps3_storage_device*,scalar_t__,int) ; 

__attribute__((used)) static int FUNC2(struct ps3_storage_device *dev)
{
	struct ps3flash_private *priv = FUNC0(&dev->sbd);
	int res;

	if (!priv->dirty || priv->tag < 0)
		return 0;

	res = FUNC1(dev, priv->tag, 1);
	if (res)
		return res;

	priv->dirty = false;
	return 0;
}