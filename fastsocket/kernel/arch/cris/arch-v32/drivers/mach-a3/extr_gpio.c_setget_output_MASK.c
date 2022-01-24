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
struct gpio_private {size_t minor; } ;

/* Variables and functions */
 unsigned long* changeable_dir ; 
 int /*<<< orphan*/ * dir_oe ; 
 int /*<<< orphan*/  gpio_lock ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline unsigned long FUNC4(struct gpio_private *priv,
	unsigned long arg)
{
	unsigned long flags;
	unsigned long dir_shadow;

	FUNC1(&gpio_lock, flags);

	dir_shadow = FUNC0(dir_oe[priv->minor]) |
		(arg & changeable_dir[priv->minor]);
	FUNC3(dir_shadow, dir_oe[priv->minor]);

	FUNC2(&gpio_lock, flags);
	return dir_shadow;
}