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
struct tlbe {int mas3; } ;

/* Variables and functions */
 int MAS3_SW ; 
 int MAS3_UW ; 

__attribute__((used)) static inline int FUNC0(struct tlbe *tlbe)
{
	return tlbe->mas3 & (MAS3_SW|MAS3_UW);
}