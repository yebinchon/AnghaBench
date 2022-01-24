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
struct iwl_firmware_pieces {int dummy; } ;
struct TYPE_4__ {TYPE_1__* img; } ;
struct iwl_drv {TYPE_2__ fw; } ;
typedef  enum iwl_ucode_type { ____Placeholder_iwl_ucode_type } iwl_ucode_type ;
struct TYPE_3__ {int /*<<< orphan*/ * sec; } ;

/* Variables and functions */
 int ENOMEM ; 
 int IWL_UCODE_SECTION_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_firmware_pieces*,int,int) ; 
 scalar_t__ FUNC1 (struct iwl_firmware_pieces*,int,int) ; 
 scalar_t__ FUNC2 (struct iwl_drv*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct iwl_drv *drv,
			   struct iwl_firmware_pieces *pieces,
			   enum iwl_ucode_type type)
{
	int i;
	for (i = 0;
	     i < IWL_UCODE_SECTION_MAX && FUNC1(pieces, type, i);
	     i++)
		if (FUNC2(drv, &(drv->fw.img[type].sec[i]),
				      FUNC0(pieces, type, i)))
			return -ENOMEM;
	return 0;
}