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
typedef  int /*<<< orphan*/  u_long ;
struct ahc_softc {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct ahc_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ahc_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ahc_softc*,int /*<<< orphan*/ *) ; 

irqreturn_t
FUNC4(int irq, void *dev_id)
{
	struct	ahc_softc *ahc;
	u_long	flags;
	int	ours;

	ahc = (struct ahc_softc *) dev_id;
	FUNC2(ahc, &flags); 
	ours = FUNC1(ahc);
	FUNC3(ahc, &flags);
	return FUNC0(ours);
}