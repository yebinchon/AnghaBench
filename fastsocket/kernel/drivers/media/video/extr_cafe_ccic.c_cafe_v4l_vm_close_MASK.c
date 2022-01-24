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
struct vm_area_struct {struct cafe_sio_buffer* vm_private_data; } ;
struct TYPE_3__ {int /*<<< orphan*/  flags; } ;
struct cafe_sio_buffer {scalar_t__ mapcount; TYPE_2__* cam; TYPE_1__ v4lbuf; } ;
struct TYPE_4__ {int /*<<< orphan*/  s_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  V4L2_BUF_FLAG_MAPPED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct vm_area_struct *vma)
{
	struct cafe_sio_buffer *sbuf = vma->vm_private_data;

	FUNC0(&sbuf->cam->s_mutex);
	sbuf->mapcount--;
	/* Docs say we should stop I/O too... */
	if (sbuf->mapcount == 0)
		sbuf->v4lbuf.flags &= ~V4L2_BUF_FLAG_MAPPED;
	FUNC1(&sbuf->cam->s_mutex);
}