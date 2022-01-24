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
struct sun4v_error_entry {int err_attrs; int /*<<< orphan*/  err_cpu; int /*<<< orphan*/  err_size; int /*<<< orphan*/  err_raddr; int /*<<< orphan*/  err_type; int /*<<< orphan*/  err_stick; int /*<<< orphan*/  err_handle; } ;
struct pt_regs {int dummy; } ;
typedef  int /*<<< orphan*/  atomic_t ;

/* Variables and functions */
 int SUN4V_ERR_ATTRS_FPU_REGISTERS ; 
 int SUN4V_ERR_ATTRS_INT_REGISTERS ; 
 int SUN4V_ERR_ATTRS_MEMORY ; 
 int SUN4V_ERR_ATTRS_PIO ; 
 int SUN4V_ERR_ATTRS_PRIV_MODE ; 
 int SUN4V_ERR_ATTRS_PROCESSOR ; 
 int SUN4V_ERR_ATTRS_RES_QUEUE_FULL ; 
 int SUN4V_ERR_ATTRS_USER_MODE ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6(struct pt_regs *regs, struct sun4v_error_entry *ent, int cpu, const char *pfx, atomic_t *ocnt)
{
	int cnt;

	FUNC2("%s: Reporting on cpu %d\n", pfx, cpu);
	FUNC2("%s: err_handle[%llx] err_stick[%llx] err_type[%08x:%s]\n",
	       pfx,
	       ent->err_handle, ent->err_stick,
	       ent->err_type,
	       FUNC4(ent->err_type));
	FUNC2("%s: err_attrs[%08x:%s %s %s %s %s %s %s %s]\n",
	       pfx,
	       ent->err_attrs,
	       ((ent->err_attrs & SUN4V_ERR_ATTRS_PROCESSOR) ?
		"processor" : ""),
	       ((ent->err_attrs & SUN4V_ERR_ATTRS_MEMORY) ?
		"memory" : ""),
	       ((ent->err_attrs & SUN4V_ERR_ATTRS_PIO) ?
		"pio" : ""),
	       ((ent->err_attrs & SUN4V_ERR_ATTRS_INT_REGISTERS) ?
		"integer-regs" : ""),
	       ((ent->err_attrs & SUN4V_ERR_ATTRS_FPU_REGISTERS) ?
		"fpu-regs" : ""),
	       ((ent->err_attrs & SUN4V_ERR_ATTRS_USER_MODE) ?
		"user" : ""),
	       ((ent->err_attrs & SUN4V_ERR_ATTRS_PRIV_MODE) ?
		"privileged" : ""),
	       ((ent->err_attrs & SUN4V_ERR_ATTRS_RES_QUEUE_FULL) ?
		"queue-full" : ""));
	FUNC2("%s: err_raddr[%016llx] err_size[%u] err_cpu[%u]\n",
	       pfx,
	       ent->err_raddr, ent->err_size, ent->err_cpu);

	FUNC3(regs);

	if ((cnt = FUNC0(ocnt)) != 0) {
		FUNC1(ocnt, 0);
		FUNC5();
		FUNC2("%s: Queue overflowed %d times.\n",
		       pfx, cnt);
	}
}