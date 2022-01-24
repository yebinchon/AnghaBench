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
struct device {int dummy; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  ENOENT ; 
 struct clk* FUNC1 (int /*<<< orphan*/ ) ; 
 struct clk clk_enet0 ; 
 struct clk clk_enet1 ; 
 struct clk clk_ephy ; 
 struct clk clk_pcm ; 
 struct clk clk_periph ; 
 struct clk clk_spi ; 
 struct clk clk_usbh ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 

struct clk *FUNC3(struct device *dev, const char *id)
{
	if (!FUNC2(id, "enet0"))
		return &clk_enet0;
	if (!FUNC2(id, "enet1"))
		return &clk_enet1;
	if (!FUNC2(id, "ephy"))
		return &clk_ephy;
	if (!FUNC2(id, "usbh"))
		return &clk_usbh;
	if (!FUNC2(id, "spi"))
		return &clk_spi;
	if (!FUNC2(id, "periph"))
		return &clk_periph;
	if (FUNC0() && !FUNC2(id, "pcm"))
		return &clk_pcm;
	return FUNC1(-ENOENT);
}