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
struct ports_device {int /*<<< orphan*/  out_vqs; int /*<<< orphan*/  in_vqs; TYPE_2__* vdev; } ;
struct TYPE_4__ {TYPE_1__* config; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* del_vqs ) (TYPE_2__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC2(struct ports_device *portdev)
{
	portdev->vdev->config->del_vqs(portdev->vdev);
	FUNC0(portdev->in_vqs);
	FUNC0(portdev->out_vqs);
}