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
typedef  int uint32_t ;
typedef  scalar_t__ time_t ;
typedef  int suseconds_t ;
struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
typedef  int int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  HP_SDC_CMD_LOAD_RT ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline int FUNC1(struct timeval *res) {
	int64_t raw;
	uint32_t tenms; 
	unsigned int days;

	raw = FUNC0(HP_SDC_CMD_LOAD_RT, 5);
	if (raw < 0) return -1;

	tenms = (uint32_t)raw & 0xffffff;
	days  = (unsigned int)(raw >> 24) & 0xffff;

	res->tv_usec = (suseconds_t)(tenms % 100) * 10000;
	res->tv_sec =  (time_t)(tenms / 100) + days * 86400;

	return 0;
}