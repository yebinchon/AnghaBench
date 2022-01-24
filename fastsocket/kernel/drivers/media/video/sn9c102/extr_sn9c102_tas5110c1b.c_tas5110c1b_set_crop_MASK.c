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
typedef  int u8 ;
struct v4l2_rect {scalar_t__ top; scalar_t__ left; } ;
struct TYPE_3__ {scalar_t__ top; scalar_t__ left; } ;
struct TYPE_4__ {TYPE_1__ bounds; } ;
struct sn9c102_sensor {TYPE_2__ cropcap; } ;
struct sn9c102_device {int dummy; } ;

/* Variables and functions */
 struct sn9c102_sensor* FUNC0 (struct sn9c102_device*) ; 
 int FUNC1 (struct sn9c102_device*,int) ; 
 scalar_t__ FUNC2 (struct sn9c102_device*,int,int) ; 

__attribute__((used)) static int FUNC3(struct sn9c102_device* cam,
			       const struct v4l2_rect* rect)
{
	struct sn9c102_sensor* s = FUNC0(cam);
	int err = 0;
	u8 h_start = (u8)(rect->left - s->cropcap.bounds.left) + 69,
	   v_start = (u8)(rect->top - s->cropcap.bounds.top) + 9;

	err += FUNC2(cam, h_start, 0x12);
	err += FUNC2(cam, v_start, 0x13);

	/* Don't change ! */
	err += FUNC2(cam, 0x14, 0x1a);
	err += FUNC2(cam, 0x0a, 0x1b);
	err += FUNC2(cam, FUNC1(cam, 0x19), 0x19);

	return err;
}