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
struct s3c24xx_uart_info {unsigned long tx_fifomask; unsigned long tx_fifofull; } ;

/* Variables and functions */
 int /*<<< orphan*/  S3C2410_UFCON ; 
 unsigned long S3C2410_UFCON_FIFOMODE ; 
 int /*<<< orphan*/  S3C2410_UFSTAT ; 
 unsigned long FUNC0 (struct uart_port*,int /*<<< orphan*/ ) ; 
 struct s3c24xx_uart_info* FUNC1 (struct uart_port*) ; 
 unsigned int FUNC2 (struct uart_port*) ; 

__attribute__((used)) static unsigned int FUNC3(struct uart_port *port)
{
	struct s3c24xx_uart_info *info = FUNC1(port);
	unsigned long ufstat = FUNC0(port, S3C2410_UFSTAT);
	unsigned long ufcon = FUNC0(port, S3C2410_UFCON);

	if (ufcon & S3C2410_UFCON_FIFOMODE) {
		if ((ufstat & info->tx_fifomask) != 0 ||
		    (ufstat & info->tx_fifofull))
			return 0;

		return 1;
	}

	return FUNC2(port);
}