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
struct fc_lport {int /*<<< orphan*/  e_d_tov; } ;
struct fc_frame {int dummy; } ;
struct fc_disc {scalar_t__ retry_count; scalar_t__ pending; int /*<<< orphan*/  disc_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  DISC_EV_FAILED ; 
 int /*<<< orphan*/  FUNC0 (struct fc_disc*,char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FC_DISC_RETRY_DELAY ; 
 scalar_t__ FC_DISC_RETRY_LIMIT ; 
 int /*<<< orphan*/  FC_EX_CLOSED ; 
 int /*<<< orphan*/  FC_EX_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC2 (struct fc_disc*,int /*<<< orphan*/ ) ; 
 struct fc_lport* FUNC3 (struct fc_disc*) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct fc_disc *disc, struct fc_frame *fp)
{
	struct fc_lport *lport = FUNC3(disc);
	unsigned long delay = 0;

	FUNC0(disc, "Error %ld, retries %d/%d\n",
		    FUNC1(fp), disc->retry_count,
		    FC_DISC_RETRY_LIMIT);

	if (!fp || FUNC1(fp) == -FC_EX_TIMEOUT) {
		/*
		 * Memory allocation failure, or the exchange timed out,
		 * retry after delay.
		 */
		if (disc->retry_count < FC_DISC_RETRY_LIMIT) {
			/* go ahead and retry */
			if (!fp)
				delay = FUNC4(FC_DISC_RETRY_DELAY);
			else {
				delay = FUNC4(lport->e_d_tov);

				/* timeout faster first time */
				if (!disc->retry_count)
					delay /= 4;
			}
			disc->retry_count++;
			FUNC5(&disc->disc_work, delay);
		} else
			FUNC2(disc, DISC_EV_FAILED);
	} else if (FUNC1(fp) == -FC_EX_CLOSED) {
		/*
		 * if discovery fails due to lport reset, clear
		 * pending flag so that subsequent discovery can
		 * continue
		 */
		disc->pending = 0;
	}
}