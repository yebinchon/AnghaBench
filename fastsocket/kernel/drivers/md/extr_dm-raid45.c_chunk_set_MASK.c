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
typedef  enum chunk_dirty_type { ____Placeholder_chunk_dirty_type } chunk_dirty_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  CLEAN 130 
 int /*<<< orphan*/  FUNC1 (struct stripe_chunk*) ; 
 int /*<<< orphan*/  FUNC2 (struct stripe_chunk*) ; 
#define  DIRTY 129 
#define  ERROR 128 
 int /*<<< orphan*/  FUNC3 (struct stripe_chunk*) ; 
 int /*<<< orphan*/  FUNC4 (struct stripe_chunk*) ; 
 int /*<<< orphan*/  FUNC5 (struct stripe_chunk*) ; 
 int /*<<< orphan*/  FUNC6 (struct stripe_chunk*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct stripe_chunk *chunk, enum chunk_dirty_type type)
{
	switch (type) {
	case CLEAN:
		FUNC1(chunk);
		break;
	case DIRTY:
		FUNC3(chunk);
		break;
	case ERROR:
		FUNC4(chunk);
		FUNC7(chunk->stripe);
		return;
	default:
		FUNC0();
	}

	FUNC6(chunk);
	FUNC5(chunk);
	FUNC2(chunk);
}