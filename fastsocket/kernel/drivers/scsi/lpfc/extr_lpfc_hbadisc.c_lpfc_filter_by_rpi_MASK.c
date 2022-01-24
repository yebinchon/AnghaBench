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
typedef  scalar_t__ uint16_t ;
struct lpfc_nodelist {scalar_t__ nlp_rpi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lpfc_nodelist*) ; 

__attribute__((used)) static int
FUNC1(struct lpfc_nodelist *ndlp, void *param)
{
	uint16_t *rpi = param;

	/* check for active node */
	if (!FUNC0(ndlp))
		return 0;

	return ndlp->nlp_rpi == *rpi;
}