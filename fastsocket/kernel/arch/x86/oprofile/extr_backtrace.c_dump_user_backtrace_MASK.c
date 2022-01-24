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
struct stack_frame {struct stack_frame* next_frame; int /*<<< orphan*/  return_address; } ;
typedef  int /*<<< orphan*/  bufhead ;

/* Variables and functions */
 int /*<<< orphan*/  VERIFY_READ ; 
 scalar_t__ FUNC0 (struct stack_frame*,struct stack_frame*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct stack_frame*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct stack_frame *FUNC3(struct stack_frame *head)
{
	struct stack_frame bufhead[2];

	/* Also check accessibility of one struct stack_frame beyond */
	if (!FUNC1(VERIFY_READ, head, sizeof(bufhead)))
		return NULL;
	if (FUNC0(bufhead, head, sizeof(bufhead)))
		return NULL;

	FUNC2(bufhead[0].return_address);

	/* frame pointers should strictly progress back up the stack
	 * (towards higher addresses) */
	if (head >= bufhead[0].next_frame)
		return NULL;

	return bufhead[0].next_frame;
}