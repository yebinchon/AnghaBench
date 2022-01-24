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
typedef  int uint8_t ;
struct nouveau_device {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_device*,int) ; 
 scalar_t__ NV_PRMCIO_ARX ; 
 scalar_t__ NV_PRMCIO_AR__READ ; 
 scalar_t__ NV_PRMCIO_INP0__COLOR ; 
 int NV_PRMCIO_SIZE ; 
 struct nouveau_device* FUNC1 (struct drm_device*) ; 
 int FUNC2 (struct nouveau_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct nouveau_device*,scalar_t__,int) ; 

__attribute__((used)) static inline uint8_t FUNC4(struct drm_device *dev,
					int head, uint8_t index)
{
	struct nouveau_device *device = FUNC1(dev);
	uint8_t val;
	if (FUNC0(dev, head))
		index &= ~0x20;
	else
		index |= 0x20;

	FUNC2(device, NV_PRMCIO_INP0__COLOR + head * NV_PRMCIO_SIZE);
	FUNC3(device, NV_PRMCIO_ARX + head * NV_PRMCIO_SIZE, index);
	val = FUNC2(device, NV_PRMCIO_AR__READ + head * NV_PRMCIO_SIZE);
	return val;
}