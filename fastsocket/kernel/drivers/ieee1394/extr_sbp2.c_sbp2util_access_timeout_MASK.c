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
struct sbp2_lu {scalar_t__ access_complete; } ;

/* Variables and functions */
 int /*<<< orphan*/  sbp2_access_wq ; 
 long FUNC0 (int /*<<< orphan*/ ,scalar_t__,int) ; 

__attribute__((used)) static int FUNC1(struct sbp2_lu *lu, int timeout)
{
	long leftover;

	leftover = FUNC0(
			sbp2_access_wq, lu->access_complete, timeout);
	lu->access_complete = 0;
	return leftover <= 0;
}