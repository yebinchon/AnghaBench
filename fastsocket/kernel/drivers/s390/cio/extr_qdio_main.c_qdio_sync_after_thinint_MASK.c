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
struct qdio_q {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct qdio_q*) ; 
 scalar_t__ FUNC1 (struct qdio_q*) ; 
 scalar_t__ FUNC2 (struct qdio_q*) ; 
 int /*<<< orphan*/  FUNC3 (struct qdio_q*) ; 
 int /*<<< orphan*/  FUNC4 (struct qdio_q*) ; 
 int /*<<< orphan*/  FUNC5 (struct qdio_q*) ; 

__attribute__((used)) static inline void FUNC6(struct qdio_q *q)
{
	if (FUNC2(q)) {
		if (FUNC1(q))
			FUNC3(q);
		else if (FUNC0(q))
			FUNC4(q);
	} else
		FUNC5(q);
}