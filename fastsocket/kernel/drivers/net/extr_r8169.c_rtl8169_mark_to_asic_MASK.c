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
typedef  int u32 ;
struct RxDesc {int /*<<< orphan*/  opts1; } ;

/* Variables and functions */
 int DescOwn ; 
 int RingEnd ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct RxDesc *desc, u32 rx_buf_sz)
{
	u32 eor = FUNC1(desc->opts1) & RingEnd;

	desc->opts1 = FUNC0(DescOwn | eor | rx_buf_sz);
}