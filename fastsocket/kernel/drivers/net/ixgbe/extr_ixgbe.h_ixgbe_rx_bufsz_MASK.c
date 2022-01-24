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
struct ixgbe_ring {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 unsigned int IXGBE_RXBUFFER_2K ; 
 unsigned int IXGBE_RXBUFFER_3K ; 
 unsigned int IXGBE_RXBUFFER_4K ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  __IXGBE_RX_FCOE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline unsigned int FUNC1(struct ixgbe_ring *ring)
{
#ifdef IXGBE_FCOE
	if (test_bit(__IXGBE_RX_FCOE, &ring->state))
		return (PAGE_SIZE < 8192) ? IXGBE_RXBUFFER_4K :
					    IXGBE_RXBUFFER_3K;
#endif
	return IXGBE_RXBUFFER_2K;
}