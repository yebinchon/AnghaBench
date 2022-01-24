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
typedef  int /*<<< orphan*/  u32 ;
struct talitos_private {scalar_t__ reg; } ;
struct hwrng {scalar_t__ priv; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ TALITOS_RNGU_FIFO ; 
 scalar_t__ TALITOS_RNGU_FIFO_LO ; 
 struct talitos_private* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct hwrng *rng, u32 *data)
{
	struct device *dev = (struct device *)rng->priv;
	struct talitos_private *priv = FUNC0(dev);

	/* rng fifo requires 64-bit accesses */
	*data = FUNC1(priv->reg + TALITOS_RNGU_FIFO);
	*data = FUNC1(priv->reg + TALITOS_RNGU_FIFO_LO);

	return sizeof(u32);
}