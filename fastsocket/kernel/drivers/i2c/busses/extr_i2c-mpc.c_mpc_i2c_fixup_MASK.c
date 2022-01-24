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
struct mpc_i2c {int dummy; } ;

/* Variables and functions */
 int CCR_MEN ; 
 int CCR_MSTA ; 
 int CCR_MTX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mpc_i2c*,int) ; 

__attribute__((used)) static void FUNC2(struct mpc_i2c *i2c)
{
	FUNC1(i2c, 0);
	FUNC0(30);
	FUNC1(i2c, CCR_MEN);
	FUNC0(30);
	FUNC1(i2c, CCR_MSTA | CCR_MTX);
	FUNC0(30);
	FUNC1(i2c, CCR_MSTA | CCR_MTX | CCR_MEN);
	FUNC0(30);
	FUNC1(i2c, CCR_MEN);
	FUNC0(30);
}