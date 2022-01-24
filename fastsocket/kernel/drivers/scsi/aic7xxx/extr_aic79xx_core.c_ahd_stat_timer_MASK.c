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
struct ahd_softc {int hs_mailbox; scalar_t__ cmdcmplt_total; scalar_t__ int_coalescing_threshold; scalar_t__ int_coalescing_stop_threshold; int cmdcmplt_bucket; int* cmdcmplt_counts; int /*<<< orphan*/  stat_timer; } ;

/* Variables and functions */
 int AHD_SHOW_INT_COALESCING ; 
 int AHD_STAT_BUCKETS ; 
 int /*<<< orphan*/  AHD_STAT_UPDATE_US ; 
 int ENINT_COALESCE ; 
 int ahd_debug ; 
 int /*<<< orphan*/  FUNC0 (struct ahd_softc*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ahd_softc*,int /*<<< orphan*/ *) ; 
 char* FUNC2 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct ahd_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*,scalar_t__) ; 

__attribute__((used)) static void
FUNC6(void *arg)
{
	struct	ahd_softc *ahd = arg;
	u_long	s;
	int	enint_coal;
	
	FUNC1(ahd, &s);

	enint_coal = ahd->hs_mailbox & ENINT_COALESCE;
	if (ahd->cmdcmplt_total > ahd->int_coalescing_threshold)
		enint_coal |= ENINT_COALESCE;
	else if (ahd->cmdcmplt_total < ahd->int_coalescing_stop_threshold)
		enint_coal &= ~ENINT_COALESCE;

	if (enint_coal != (ahd->hs_mailbox & ENINT_COALESCE)) {
		FUNC0(ahd, enint_coal);
#ifdef AHD_DEBUG
		if ((ahd_debug & AHD_SHOW_INT_COALESCING) != 0)
			printf("%s: Interrupt coalescing "
			       "now %sabled. Cmds %d\n",
			       ahd_name(ahd),
			       (enint_coal & ENINT_COALESCE) ? "en" : "dis",
			       ahd->cmdcmplt_total);
#endif
	}

	ahd->cmdcmplt_bucket = (ahd->cmdcmplt_bucket+1) & (AHD_STAT_BUCKETS-1);
	ahd->cmdcmplt_total -= ahd->cmdcmplt_counts[ahd->cmdcmplt_bucket];
	ahd->cmdcmplt_counts[ahd->cmdcmplt_bucket] = 0;
	FUNC3(&ahd->stat_timer, AHD_STAT_UPDATE_US,
			ahd_stat_timer, ahd);
	FUNC4(ahd, &s);
}