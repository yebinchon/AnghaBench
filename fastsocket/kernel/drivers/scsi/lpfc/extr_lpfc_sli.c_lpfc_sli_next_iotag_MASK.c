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
typedef  size_t uint16_t ;
struct lpfc_sli {size_t last_iotag; size_t iocbq_lookup_len; struct lpfc_iocbq** iocbq_lookup; } ;
struct lpfc_iocbq {size_t iotag; } ;
struct lpfc_hba {int /*<<< orphan*/  hbalock; struct lpfc_sli sli; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  LOG_SLI ; 
 int LPFC_IOCBQ_LOOKUP_INCREMENT ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_iocbq**) ; 
 struct lpfc_iocbq** FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_iocbq**,struct lpfc_iocbq**,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

uint16_t
FUNC6(struct lpfc_hba *phba, struct lpfc_iocbq *iocbq)
{
	struct lpfc_iocbq **new_arr;
	struct lpfc_iocbq **old_arr;
	size_t new_len;
	struct lpfc_sli *psli = &phba->sli;
	uint16_t iotag;

	FUNC4(&phba->hbalock);
	iotag = psli->last_iotag;
	if(++iotag < psli->iocbq_lookup_len) {
		psli->last_iotag = iotag;
		psli->iocbq_lookup[iotag] = iocbq;
		FUNC5(&phba->hbalock);
		iocbq->iotag = iotag;
		return iotag;
	} else if (psli->iocbq_lookup_len < (0xffff
					   - LPFC_IOCBQ_LOOKUP_INCREMENT)) {
		new_len = psli->iocbq_lookup_len + LPFC_IOCBQ_LOOKUP_INCREMENT;
		FUNC5(&phba->hbalock);
		new_arr = FUNC1(new_len * sizeof (struct lpfc_iocbq *),
				  GFP_KERNEL);
		if (new_arr) {
			FUNC4(&phba->hbalock);
			old_arr = psli->iocbq_lookup;
			if (new_len <= psli->iocbq_lookup_len) {
				/* highly unprobable case */
				FUNC0(new_arr);
				iotag = psli->last_iotag;
				if(++iotag < psli->iocbq_lookup_len) {
					psli->last_iotag = iotag;
					psli->iocbq_lookup[iotag] = iocbq;
					FUNC5(&phba->hbalock);
					iocbq->iotag = iotag;
					return iotag;
				}
				FUNC5(&phba->hbalock);
				return 0;
			}
			if (psli->iocbq_lookup)
				FUNC3(new_arr, old_arr,
				       ((psli->last_iotag  + 1) *
					sizeof (struct lpfc_iocbq *)));
			psli->iocbq_lookup = new_arr;
			psli->iocbq_lookup_len = new_len;
			psli->last_iotag = iotag;
			psli->iocbq_lookup[iotag] = iocbq;
			FUNC5(&phba->hbalock);
			iocbq->iotag = iotag;
			FUNC0(old_arr);
			return iotag;
		}
	} else
		FUNC5(&phba->hbalock);

	FUNC2(phba, KERN_WARNING, LOG_SLI,
			"0318 Failed to allocate IOTAG.last IOTAG is %d\n",
			psli->last_iotag);

	return 0;
}