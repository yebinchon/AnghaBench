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
struct bfa_bsg_bbcr_enable_s {int status; int /*<<< orphan*/  bb_scn; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_FALSE ; 
 int /*<<< orphan*/  BFA_TRUE ; 
 int EINVAL ; 
 unsigned int IOCMD_PORT_BBCR_DISABLE ; 
 unsigned int IOCMD_PORT_BBCR_ENABLE ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

int
FUNC3(struct bfad_s *bfad, unsigned int cmd, void *pcmd)
{
	struct bfa_bsg_bbcr_enable_s *iocmd =
			(struct bfa_bsg_bbcr_enable_s *)pcmd;
	unsigned long flags;
	int rc;

	FUNC1(&bfad->bfad_lock, flags);
	if (cmd == IOCMD_PORT_BBCR_ENABLE)
		rc = FUNC0(&bfad->bfa, BFA_TRUE, iocmd->bb_scn);
	else if (cmd == IOCMD_PORT_BBCR_DISABLE)
		rc = FUNC0(&bfad->bfa, BFA_FALSE, 0);
	else {
		FUNC2(&bfad->bfad_lock, flags);
		return -EINVAL;
	}
	FUNC2(&bfad->bfad_lock, flags);

	iocmd->status = rc;
	return 0;
}