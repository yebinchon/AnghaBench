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
struct stp_irq_parm {int dummy; } ;
struct etr_irq_parm {int dummy; } ;
typedef  int /*<<< orphan*/  __u16 ;
struct TYPE_2__ {int ext_params; } ;

/* Variables and functions */
 TYPE_1__ S390_lowcore ; 
 int /*<<< orphan*/  FUNC0 (struct etr_irq_parm*) ; 
 int /*<<< orphan*/  FUNC1 (struct stp_irq_parm*) ; 

__attribute__((used)) static void FUNC2(__u16 code)
{
	if (S390_lowcore.ext_params & 0x00c40000)
		FUNC0((struct etr_irq_parm *)
				 &S390_lowcore.ext_params);
	if (S390_lowcore.ext_params & 0x00038000)
		FUNC1((struct stp_irq_parm *)
				 &S390_lowcore.ext_params);
}