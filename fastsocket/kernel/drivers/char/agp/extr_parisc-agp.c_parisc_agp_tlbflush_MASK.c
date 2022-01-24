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
struct agp_memory {int dummy; } ;
struct _parisc_agp_info {int gart_base; scalar_t__ ioc_regs; int /*<<< orphan*/  gart_size; } ;

/* Variables and functions */
 scalar_t__ IOC_PCOM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct _parisc_agp_info parisc_agp_info ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void
FUNC3(struct agp_memory *mem)
{
	struct _parisc_agp_info *info = &parisc_agp_info;

	FUNC2(info->gart_base | FUNC0(info->gart_size), info->ioc_regs+IOC_PCOM);
	FUNC1(info->ioc_regs+IOC_PCOM);	/* flush */
}