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
struct net_device {int /*<<< orphan*/  base_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC5(struct net_device *dev,
                                     unsigned int divisor)
{
        FUNC4(0x81, FUNC2(dev->base_addr));        /* DLAB = 1 */
        FUNC4(divisor, FUNC0(dev->base_addr));
        FUNC4(divisor >> 8, FUNC1(dev->base_addr));
        FUNC4(0x01, FUNC2(dev->base_addr));        /* word length = 6 */
        /*
         * make sure the next interrupt is generated;
         * 0 must be used to power the modem; the modem draws its
         * power from the TxD line
         */
        FUNC4(0x00, FUNC3(dev->base_addr));
        /*
         * it is important not to set the divider while transmitting;
         * this reportedly makes some UARTs generating interrupts
         * in the hundredthousands per second region
         * Reported by: Ignacio.Arenaza@studi.epfl.ch (Ignacio Arenaza Nuno)
         */
}