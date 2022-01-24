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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct nvbios_init {scalar_t__ crtc; struct nouveau_subdev* subdev; } ;
struct nouveau_subdev {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nvbios_init*) ; 
 int FUNC1 (struct nouveau_subdev*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static u8
FUNC2(struct nvbios_init *init, u16 port, u8 index)
{
	struct nouveau_subdev *subdev = init->subdev;
	if (FUNC0(init)) {
		int head = init->crtc < 0 ? 0 : init->crtc;
		return FUNC1(subdev, head, port, index);
	}
	return 0x00;
}