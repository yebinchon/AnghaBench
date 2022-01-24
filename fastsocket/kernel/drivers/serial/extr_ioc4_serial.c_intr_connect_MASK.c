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
typedef  int /*<<< orphan*/  uint32_t ;
struct ioc4_soft {TYPE_1__* is_intr_type; } ;
struct ioc4_intr_info {void* sd_info; int /*<<< orphan*/ * sd_intr; int /*<<< orphan*/  sd_bits; } ;
typedef  int /*<<< orphan*/  ioc4_intr_func_f ;
struct TYPE_2__ {struct ioc4_intr_info* is_intr_info; int /*<<< orphan*/  is_num_intrs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int IOC4_OTHER_INTR_TYPE ; 
 int IOC4_SIO_INTR_TYPE ; 
 int MAX_IOC4_INTR_ENTS ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static void
FUNC3(struct ioc4_soft *soft, int type,
		  uint32_t intrbits, ioc4_intr_func_f * intr, void *info)
{
	int i;
	struct ioc4_intr_info *intr_ptr;

	FUNC0(!((type == IOC4_SIO_INTR_TYPE)
	       || (type == IOC4_OTHER_INTR_TYPE)));

	i = FUNC1(&soft-> is_intr_type[type].is_num_intrs) - 1;
	FUNC0(!(i < MAX_IOC4_INTR_ENTS || (FUNC2("i %d\n", i), 0)));

	/* Save off the lower level interrupt handler */
	intr_ptr = &soft->is_intr_type[type].is_intr_info[i];
	intr_ptr->sd_bits = intrbits;
	intr_ptr->sd_intr = intr;
	intr_ptr->sd_info = info;
}