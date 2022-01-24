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
struct cx18 {int /*<<< orphan*/ * enc_mem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct cx18 *cx)
{
	if (cx == NULL)
		return;

	/* Release io memory */
	if (cx->enc_mem != NULL) {
		FUNC0("releasing enc_mem\n");
		FUNC1(cx->enc_mem);
		cx->enc_mem = NULL;
	}
}