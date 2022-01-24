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
typedef  int /*<<< orphan*/  u_int ;
struct uart_port {int dummy; } ;

/* Variables and functions */
 int ATMEL_US_TXEMPTY ; 
 int /*<<< orphan*/  TIOCSER_TEMT ; 
 int FUNC0 (struct uart_port*) ; 

__attribute__((used)) static u_int FUNC1(struct uart_port *port)
{
	return (FUNC0(port) & ATMEL_US_TXEMPTY) ? TIOCSER_TEMT : 0;
}