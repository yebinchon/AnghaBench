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
struct txbd8 {int dummy; } ;

/* Variables and functions */
 struct txbd8* FUNC0 (struct txbd8*,int,struct txbd8*,int) ; 

__attribute__((used)) static inline struct txbd8 *FUNC1(struct txbd8 *bdp, struct txbd8 *base,
		int ring_size)
{
	return FUNC0(bdp, 1, base, ring_size);
}