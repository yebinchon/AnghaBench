#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {unsigned long addr_data; int regspacing; int regsize; scalar_t__ addr; } ;
struct smi_info {int io_size; TYPE_1__ io; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int) ; 

__attribute__((used)) static void FUNC2(struct smi_info *info)
{
	unsigned long addr = info->io.addr_data;
	int           mapsize;

	if (info->io.addr) {
		FUNC0(info->io.addr);

		mapsize = ((info->io_size * info->io.regspacing)
			   - (info->io.regspacing - info->io.regsize));

		FUNC1(addr, mapsize);
	}
}