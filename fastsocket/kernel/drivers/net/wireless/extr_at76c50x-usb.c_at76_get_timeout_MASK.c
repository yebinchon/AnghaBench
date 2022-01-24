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
struct dfu_status {int* poll_timeout; } ;

/* Variables and functions */
 unsigned long FUNC0 (int) ; 

__attribute__((used)) static inline unsigned long FUNC1(struct dfu_status *s)
{
	return FUNC0((s->poll_timeout[2] << 16)
				| (s->poll_timeout[1] << 8)
				| (s->poll_timeout[0]));
}