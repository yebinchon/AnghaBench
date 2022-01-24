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
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct i2c_client*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(struct i2c_client *client)
{
	/* reset configuration is described on page 3-77 of the CX25836 datasheet */
	/* 2. */
	FUNC0(client, 0x000, ~0x01, 0x01);
	FUNC0(client, 0x000, ~0x01, 0x00);
	/* 3a. */
	FUNC0(client, 0x15a, ~0x70, 0x00);
	/* 3b. */
	FUNC0(client, 0x15b, ~0x1e, 0x06);
	/* 3c. */
	FUNC0(client, 0x159, ~0x02, 0x02);
	/* 3d. */
	FUNC1(10);
	/* 3e. */
	FUNC0(client, 0x159, ~0x02, 0x00);
	/* 3f. */
	FUNC0(client, 0x159, ~0xc0, 0xc0);
	/* 3g. */
	FUNC0(client, 0x159, ~0x01, 0x00);
	FUNC0(client, 0x159, ~0x01, 0x01);
	/* 3h. */
	FUNC0(client, 0x15b, ~0x1e, 0x10);
}