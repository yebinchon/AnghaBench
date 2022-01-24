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
struct TYPE_2__ {int /*<<< orphan*/  devicename; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEPID ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ceReqClass1 ; 
 int /*<<< orphan*/  ceReqPhyDisconnect ; 
 int /*<<< orphan*/  ceReqTypePhy ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
 TYPE_1__** sc_adapter ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(int card, unsigned long channel)
{
	int status;

	if(!FUNC0(card)) {
		FUNC1("Invalid param: %d is not a valid card id\n", card);
		return -ENODEV;
	}

	status = FUNC2(card, CEPID, ceReqTypePhy,
						 ceReqClass1,
						 ceReqPhyDisconnect,
						 (unsigned char) channel+1,
						 0,
						 NULL);
	FUNC1("%s: Sent HANGUP message to channel %lu\n",
		sc_adapter[card]->devicename, channel+1);
	return status;
}