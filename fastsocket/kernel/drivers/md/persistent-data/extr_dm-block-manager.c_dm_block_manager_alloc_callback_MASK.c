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
struct dm_buffer {int dummy; } ;
struct buffer_aux {int /*<<< orphan*/  lock; int /*<<< orphan*/ * validator; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct buffer_aux* FUNC1 (struct dm_buffer*) ; 

__attribute__((used)) static void FUNC2(struct dm_buffer *buf)
{
	struct buffer_aux *aux = FUNC1(buf);
	aux->validator = NULL;
	FUNC0(&aux->lock);
}