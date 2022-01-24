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
struct timeval {int tv_sec; unsigned long tv_usec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct timeval*) ; 

__attribute__((used)) static inline unsigned long
FUNC1 (void)
{
	struct timeval tv;

	FUNC0(&tv);
	return (1000000 * tv.tv_sec + tv.tv_usec);
}