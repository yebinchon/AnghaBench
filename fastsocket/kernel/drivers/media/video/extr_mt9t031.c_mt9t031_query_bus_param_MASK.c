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
 int /*<<< orphan*/  MT9T031_BUS_PARAM ; 
 unsigned long FUNC0 (struct soc_camera_link*,int /*<<< orphan*/ ) ; 
 struct soc_camera_link* FUNC1 (struct soc_camera_device*) ; 

__attribute__((used)) static unsigned long FUNC2(struct soc_camera_device *icd)
{
	struct soc_camera_link *icl = FUNC1(icd);

	return FUNC0(icl, MT9T031_BUS_PARAM);
}