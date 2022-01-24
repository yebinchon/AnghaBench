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
struct fc_disc {int /*<<< orphan*/  rports; int /*<<< orphan*/  disc_mutex; int /*<<< orphan*/  disc_work; } ;
struct fc_lport {struct fc_disc disc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fc_disc_timeout ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct fc_lport *lport)
{
	struct fc_disc *disc = &lport->disc;

	FUNC0(&disc->disc_work, fc_disc_timeout);
	FUNC2(&disc->disc_mutex);
	FUNC1(&disc->rports);
}