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
struct binder_buffer {int dummy; } ;

/* Variables and functions */
 uintptr_t PAGE_MASK ; 

__attribute__((used)) static void *FUNC0(struct binder_buffer *buffer)
{
	return (void *)((uintptr_t)buffer & PAGE_MASK);
}