#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_4__ {char* ptr; int Status; } ;
struct scsi_cmnd {TYPE_2__ SCp; TYPE_1__* device; } ;
struct bfad_s {int /*<<< orphan*/  bfad_lock; } ;
struct bfad_itnim_s {int dummy; } ;
struct bfad_im_port_s {struct bfad_s* bfad; } ;
struct Scsi_Host {scalar_t__* hostdata; } ;
typedef  enum bfi_tskim_status { ____Placeholder_bfi_tskim_status } bfi_tskim_status ;
struct TYPE_3__ {struct Scsi_Host* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct bfad_s*,int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ BFA_STATUS_OK ; 
 int BFI_TSKIM_STS_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FAILED ; 
 int /*<<< orphan*/  IO_DONE_BIT ; 
 int /*<<< orphan*/  KERN_ERR ; 
 scalar_t__ MAX_FCP_TARGET ; 
 int SUCCESS ; 
 int /*<<< orphan*/  bfa_log_level ; 
 struct bfad_itnim_s* FUNC2 (struct bfad_im_port_s*,scalar_t__) ; 
 scalar_t__ FUNC3 (struct bfad_s*,struct scsi_cmnd*,struct bfad_itnim_s*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wq ; 

__attribute__((used)) static int
FUNC8(struct scsi_cmnd *cmnd)
{
	struct Scsi_Host *shost = cmnd->device->host;
	struct bfad_im_port_s *im_port =
				(struct bfad_im_port_s *) shost->hostdata[0];
	struct bfad_s         *bfad = im_port->bfad;
	struct bfad_itnim_s   *itnim;
	unsigned long   flags;
	u32        i, rc, err_cnt = 0;
	FUNC1(wq);
	enum bfi_tskim_status task_status;

	FUNC4(&bfad->bfad_lock, flags);
	for (i = 0; i < MAX_FCP_TARGET; i++) {
		itnim = FUNC2(im_port, i);
		if (itnim) {
			cmnd->SCp.ptr = (char *)&wq;
			rc = FUNC3(bfad, cmnd, itnim);
			if (rc != BFA_STATUS_OK) {
				err_cnt++;
				continue;
			}

			/* wait target reset to complete */
			FUNC5(&bfad->bfad_lock, flags);
			FUNC7(wq, FUNC6(IO_DONE_BIT,
					(unsigned long *)&cmnd->SCp.Status));
			FUNC4(&bfad->bfad_lock, flags);

			task_status = cmnd->SCp.Status >> 1;
			if (task_status != BFI_TSKIM_STS_OK) {
				FUNC0(KERN_ERR, bfad, bfa_log_level,
					"target reset failure,"
					" status: %d\n", task_status);
				err_cnt++;
			}
		}
	}
	FUNC5(&bfad->bfad_lock, flags);

	if (err_cnt)
		return FAILED;

	return SUCCESS;
}