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
struct nouveau_device {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ NV_PRMCIO_ARX ; 
 scalar_t__ NV_PRMCIO_INP0__COLOR ; 
 int NV_PRMCIO_SIZE ; 
 struct nouveau_device* FUNC0 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_device*,scalar_t__,int) ; 

__attribute__((used)) static inline void FUNC3(struct drm_device *dev, int head, bool enable)
{
	struct nouveau_device *device = FUNC0(dev);
	FUNC1(device, NV_PRMCIO_INP0__COLOR + head * NV_PRMCIO_SIZE);
	FUNC2(device, NV_PRMCIO_ARX + head * NV_PRMCIO_SIZE, enable ? 0 : 0x20);
}