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
struct ipath_devdata {int dummy; } ;

/* Variables and functions */
 struct ipath_devdata* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  unit_table ; 

__attribute__((used)) static inline struct ipath_devdata *FUNC1(int unit)
{
	return FUNC0(&unit_table, unit);
}