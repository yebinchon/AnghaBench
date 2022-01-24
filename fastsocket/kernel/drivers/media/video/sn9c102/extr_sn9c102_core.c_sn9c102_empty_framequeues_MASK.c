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
typedef  size_t u32 ;
struct sn9c102_device {TYPE_2__* frame; int /*<<< orphan*/  outqueue; int /*<<< orphan*/  inqueue; } ;
struct TYPE_3__ {scalar_t__ bytesused; } ;
struct TYPE_4__ {TYPE_1__ buf; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  F_UNUSED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 size_t SN9C102_MAX_FRAMES ; 

__attribute__((used)) static void FUNC1(struct sn9c102_device* cam)
{
	u32 i;

	FUNC0(&cam->inqueue);
	FUNC0(&cam->outqueue);

	for (i = 0; i < SN9C102_MAX_FRAMES; i++) {
		cam->frame[i].state = F_UNUSED;
		cam->frame[i].buf.bytesused = 0;
	}
}