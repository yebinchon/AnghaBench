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
struct iwl_drv {int dummy; } ;
struct fw_img {int /*<<< orphan*/ * sec; } ;

/* Variables and functions */
 int IWL_UCODE_SECTION_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_drv*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct iwl_drv *drv, struct fw_img *img)
{
	int i;
	for (i = 0; i < IWL_UCODE_SECTION_MAX; i++)
		FUNC0(drv, &img->sec[i]);
}