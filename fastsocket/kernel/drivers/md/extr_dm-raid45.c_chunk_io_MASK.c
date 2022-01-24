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
struct stripe_chunk {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct stripe_chunk*) ; 
 int /*<<< orphan*/  FUNC1 (struct stripe_chunk*) ; 
 scalar_t__ FUNC2 (struct stripe_chunk*) ; 
 int /*<<< orphan*/  FUNC3 (struct stripe_chunk*) ; 
 int /*<<< orphan*/  FUNC4 (struct stripe_chunk*) ; 
 scalar_t__ FUNC5 (struct stripe_chunk*) ; 

__attribute__((used)) static int FUNC6(struct stripe_chunk *chunk)
{
	/* 2nd run optimization (flag set below on first run). */
	if (FUNC5(chunk))
		return 1;

	/* Avoid io if prohibited or a locked chunk. */
	if (!FUNC1(chunk) || FUNC2(chunk))
		return 0;

	if (!FUNC3(chunk) || FUNC0(chunk)) {
		FUNC4(chunk); /* 2nd run optimization. */
		return 1;
	}

	return 0;
}