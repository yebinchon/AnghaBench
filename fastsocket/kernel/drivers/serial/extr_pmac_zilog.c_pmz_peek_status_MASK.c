#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct uart_pmac_port {TYPE_1__ port; } ;

/* Variables and functions */
 int /*<<< orphan*/  R0 ; 
 int /*<<< orphan*/  FUNC0 (struct uart_pmac_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline u8 FUNC3(struct uart_pmac_port *uap)
{
	unsigned long flags;
	u8 status;
	
	FUNC1(&uap->port.lock, flags);
	status = FUNC0(uap, R0);
	FUNC2(&uap->port.lock, flags);

	return status;
}