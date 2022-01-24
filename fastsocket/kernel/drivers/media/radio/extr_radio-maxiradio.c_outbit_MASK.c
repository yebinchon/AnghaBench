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
typedef  int /*<<< orphan*/  u16 ;

/* Variables and functions */
 int clk ; 
 int data ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int power ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int wren ; 

__attribute__((used)) static void FUNC2(unsigned long bit, u16 io)
{
	int val = power | wren | (bit ? data : 0);

	FUNC0(val, io);
	FUNC1(4);
	FUNC0(val | clk, io);
	FUNC1(4);
	FUNC0(val, io);
	FUNC1(4);
}