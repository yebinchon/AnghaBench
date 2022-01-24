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
struct fc_lport {int /*<<< orphan*/  ema_list; } ;
struct fc_exch_mgr_anchor {int (* match ) (struct fc_frame*) ;int /*<<< orphan*/  ema_list; struct fc_exch_mgr* mp; } ;
struct fc_exch_mgr {int /*<<< orphan*/  kref; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct fc_exch_mgr_anchor* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

struct fc_exch_mgr_anchor *FUNC3(struct fc_lport *lport,
					   struct fc_exch_mgr *mp,
					   bool (*match)(struct fc_frame *))
{
	struct fc_exch_mgr_anchor *ema;

	ema = FUNC0(sizeof(*ema), GFP_ATOMIC);
	if (!ema)
		return ema;

	ema->mp = mp;
	ema->match = match;
	/* add EM anchor to EM anchors list */
	FUNC2(&ema->ema_list, &lport->ema_list);
	FUNC1(&mp->kref);
	return ema;
}