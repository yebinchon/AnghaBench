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
typedef  int u8 ;
struct z8530_channel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_RES ; 
 int /*<<< orphan*/  R0 ; 
 int /*<<< orphan*/  RES_EXT_INT ; 
 int /*<<< orphan*/  RES_H_IUS ; 
 int TxEOM ; 
 int FUNC0 (struct z8530_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct z8530_channel*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct z8530_channel *chan)
{
	u8 status=FUNC0(chan, R0);
	if(status&TxEOM)
		FUNC1(chan, ERR_RES);
	FUNC1(chan, RES_EXT_INT);
	FUNC1(chan, RES_H_IUS);
}