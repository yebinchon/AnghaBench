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
struct sx_board {int dummy; } ;

/* Variables and functions */
 int TIMEOUT_1 ; 
 int TIMEOUT_2 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (struct sx_board*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct sx_board *board,
		int offset, int mask, int correctval)
{
	int i;

	FUNC0();

	for (i = 0; i < TIMEOUT_1; i++)
		if ((FUNC2(board, offset) & mask) == correctval) {
			FUNC1();
			return 1;
		}

	for (i = 0; i < TIMEOUT_2; i++) {
		if ((FUNC2(board, offset) & mask) == correctval) {
			FUNC1();
			return 1;
		}
		FUNC3(1);
	}

	FUNC1();
	return 0;
}