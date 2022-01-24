#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  cipmask2; int /*<<< orphan*/  cipmask; int /*<<< orphan*/  contrnr; int /*<<< orphan*/  msgid; } ;
typedef  TYPE_2__ capidrv_contr ;
struct TYPE_7__ {int /*<<< orphan*/  applid; } ;
struct TYPE_9__ {TYPE_1__ ap; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_LISTEN_REQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cmdcmsg ; 
 TYPE_6__ global ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(capidrv_contr *card)
{
	FUNC0(&cmdcmsg, global.ap.applid,
			     card->msgid++,
			     card->contrnr, /* controller */
			     1 << 6,	/* Infomask */
			     card->cipmask,
			     card->cipmask2,
			     NULL, NULL);
	FUNC1(card, EV_LISTEN_REQ);
	FUNC2(card, &cmdcmsg);
}