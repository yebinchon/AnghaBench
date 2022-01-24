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
struct x_cpu_info {int /*<<< orphan*/  ctidx; } ;
struct cpu_info {int /*<<< orphan*/  ctidx; } ;
typedef  enum diag204_format { ____Placeholder_diag204_format } diag204_format ;
typedef  int /*<<< orphan*/  __u8 ;

/* Variables and functions */
 int INFO_SIMPLE ; 

__attribute__((used)) static inline __u8 FUNC0(enum diag204_format type, void *hdr)
{
	if (type == INFO_SIMPLE)
		return ((struct cpu_info *)hdr)->ctidx;
	else /* INFO_EXT */
		return ((struct x_cpu_info *)hdr)->ctidx;
}