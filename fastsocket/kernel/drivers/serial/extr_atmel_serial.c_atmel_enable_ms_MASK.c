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
struct uart_port {int dummy; } ;

/* Variables and functions */
 int ATMEL_US_CTSIC ; 
 int ATMEL_US_DCDIC ; 
 int ATMEL_US_DSRIC ; 
 int ATMEL_US_RIIC ; 
 int /*<<< orphan*/  FUNC0 (struct uart_port*,int) ; 

__attribute__((used)) static void FUNC1(struct uart_port *port)
{
	FUNC0(port, ATMEL_US_RIIC | ATMEL_US_DSRIC
			| ATMEL_US_DCDIC | ATMEL_US_CTSIC);
}