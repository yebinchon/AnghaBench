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
typedef  int u64 ;
struct ioat_chan_common {scalar_t__ reg_base; } ;
struct ioat_dma_chan {struct ioat_chan_common base; } ;

/* Variables and functions */
 scalar_t__ IOAT1_CHAINADDR_OFFSET_HIGH ; 
 scalar_t__ IOAT1_CHAINADDR_OFFSET_LOW ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 

__attribute__((used)) static inline void FUNC1(struct ioat_dma_chan *ioat, u64 addr)
{
	struct ioat_chan_common *chan = &ioat->base;

	FUNC0(addr & 0x00000000FFFFFFFF,
	       chan->reg_base + IOAT1_CHAINADDR_OFFSET_LOW);
	FUNC0(addr >> 32,
	       chan->reg_base + IOAT1_CHAINADDR_OFFSET_HIGH);
}