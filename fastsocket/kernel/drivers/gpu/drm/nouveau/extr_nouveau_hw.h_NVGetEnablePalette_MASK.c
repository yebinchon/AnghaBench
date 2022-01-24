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
 int FUNC1 (struct nouveau_device*,scalar_t__) ; 

__attribute__((used)) static inline bool FUNC2(struct drm_device *dev, int head)
{
	struct nouveau_device *device = FUNC0(dev);
	FUNC1(device, NV_PRMCIO_INP0__COLOR + head * NV_PRMCIO_SIZE);
	return !(FUNC1(device, NV_PRMCIO_ARX + head * NV_PRMCIO_SIZE) & 0x20);
}