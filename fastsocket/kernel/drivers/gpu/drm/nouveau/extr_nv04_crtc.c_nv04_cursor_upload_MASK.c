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
typedef  int uint32_t ;
struct nouveau_bo {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct nouveau_bo*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_bo*,int,int) ; 
 int FUNC2 (struct drm_device*) ; 

__attribute__((used)) static void FUNC3(struct drm_device *dev, struct nouveau_bo *src,
			       struct nouveau_bo *dst)
{
	int width = FUNC2(dev);
	uint32_t pixel;
	int i, j;

	for (i = 0; i < width; i++) {
		for (j = 0; j < width; j++) {
			pixel = FUNC0(src, i*64 + j);

			FUNC1(dst, i*width + j, (pixel & 0x80000000) >> 16
				     | (pixel & 0xf80000) >> 9
				     | (pixel & 0xf800) >> 6
				     | (pixel & 0xf8) >> 3);
		}
	}
}