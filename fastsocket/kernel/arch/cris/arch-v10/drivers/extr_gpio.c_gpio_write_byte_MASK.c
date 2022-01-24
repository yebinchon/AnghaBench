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
struct gpio_private {scalar_t__ write_msb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gpio_private*,unsigned char,int) ; 

__attribute__((used)) static void FUNC1(struct gpio_private *priv, unsigned char data)
{
	int i;

	if (priv->write_msb)
		for (i = 7; i >= 0; i--)
			FUNC0(priv, data, i);
	else
		for (i = 0; i <= 7; i++)
			FUNC0(priv, data, i);
}