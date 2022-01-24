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
struct dio200_subdev_8254 {unsigned int* gate_src; int /*<<< orphan*/  gat_sce_iobase; int /*<<< orphan*/  which; int /*<<< orphan*/  has_clk_gat_sce; } ;

/* Variables and functions */
 unsigned char FUNC0 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct dio200_subdev_8254 *subpriv,
		    unsigned int counter_number, unsigned int gate_src)
{
	unsigned char byte;

	if (!subpriv->has_clk_gat_sce)
		return -1;
	if (counter_number > 2)
		return -1;
	if (gate_src > 7)
		return -1;

	subpriv->gate_src[counter_number] = gate_src;
	byte = FUNC0(subpriv->which, counter_number, gate_src);
	FUNC1(byte, subpriv->gat_sce_iobase);

	return 0;
}