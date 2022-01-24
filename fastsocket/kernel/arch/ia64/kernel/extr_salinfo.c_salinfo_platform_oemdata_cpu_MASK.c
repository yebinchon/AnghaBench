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
struct salinfo_platform_oemdata_parms {int /*<<< orphan*/  oemdata_size; int /*<<< orphan*/  oemdata; int /*<<< orphan*/  efi_guid; int /*<<< orphan*/  ret; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(void *context)
{
	struct salinfo_platform_oemdata_parms *parms = context;
	parms->ret = FUNC0(parms->efi_guid, parms->oemdata, parms->oemdata_size);
}