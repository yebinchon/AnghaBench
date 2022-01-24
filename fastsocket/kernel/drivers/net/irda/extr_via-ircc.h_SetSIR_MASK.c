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
typedef  int __u8 ;
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  I_CF_H_0 ; 
 int /*<<< orphan*/  I_CF_L_0 ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC3(__u16 BaseAddr, __u8 val)
{
	__u8 tmp;

	FUNC2(BaseAddr, I_CF_H_0, 5, 0);
	tmp = FUNC0(BaseAddr, I_CF_L_0);
	FUNC1(BaseAddr, I_CF_L_0, tmp & 0x8f);
	FUNC2(BaseAddr, I_CF_L_0, 4, val);
}