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
struct st5481_bcs {scalar_t__ channel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct st5481_bcs*,int) ; 

__attribute__((used)) static void FUNC2(void *context)
{
	struct st5481_bcs *bcs = context;

	FUNC0(4,"B%d",bcs->channel+1);

	// Start transmitting (flags or data) on B channel

	FUNC1(bcs,0);
	FUNC1(bcs,1);
}