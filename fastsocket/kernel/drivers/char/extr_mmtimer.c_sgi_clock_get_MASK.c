#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct timespec {int /*<<< orphan*/  tv_sec; } ;
typedef  int /*<<< orphan*/  clockid_t ;
struct TYPE_2__ {scalar_t__ tv_sec; scalar_t__ tv_nsec; } ;

/* Variables and functions */
 struct timespec FUNC0 (scalar_t__) ; 
 int FUNC1 () ; 
 TYPE_1__ sgi_clock_offset ; 
 int sgi_clock_period ; 

__attribute__((used)) static int FUNC2(clockid_t clockid, struct timespec *tp)
{
	u64 nsec;

	nsec = FUNC1() * sgi_clock_period
			+ sgi_clock_offset.tv_nsec;
	*tp = FUNC0(nsec);
	tp->tv_sec += sgi_clock_offset.tv_sec;
	return 0;
}