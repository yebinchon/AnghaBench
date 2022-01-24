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
struct sn_irq_info {int dummy; } ;
typedef  int nasid_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct sn_irq_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct sn_irq_info*) ; 
 struct sn_irq_info* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int,int /*<<< orphan*/ ,int,int,int) ; 

struct sn_irq_info *FUNC4(nasid_t nasid, int widget, int irq,
				    nasid_t req_nasid, int slice)
{
	struct sn_irq_info *sn_irq_info;
	int status;
	int sn_irq_size = sizeof(struct sn_irq_info);

	if ((nasid & 1) == 0)
		return NULL;

	sn_irq_info = FUNC2(sn_irq_size, GFP_KERNEL);
	if (sn_irq_info == NULL)
		return NULL;

	status = FUNC3(nasid, widget, FUNC0(sn_irq_info), irq,
				  req_nasid, slice);
	if (status) {
		FUNC1(sn_irq_info);
		return NULL;
	} else {
		return sn_irq_info;
	}
}