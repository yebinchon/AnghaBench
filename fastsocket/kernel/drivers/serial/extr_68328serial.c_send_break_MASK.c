#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct m68k_serial {size_t line; int /*<<< orphan*/  port; } ;
struct TYPE_4__ {int /*<<< orphan*/  w; } ;
struct TYPE_5__ {TYPE_1__ utx; } ;
typedef  TYPE_2__ m68328_uart ;

/* Variables and functions */
 int /*<<< orphan*/  UTX_SEND_BREAK ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 TYPE_2__* uart_addr ; 

__attribute__((used)) static void FUNC3(struct m68k_serial * info, unsigned int duration)
{
	m68328_uart *uart = &uart_addr[info->line];
        unsigned long flags;
        if (!info->port)
                return;
        FUNC1(flags);
#ifdef USE_INTS	
	uart->utx.w |= UTX_SEND_BREAK;
	msleep_interruptible(duration);
	uart->utx.w &= ~UTX_SEND_BREAK;
#endif		
        FUNC0(flags);
}