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
struct multipath {scalar_t__ queue_if_no_path; scalar_t__ saved_queue_if_no_path; int /*<<< orphan*/  ti; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct multipath *m)
{
	return (m->queue_if_no_path != m->saved_queue_if_no_path &&
		FUNC0(m->ti));
}