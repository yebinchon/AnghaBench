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
 unsigned long** dir_oe ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 

inline unsigned long FUNC2(struct gpio_private *priv, unsigned long arg)
{
	unsigned long flags;
	unsigned long dir_shadow;

	FUNC1(flags);
	dir_shadow = *dir_oe[priv->minor];
	dir_shadow |=  (arg & changeable_dir[priv->minor]);
	*dir_oe[priv->minor] = dir_shadow;
	FUNC0(flags);
	return dir_shadow;
}