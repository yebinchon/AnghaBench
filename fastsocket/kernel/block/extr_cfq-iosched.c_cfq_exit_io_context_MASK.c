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
struct io_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct io_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cfq_exit_single_io_context ; 

__attribute__((used)) static void FUNC1(struct io_context *ioc)
{
	FUNC0(ioc, cfq_exit_single_io_context);
}