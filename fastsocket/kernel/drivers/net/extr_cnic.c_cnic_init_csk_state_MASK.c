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
struct cnic_sock {int /*<<< orphan*/  flags; scalar_t__ state; } ;

/* Variables and functions */
 int /*<<< orphan*/  SK_F_CLOSING ; 
 int /*<<< orphan*/  SK_F_OFFLD_SCHED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct cnic_sock *csk)
{
	csk->state = 0;
	FUNC0(SK_F_OFFLD_SCHED, &csk->flags);
	FUNC0(SK_F_CLOSING, &csk->flags);
}