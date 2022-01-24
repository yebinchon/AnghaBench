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
struct smi_info {scalar_t__ interrupt_disabled; scalar_t__ irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct smi_info*) ; 

__attribute__((used)) static inline void FUNC1(struct smi_info *smi_info)
{
	if ((smi_info->irq) && (smi_info->interrupt_disabled)) {
		FUNC0(smi_info);
		smi_info->interrupt_disabled = 0;
	}
}