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
struct TYPE_2__ {int /*<<< orphan*/  tags; } ;
struct ps3vram_priv {TYPE_1__ cache; } ;
struct ps3_system_bus_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct ps3vram_priv* FUNC1 (struct ps3_system_bus_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct ps3_system_bus_device*) ; 

__attribute__((used)) static void FUNC3(struct ps3_system_bus_device *dev)
{
	struct ps3vram_priv *priv = FUNC1(dev);

	FUNC2(dev);
	FUNC0(priv->cache.tags);
}