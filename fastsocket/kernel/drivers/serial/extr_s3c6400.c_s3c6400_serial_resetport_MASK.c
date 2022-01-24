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
struct uart_port {int /*<<< orphan*/  mapbase; } ;
struct s3c2410_uartcfg {unsigned long ucon; unsigned long ulcon; unsigned long ufcon; } ;

/* Variables and functions */
 int /*<<< orphan*/  S3C2410_UCON ; 
 int /*<<< orphan*/  S3C2410_UFCON ; 
 unsigned long S3C2410_UFCON_RESETBOTH ; 
 int /*<<< orphan*/  S3C2410_ULCON ; 
 unsigned long S3C6400_UCON_CLKMASK ; 
 int /*<<< orphan*/  FUNC0 (char*,struct uart_port*,int /*<<< orphan*/ ,struct s3c2410_uartcfg*) ; 
 unsigned long FUNC1 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct uart_port *port,
				    struct s3c2410_uartcfg *cfg)
{
	unsigned long ucon = FUNC1(port, S3C2410_UCON);

	FUNC0("s3c6400_serial_resetport: port=%p (%08lx), cfg=%p\n",
	    port, port->mapbase, cfg);

	/* ensure we don't change the clock settings... */

	ucon &= S3C6400_UCON_CLKMASK;

	FUNC2(port, S3C2410_UCON,  ucon | cfg->ucon);
	FUNC2(port, S3C2410_ULCON, cfg->ulcon);

	/* reset both fifos */

	FUNC2(port, S3C2410_UFCON, cfg->ufcon | S3C2410_UFCON_RESETBOTH);
	FUNC2(port, S3C2410_UFCON, cfg->ufcon);

	return 0;
}