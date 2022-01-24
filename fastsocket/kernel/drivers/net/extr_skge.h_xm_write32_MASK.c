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
struct skge_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct skge_hw const*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC2(const struct skge_hw *hw, int port, int r, u32 v)
{
	FUNC1(hw, FUNC0(port,r), v & 0xffff);
	FUNC1(hw, FUNC0(port,r+2), v >> 16);
}