#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  sizeimage; } ;
struct TYPE_5__ {TYPE_4__ pix; } ;
struct TYPE_6__ {TYPE_1__ fmt; } ;
struct vpfe_device {TYPE_3__* next_frm; TYPE_3__* cur_frm; TYPE_2__ fmt; } ;
struct timeval {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  done; int /*<<< orphan*/  size; int /*<<< orphan*/  state; struct timeval ts; } ;

/* Variables and functions */
 int /*<<< orphan*/  VIDEOBUF_DONE ; 
 int /*<<< orphan*/  FUNC0 (struct timeval*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct vpfe_device *vpfe_dev)
{
	struct timeval timevalue;

	FUNC0(&timevalue);
	vpfe_dev->cur_frm->ts = timevalue;
	vpfe_dev->cur_frm->state = VIDEOBUF_DONE;
	vpfe_dev->cur_frm->size = vpfe_dev->fmt.fmt.pix.sizeimage;
	FUNC1(&vpfe_dev->cur_frm->done);
	vpfe_dev->cur_frm = vpfe_dev->next_frm;
}