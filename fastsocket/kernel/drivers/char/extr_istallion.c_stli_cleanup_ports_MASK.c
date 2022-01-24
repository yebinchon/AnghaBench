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
struct tty_struct {int dummy; } ;
struct stliport {int /*<<< orphan*/  port; } ;
struct stlibrd {struct stliport** ports; } ;

/* Variables and functions */
 unsigned int STL_MAXPORTS ; 
 int /*<<< orphan*/  FUNC0 (struct stliport*) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct tty_struct*) ; 
 struct tty_struct* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct stlibrd *brdp)
{
	struct stliport *portp;
	unsigned int j;
	struct tty_struct *tty;

	for (j = 0; j < STL_MAXPORTS; j++) {
		portp = brdp->ports[j];
		if (portp != NULL) {
			tty = FUNC3(&portp->port);
			if (tty != NULL) {
				FUNC1(tty);
				FUNC2(tty);
			}
			FUNC0(portp);
		}
	}
}