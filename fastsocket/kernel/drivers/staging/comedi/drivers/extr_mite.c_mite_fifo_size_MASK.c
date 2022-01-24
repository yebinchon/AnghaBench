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
struct mite_struct {scalar_t__ mite_io_addr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (scalar_t__) ; 

unsigned FUNC2(struct mite_struct *mite, unsigned channel)
{
	unsigned fcr_bits = FUNC1(mite->mite_io_addr + FUNC0(channel));
	unsigned empty_count = (fcr_bits >> 16) & 0xff;
	unsigned full_count = fcr_bits & 0xff;
	return empty_count + full_count;
}