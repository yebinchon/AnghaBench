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
 int /*<<< orphan*/  FUNC0 (struct i2c_client*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(struct i2c_client *client)
{
	/* This is the Hauppauge sequence used to
	 * initialize the Delay Lock Loop 1 (ADC DLL). */
	FUNC0(client, 0x159, 0x23);
	FUNC0(client, 0x15a, 0x87);
	FUNC0(client, 0x15b, 0x06);
	FUNC1(10);
	FUNC0(client, 0x159, 0xe1);
	FUNC1(10);
	FUNC0(client, 0x15a, 0x86);
	FUNC0(client, 0x159, 0xe0);
	FUNC0(client, 0x159, 0xe1);
	FUNC0(client, 0x15b, 0x10);
}