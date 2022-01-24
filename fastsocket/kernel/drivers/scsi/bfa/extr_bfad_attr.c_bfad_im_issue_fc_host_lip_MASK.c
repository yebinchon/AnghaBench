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
typedef  scalar_t__ uint32_t ;
struct TYPE_3__ {int /*<<< orphan*/  port; } ;
struct TYPE_4__ {TYPE_1__ modules; } ;
struct bfad_s {int /*<<< orphan*/  bfad_lock; TYPE_2__ bfa; } ;
struct bfad_im_port_s {struct bfad_s* bfad; } ;
struct bfad_hal_comp {scalar_t__ status; int /*<<< orphan*/  comp; } ;
struct Scsi_Host {scalar_t__* hostdata; } ;

/* Variables and functions */
 scalar_t__ BFA_STATUS_OK ; 
 int EIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct bfad_hal_comp*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct bfad_hal_comp*) ; 
 int /*<<< orphan*/  bfad_hcb_comp ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int
FUNC6(struct Scsi_Host *shost)
{
	struct bfad_im_port_s *im_port =
			(struct bfad_im_port_s *) shost->hostdata[0];
	struct bfad_s *bfad = im_port->bfad;
	struct bfad_hal_comp fcomp;
	unsigned long flags;
	uint32_t status;

	FUNC2(&fcomp.comp);
	FUNC3(&bfad->bfad_lock, flags);
	status = FUNC0(&bfad->bfa.modules.port,
					bfad_hcb_comp, &fcomp);
	FUNC4(&bfad->bfad_lock, flags);

	if (status != BFA_STATUS_OK)
		return -EIO;

	FUNC5(&fcomp.comp);
	if (fcomp.status != BFA_STATUS_OK)
		return -EIO;

	FUNC3(&bfad->bfad_lock, flags);
	status = FUNC1(&bfad->bfa.modules.port,
					bfad_hcb_comp, &fcomp);
	FUNC4(&bfad->bfad_lock, flags);
	if (status != BFA_STATUS_OK)
		return -EIO;

	FUNC5(&fcomp.comp);
	if (fcomp.status != BFA_STATUS_OK)
		return -EIO;

	return 0;
}