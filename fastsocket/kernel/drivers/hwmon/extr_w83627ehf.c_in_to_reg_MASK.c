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
typedef  size_t u8 ;
typedef  int u32 ;

/* Variables and functions */
 size_t FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int* scale_in ; 

__attribute__((used)) static inline u8 FUNC1(u32 val, u8 nr)
{
	return FUNC0(((val + (scale_in[nr] / 2)) / scale_in[nr]), 0, 255);
}