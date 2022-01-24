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
struct comedi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AI_AO_Select ; 
 unsigned int AI_DMA_Select_Mask ; 
 unsigned int AI_DMA_Select_Shift ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 unsigned int FUNC1 (int) ; 

__attribute__((used)) static inline void FUNC2(struct comedi_device *dev, int channel)
{
	unsigned bitfield;

	if (channel >= 0) {
		bitfield =
		    (FUNC1(channel) <<
		     AI_DMA_Select_Shift) & AI_DMA_Select_Mask;
	} else {
		bitfield = 0;
	}
	FUNC0(dev, AI_AO_Select, AI_DMA_Select_Mask, bitfield);
}