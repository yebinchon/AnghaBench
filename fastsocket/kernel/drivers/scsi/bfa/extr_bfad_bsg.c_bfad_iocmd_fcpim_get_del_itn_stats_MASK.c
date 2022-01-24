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
struct bfad_s {int /*<<< orphan*/  bfad_lock; int /*<<< orphan*/  bfa; } ;
struct bfa_fcpim_s {int /*<<< orphan*/  del_itn_stats; } ;
struct bfa_fcpim_del_itn_stats_s {int dummy; } ;
struct bfa_bsg_fcpim_del_itn_stats_s {int /*<<< orphan*/  status; int /*<<< orphan*/  modstats; } ;

/* Variables and functions */
 struct bfa_fcpim_s* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  BFA_STATUS_OK ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

int
FUNC4(struct bfad_s *bfad, void *cmd)
{
	struct bfa_bsg_fcpim_del_itn_stats_s *iocmd =
			(struct bfa_bsg_fcpim_del_itn_stats_s *)cmd;
	struct bfa_fcpim_s *fcpim = FUNC0(&bfad->bfa);
	unsigned long	flags;

	FUNC2(&bfad->bfad_lock, flags);
	FUNC1((void *)&iocmd->modstats, (void *)&fcpim->del_itn_stats,
		sizeof(struct bfa_fcpim_del_itn_stats_s));
	FUNC3(&bfad->bfad_lock, flags);

	iocmd->status = BFA_STATUS_OK;
	return 0;
}