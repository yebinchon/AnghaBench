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
struct stripe_chunk {int /*<<< orphan*/  stripe; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct stripe_chunk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct stripe_chunk*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WRITE_MERGED ; 
 int /*<<< orphan*/  WRITE_QUEUED ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC6(struct stripe_chunk *chunk)
{
	if (FUNC2(chunk)) {
		FUNC1(!FUNC5(FUNC0(chunk, WRITE_QUEUED)) &&
		       !FUNC5(FUNC0(chunk, WRITE_MERGED)));

		if (!FUNC5(FUNC0(chunk, WRITE_QUEUED)) ||
		    !FUNC5(FUNC0(chunk, WRITE_MERGED)))
			return 1;

		if (FUNC3(chunk->stripe) ||
		    FUNC4(chunk->stripe))
			return 1;
	}

	return 0;
}