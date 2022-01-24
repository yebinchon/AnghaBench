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
struct TYPE_2__ {int devicename; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMPID ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  cmReqClass0 ; 
 int /*<<< orphan*/  cmReqStartProc ; 
 int /*<<< orphan*/  cmReqType2 ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 TYPE_1__** sc_adapter ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC3(int card) 
{
	int status;

	if(!FUNC0(card)) {
		FUNC1("Invalid param: %d is not a valid card id\n", card);
		return -ENODEV;
	}

	/*
	 * send start msg 
	 */
       	status = FUNC2(card, CMPID,cmReqType2,
			  cmReqClass0,
			  cmReqStartProc,
			  0,0,NULL);
	FUNC1("%s: Sent startProc\n", sc_adapter[card]->devicename);
	
	return status;
}