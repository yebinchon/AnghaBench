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
struct logger_log {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (struct logger_log*,size_t) ; 
 size_t FUNC1 (size_t) ; 

__attribute__((used)) static size_t FUNC2(struct logger_log *log, size_t off, size_t len)
{
	size_t count = 0;

	do {
		size_t nr = FUNC0(log, off);
		off = FUNC1(off + nr);
		count += nr;
	} while (count < len);

	return off;
}