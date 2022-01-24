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
struct bfad_hal_comp {scalar_t__ status; int /*<<< orphan*/  comp; } ;
struct bfa_bsg_flash_s {scalar_t__ status; int /*<<< orphan*/  bufsz; int /*<<< orphan*/  instance; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ BFA_STATUS_OK ; 
 scalar_t__ BFA_STATUS_VERSION_FAIL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bfad_hal_comp*) ; 
 scalar_t__ FUNC2 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bfad_hcb_comp ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int
FUNC7(struct bfad_s *bfad, void *cmd,
			unsigned int payload_len)
{
	struct bfa_bsg_flash_s *iocmd = (struct bfa_bsg_flash_s *)cmd;
	struct bfad_hal_comp fcomp;
	void	*iocmd_bufptr;
	unsigned long	flags;

	if (FUNC2(payload_len,
			sizeof(struct bfa_bsg_flash_s),
			iocmd->bufsz) != BFA_STATUS_OK) {
		iocmd->status = BFA_STATUS_VERSION_FAIL;
		return 0;
	}

	iocmd_bufptr = (char *)iocmd + sizeof(struct bfa_bsg_flash_s);

	FUNC3(&fcomp.comp);
	FUNC4(&bfad->bfad_lock, flags);
	iocmd->status = FUNC1(FUNC0(&bfad->bfa), iocmd->type,
				iocmd->instance, iocmd_bufptr, iocmd->bufsz, 0,
				bfad_hcb_comp, &fcomp);
	FUNC5(&bfad->bfad_lock, flags);
	if (iocmd->status != BFA_STATUS_OK)
		goto out;
	FUNC6(&fcomp.comp);
	iocmd->status = fcomp.status;
out:
	return 0;
}