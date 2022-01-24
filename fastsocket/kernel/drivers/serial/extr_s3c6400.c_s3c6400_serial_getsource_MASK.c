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
typedef  int u32 ;
struct uart_port {int dummy; } ;
struct s3c24xx_uart_clksrc {int divisor; char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  S3C2410_UCON ; 
 int S3C6400_UCON_CLKMASK ; 
#define  S3C6400_UCON_PCLK 131 
#define  S3C6400_UCON_PCLK2 130 
#define  S3C6400_UCON_UCLK0 129 
#define  S3C6400_UCON_UCLK1 128 
 int FUNC0 (struct uart_port*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct uart_port *port,
				    struct s3c24xx_uart_clksrc *clk)
{
	u32 ucon = FUNC0(port, S3C2410_UCON);

	clk->divisor = 1;

	switch (ucon & S3C6400_UCON_CLKMASK) {
	case S3C6400_UCON_UCLK0:
		clk->name = "uclk0";
		break;

	case S3C6400_UCON_UCLK1:
		clk->name = "uclk1";
		break;

	case S3C6400_UCON_PCLK:
	case S3C6400_UCON_PCLK2:
		clk->name = "pclk";
		break;
	}

	return 0;
}