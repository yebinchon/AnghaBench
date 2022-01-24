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
struct s3c24xx_uart_clksrc {char* name; int /*<<< orphan*/  divisor; } ;
struct s3c2410_uartcfg {int clocks_size; struct s3c24xx_uart_clksrc* clocks; } ;
struct clk {int dummy; } ;
struct baud_calc {unsigned int calc; unsigned int quot; struct clk* src; struct s3c24xx_uart_clksrc* clksrc; } ;

/* Variables and functions */
 int MAX_CLKS ; 
 struct s3c2410_uartcfg* FUNC0 (struct uart_port*) ; 
 scalar_t__ FUNC1 (struct baud_calc*,struct uart_port*,struct s3c24xx_uart_clksrc*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*,struct s3c24xx_uart_clksrc*) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_port*,struct s3c24xx_uart_clksrc*) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 struct s3c24xx_uart_clksrc tmp_clksrc ; 

__attribute__((used)) static unsigned int FUNC5(struct uart_port *port,
					  struct s3c24xx_uart_clksrc **clksrc,
					  struct clk **clk,
					  unsigned int baud)
{
	struct s3c2410_uartcfg *cfg = FUNC0(port);
	struct s3c24xx_uart_clksrc *clkp;
	struct baud_calc res[MAX_CLKS];
	struct baud_calc *resptr, *best, *sptr;
	int i;

	clkp = cfg->clocks;
	best = NULL;

	if (cfg->clocks_size < 2) {
		if (cfg->clocks_size == 0)
			clkp = &tmp_clksrc;

		/* check to see if we're sourcing fclk, and if so we're
		 * going to have to update the clock source
		 */

		if (FUNC4(clkp->name, "fclk") == 0) {
			struct s3c24xx_uart_clksrc src;

			FUNC2(port, &src);

			/* check that the port already using fclk, and if
			 * not, then re-select fclk
			 */

			if (FUNC4(src.name, clkp->name) == 0) {
				FUNC3(port, clkp);
				FUNC2(port, &src);
			}

			clkp->divisor = src.divisor;
		}

		FUNC1(res, port, clkp, baud);
		best = res;
		resptr = best + 1;
	} else {
		resptr = res;

		for (i = 0; i < cfg->clocks_size; i++, clkp++) {
			if (FUNC1(resptr, port, clkp, baud))
				resptr++;
		}
	}

	/* ok, we now need to select the best clock we found */

	if (!best) {
		unsigned int deviation = (1<<30)|((1<<30)-1);
		int calc_deviation;

		for (sptr = res; sptr < resptr; sptr++) {
			calc_deviation = baud - sptr->calc;
			if (calc_deviation < 0)
				calc_deviation = -calc_deviation;

			if (calc_deviation < deviation) {
				best = sptr;
				deviation = calc_deviation;
			}
		}
	}

	/* store results to pass back */

	*clksrc = best->clksrc;
	*clk    = best->src;

	return best->quot;
}