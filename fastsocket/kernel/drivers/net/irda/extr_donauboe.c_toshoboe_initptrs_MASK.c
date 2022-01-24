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
struct toshoboe_cb {scalar_t__ txpending; } ;

/* Variables and functions */
 int CONFIG0H_DMA_ON ; 
 int /*<<< orphan*/  OBOE_CONFIG0H ; 
 int /*<<< orphan*/  OBOE_ENABLEH ; 
 int OBOE_ENABLEH_PHYANDCLOCK ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct toshoboe_cb*) ; 

__attribute__((used)) static void
FUNC2 (struct toshoboe_cb *self)
{

  /* spin_lock_irqsave(self->spinlock, flags); */
  /* save_flags (flags); */

  /* Can reset pointers by twidling DMA */
  FUNC1 (self);

  FUNC0 (0x0, OBOE_ENABLEH);
  FUNC0 (CONFIG0H_DMA_ON, OBOE_CONFIG0H);
  FUNC0 (OBOE_ENABLEH_PHYANDCLOCK, OBOE_ENABLEH);

  self->txpending = 0;

  /* spin_unlock_irqrestore(self->spinlock, flags); */
  /* restore_flags (flags); */
}