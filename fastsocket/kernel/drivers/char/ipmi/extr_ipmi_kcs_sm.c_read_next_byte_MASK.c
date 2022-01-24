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
struct si_sm_data {size_t read_pos; int truncated; int /*<<< orphan*/ * read_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  KCS_READ_BYTE ; 
 size_t MAX_KCS_READ_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct si_sm_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct si_sm_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct si_sm_data *kcs)
{
	if (kcs->read_pos >= MAX_KCS_READ_SIZE) {
		/* Throw the data away and mark it truncated. */
		FUNC0(kcs);
		kcs->truncated = 1;
	} else {
		kcs->read_data[kcs->read_pos] = FUNC0(kcs);
		(kcs->read_pos)++;
	}
	FUNC1(kcs, KCS_READ_BYTE);
}