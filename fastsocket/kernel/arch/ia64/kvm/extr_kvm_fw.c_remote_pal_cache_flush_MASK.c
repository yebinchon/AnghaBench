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
typedef  int /*<<< orphan*/  u64 ;
struct cache_flush_args {long status; int /*<<< orphan*/  operation; int /*<<< orphan*/  cache_type; int /*<<< orphan*/  progress; } ;

/* Variables and functions */
 long FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(void *data)
{
	struct cache_flush_args *args = data;
	long status;
	u64 progress = args->progress;

	status = FUNC0(args->cache_type, args->operation,
					&progress, NULL);
	if (status != 0)
	args->status = status;
}