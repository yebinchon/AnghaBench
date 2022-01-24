#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int features; int /*<<< orphan*/  channels; int /*<<< orphan*/ * statcallb; int /*<<< orphan*/ * rcvcallb_skb; int /*<<< orphan*/ * readstat; int /*<<< orphan*/ * writecmd; int /*<<< orphan*/  writebuf_skb; int /*<<< orphan*/  command; int /*<<< orphan*/  hl_hdrlen; int /*<<< orphan*/  maxbufsize; int /*<<< orphan*/  owner; int /*<<< orphan*/  id; } ;
struct cardstate {int minor_index; int /*<<< orphan*/  myid; int /*<<< orphan*/  channels; TYPE_1__ iif; } ;
typedef  TYPE_1__ isdn_if ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_ANY ; 
 int /*<<< orphan*/  HW_HDR_LEN ; 
 int ISDN_FEATURE_L2_HDLC ; 
 int ISDN_FEATURE_L2_TRANS ; 
 int ISDN_FEATURE_L2_X75I ; 
 int ISDN_FEATURE_L3_TRANS ; 
 int ISDN_FEATURE_P_EURO ; 
 int /*<<< orphan*/  MAX_BUF_SIZE ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  command_from_LL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,char*,char const*,int) ; 
 int /*<<< orphan*/  writebuf_from_LL ; 

int FUNC4(struct cardstate *cs, const char *isdnid)
{
	isdn_if *iif = &cs->iif;

	FUNC0(DEBUG_ANY, "Register driver capabilities to LL");

	if (FUNC3(iif->id, sizeof iif->id, "%s_%u", isdnid, cs->minor_index)
	    >= sizeof iif->id) {
		FUNC1("ID too long: %s\n", isdnid);
		return 0;
	}

	iif->owner = THIS_MODULE;
	iif->channels = cs->channels;
	iif->maxbufsize = MAX_BUF_SIZE;
	iif->features = ISDN_FEATURE_L2_TRANS |
		ISDN_FEATURE_L2_HDLC |
#ifdef GIG_X75
		ISDN_FEATURE_L2_X75I |
#endif
		ISDN_FEATURE_L3_TRANS |
		ISDN_FEATURE_P_EURO;
	iif->hl_hdrlen = HW_HDR_LEN;		/* Area for storing ack */
	iif->command = command_from_LL;
	iif->writebuf_skb = writebuf_from_LL;
	iif->writecmd = NULL;			/* Don't support isdnctrl */
	iif->readstat = NULL;			/* Don't support isdnctrl */
	iif->rcvcallb_skb = NULL;		/* Will be set by LL */
	iif->statcallb = NULL;			/* Will be set by LL */

	if (!FUNC2(iif)) {
		FUNC1("register_isdn failed\n");
		return 0;
	}

	cs->myid = iif->channels;		/* Set my device id */
	return 1;
}