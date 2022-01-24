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
struct niu {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct niu*,int,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC1(struct niu *np, int table_num,
					 int mac_pref)
{
	return FUNC0(np, 17, 0, table_num, mac_pref);
}