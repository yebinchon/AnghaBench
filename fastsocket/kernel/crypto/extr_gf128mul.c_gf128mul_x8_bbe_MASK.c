#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct TYPE_3__ {void* b; void* a; } ;
typedef  TYPE_1__ be128 ;

/* Variables and functions */
 int FUNC0 (void*) ; 
 void* FUNC1 (int) ; 
 int* gf128mul_table_bbe ; 

__attribute__((used)) static void FUNC2(be128 *x)
{
	u64 a = FUNC0(x->a);
	u64 b = FUNC0(x->b);
	u64 _tt = gf128mul_table_bbe[a >> 56];

	x->a = FUNC1((a << 8) | (b >> 56));
	x->b = FUNC1((b << 8) ^ _tt);
}