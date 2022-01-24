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
struct soc_camera_link {int dummy; } ;
struct soc_camera_device {int dummy; } ;

/* Variables and functions */
 unsigned long SOCAM_DATAWIDTH_8 ; 
 unsigned long SOCAM_DATA_ACTIVE_HIGH ; 
 unsigned long SOCAM_HSYNC_ACTIVE_HIGH ; 
 unsigned long SOCAM_MASTER ; 
 unsigned long SOCAM_PCLK_SAMPLE_RISING ; 
 unsigned long SOCAM_VSYNC_ACTIVE_HIGH ; 
 unsigned long FUNC0 (struct soc_camera_link*,unsigned long) ; 
 struct soc_camera_link* FUNC1 (struct soc_camera_device*) ; 

__attribute__((used)) static unsigned long FUNC2(struct soc_camera_device *icd)
{
	struct soc_camera_link *icl = FUNC1(icd);
	unsigned long flags = SOCAM_MASTER | SOCAM_PCLK_SAMPLE_RISING |
		SOCAM_HSYNC_ACTIVE_HIGH | SOCAM_VSYNC_ACTIVE_HIGH |
		SOCAM_DATA_ACTIVE_HIGH | SOCAM_DATAWIDTH_8;

	return FUNC0(icl, flags);
}