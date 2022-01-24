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
struct lpfc_nodelist {int /*<<< orphan*/  nlp_portname; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,void*,int) ; 

__attribute__((used)) static int
FUNC1(struct lpfc_nodelist *ndlp, void *param)
{
	return FUNC0(&ndlp->nlp_portname, param,
		      sizeof(ndlp->nlp_portname)) == 0;
}