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
 size_t GPIO_MINOR_C ; 
 size_t GPIO_MINOR_V ; 
 unsigned long* changeable_dir ; 
 int /*<<< orphan*/ * dir_oe ; 
 int /*<<< orphan*/  gpio_lock ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int /*<<< orphan*/ ) ; 

inline unsigned long FUNC4(struct gpio_private *priv, unsigned long arg)
{
	/* Set direction 0=unchanged 1=input,
	 * return mask with 1=input
	 */
	unsigned long flags;
	unsigned long dir_shadow;

	FUNC1(&gpio_lock, flags);

	dir_shadow = FUNC0(dir_oe[priv->minor]) &
		~(arg & changeable_dir[priv->minor]);
	FUNC3(dir_shadow, dir_oe[priv->minor]);

	FUNC2(&gpio_lock, flags);

	if (priv->minor == GPIO_MINOR_C)
		dir_shadow ^= 0xFFFF;		/* Only 16 bits */
#ifdef CONFIG_ETRAX_VIRTUAL_GPIO
	else if (priv->minor == GPIO_MINOR_V)
		dir_shadow ^= 0xFFFF;		/* Only 16 bits */
#endif
	else
		dir_shadow ^= 0xFFFFFFFF;	/* PA, PB and PD 32 bits */

	return dir_shadow;

}