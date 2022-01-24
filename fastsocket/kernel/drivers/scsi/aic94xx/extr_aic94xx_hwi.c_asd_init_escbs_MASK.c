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
struct asd_seq_data {int num_escbs; int num_edbs; int pending; int can_queue; } ;
struct TYPE_2__ {int num_phys; int max_scbs; } ;
struct asd_ha_struct {TYPE_1__ hw_prof; struct asd_seq_data seq; } ;

/* Variables and functions */
 int ASD_EDBS_PER_SCB ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct asd_ha_struct*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct asd_ha_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct asd_ha_struct*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(struct asd_ha_struct *asd_ha)
{
	struct asd_seq_data *seq = &asd_ha->seq;
	int err = 0;

	/* Allocate two empty data buffers (edb) per sequencer. */
	int edbs = 2*(1+asd_ha->hw_prof.num_phys);

	seq->num_escbs = (edbs+ASD_EDBS_PER_SCB-1)/ASD_EDBS_PER_SCB;
	seq->num_edbs = seq->num_escbs * ASD_EDBS_PER_SCB;

	err = FUNC0(asd_ha, GFP_KERNEL);
	if (err) {
		FUNC3("couldn't allocate edbs\n");
		return err;
	}

	err = FUNC1(asd_ha, GFP_KERNEL);
	if (err) {
		FUNC3("couldn't allocate escbs\n");
		return err;
	}

	FUNC2(asd_ha);
	/* In order to insure that normal SCBs do not overfill sequencer
	 * memory and leave no space for escbs (halting condition),
	 * we increment pending here by the number of escbs.  However,
	 * escbs are never pending.
	 */
	seq->pending   = seq->num_escbs;
	seq->can_queue = 1 + (asd_ha->hw_prof.max_scbs - seq->pending)/2;

	return 0;
}