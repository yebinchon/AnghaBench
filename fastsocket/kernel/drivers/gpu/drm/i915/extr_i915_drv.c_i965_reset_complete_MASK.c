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
struct drm_device {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int GRDOM_RESET_ENABLE ; 
 int /*<<< orphan*/  I965_GDRST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC1(struct drm_device *dev)
{
	u8 gdrst;
	FUNC0(dev->pdev, I965_GDRST, &gdrst);
	return (gdrst & GRDOM_RESET_ENABLE) == 0;
}