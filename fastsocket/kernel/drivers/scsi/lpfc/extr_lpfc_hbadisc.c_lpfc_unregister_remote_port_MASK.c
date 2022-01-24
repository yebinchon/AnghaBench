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
struct lpfc_nodelist {int /*<<< orphan*/  nlp_DID; int /*<<< orphan*/  vport; int /*<<< orphan*/  nlp_type; int /*<<< orphan*/  nlp_flag; struct fc_rport* rport; } ;
struct fc_rport {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  LOG_NODE ; 
 int /*<<< orphan*/  LPFC_DISC_TRC_RPORT ; 
 int /*<<< orphan*/  FUNC0 (struct fc_rport*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct fc_rport*) ; 

__attribute__((used)) static void
FUNC3(struct lpfc_nodelist *ndlp)
{
	struct fc_rport *rport = ndlp->rport;

	FUNC1(ndlp->vport, LPFC_DISC_TRC_RPORT,
		"rport delete:    did:x%x flg:x%x type x%x",
		ndlp->nlp_DID, ndlp->nlp_flag, ndlp->nlp_type);

	FUNC2(ndlp->vport, KERN_INFO, LOG_NODE,
			 "3184 rport unregister x%06x, rport %p\n",
			 ndlp->nlp_DID, rport);

	FUNC0(rport);

	return;
}