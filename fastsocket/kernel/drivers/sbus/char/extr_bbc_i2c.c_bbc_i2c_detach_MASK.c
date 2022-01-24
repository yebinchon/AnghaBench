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
struct of_device {int dummy; } ;
struct bbc_i2c_client {struct of_device* op; struct bbc_i2c_bus* bp; } ;
struct bbc_i2c_bus {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bbc_i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (struct bbc_i2c_bus*,struct of_device*) ; 

void FUNC2(struct bbc_i2c_client *client)
{
	struct bbc_i2c_bus *bp = client->bp;
	struct of_device *op = client->op;

	FUNC1(bp, op);
	FUNC0(client);
}