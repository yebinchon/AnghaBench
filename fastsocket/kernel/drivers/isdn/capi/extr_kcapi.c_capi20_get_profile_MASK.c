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
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct capi_profile {int /*<<< orphan*/  ncontroller; } ;
struct capi_ctr {scalar_t__ cardstate; int /*<<< orphan*/  profile; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAPI_NOERROR ; 
 int /*<<< orphan*/  CAPI_REGNOTINSTALLED ; 
 scalar_t__ CARD_RUNNING ; 
 struct capi_ctr* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ncards ; 

u16 FUNC2(u32 contr, struct capi_profile *profp)
{
	struct capi_ctr *card;

	if (contr == 0) {
		profp->ncontroller = ncards;
		return CAPI_NOERROR;
	}
	card = FUNC0(contr);
	if (!card || card->cardstate != CARD_RUNNING) 
		return CAPI_REGNOTINSTALLED;

	FUNC1((void *) profp, &card->profile,
			sizeof(struct capi_profile));
	return CAPI_NOERROR;
}