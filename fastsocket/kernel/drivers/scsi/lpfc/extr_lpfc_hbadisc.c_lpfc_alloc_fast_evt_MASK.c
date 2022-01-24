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
struct lpfc_hba {int /*<<< orphan*/  fast_event_count; } ;
struct TYPE_2__ {int /*<<< orphan*/  evt; int /*<<< orphan*/  evt_listp; } ;
struct lpfc_fast_path_event {TYPE_1__ work_evt; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LPFC_EVT_FASTPATH_MGMT_EVT ; 
 scalar_t__ LPFC_MAX_EVT_COUNT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 struct lpfc_fast_path_event* FUNC3 (int,int /*<<< orphan*/ ) ; 

struct lpfc_fast_path_event *
FUNC4(struct lpfc_hba *phba) {
	struct lpfc_fast_path_event *ret;

	/* If there are lot of fast event do not exhaust memory due to this */
	if (FUNC2(&phba->fast_event_count) > LPFC_MAX_EVT_COUNT)
		return NULL;

	ret = FUNC3(sizeof(struct lpfc_fast_path_event),
			GFP_ATOMIC);
	if (ret) {
		FUNC1(&phba->fast_event_count);
		FUNC0(&ret->work_evt.evt_listp);
		ret->work_evt.evt = LPFC_EVT_FASTPATH_MGMT_EVT;
	}
	return ret;
}