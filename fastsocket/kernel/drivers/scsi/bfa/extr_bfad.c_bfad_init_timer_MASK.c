#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {unsigned long data; int /*<<< orphan*/  function; } ;
struct bfad_s {TYPE_1__ hal_tmo; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_TIMER_FREQ ; 
 int /*<<< orphan*/  bfad_bfa_tmo ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3(struct bfad_s *bfad)
{
	FUNC0(&bfad->hal_tmo);
	bfad->hal_tmo.function = bfad_bfa_tmo;
	bfad->hal_tmo.data = (unsigned long)bfad;

	FUNC1(&bfad->hal_tmo,
		  jiffies + FUNC2(BFA_TIMER_FREQ));
}