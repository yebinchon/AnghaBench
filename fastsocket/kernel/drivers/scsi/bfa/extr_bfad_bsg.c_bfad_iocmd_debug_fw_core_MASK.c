#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {int /*<<< orphan*/  ioc; } ;
struct bfad_s {int /*<<< orphan*/  bfad_lock; TYPE_1__ bfa; } ;
struct bfa_bsg_debug_s {scalar_t__ bufsz; scalar_t__ offset; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 scalar_t__ BFA_DEBUG_FW_CORE_CHUNK_SZ ; 
 int /*<<< orphan*/  BFA_STATUS_EINVAL ; 
 scalar_t__ BFA_STATUS_OK ; 
 int /*<<< orphan*/  BFA_STATUS_VERSION_FAIL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (struct bfad_s*,scalar_t__) ; 
 scalar_t__ FUNC3 (unsigned int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

int
FUNC6(struct bfad_s *bfad, void *cmd,
			unsigned int payload_len)
{
	struct bfa_bsg_debug_s *iocmd = (struct bfa_bsg_debug_s *)cmd;
	void	*iocmd_bufptr;
	unsigned long	flags;
	u32 offset;

	if (FUNC3(payload_len, sizeof(struct bfa_bsg_debug_s),
			BFA_DEBUG_FW_CORE_CHUNK_SZ) != BFA_STATUS_OK) {
		iocmd->status = BFA_STATUS_VERSION_FAIL;
		return 0;
	}

	if (iocmd->bufsz < BFA_DEBUG_FW_CORE_CHUNK_SZ ||
			!FUNC0(iocmd->bufsz, sizeof(u16)) ||
			!FUNC0(iocmd->offset, sizeof(u32))) {
		FUNC2(bfad, BFA_DEBUG_FW_CORE_CHUNK_SZ);
		iocmd->status = BFA_STATUS_EINVAL;
		goto out;
	}

	iocmd_bufptr = (char *)iocmd + sizeof(struct bfa_bsg_debug_s);
	FUNC4(&bfad->bfad_lock, flags);
	offset = iocmd->offset;
	iocmd->status = FUNC1(&bfad->bfa.ioc, iocmd_bufptr,
				&offset, &iocmd->bufsz);
	iocmd->offset = offset;
	FUNC5(&bfad->bfad_lock, flags);
out:
	return 0;
}