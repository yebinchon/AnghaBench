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
struct s3c24xx_uart_info {int (* get_clksrc ) (struct uart_port*,struct s3c24xx_uart_clksrc*) ;} ;
struct s3c24xx_uart_clksrc {int dummy; } ;

/* Variables and functions */
 struct s3c24xx_uart_info* FUNC0 (struct uart_port*) ; 
 int FUNC1 (struct uart_port*,struct s3c24xx_uart_clksrc*) ; 

__attribute__((used)) static inline int
FUNC2(struct uart_port *port, struct s3c24xx_uart_clksrc *c)
{
	struct s3c24xx_uart_info *info = FUNC0(port);

	return (info->get_clksrc)(port, c);
}