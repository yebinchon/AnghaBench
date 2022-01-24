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
struct lm95241_data {int config; int model; int trutherm; scalar_t__ valid; int /*<<< orphan*/  rate; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int CFG_CR0076 ; 
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  LM95241_REG_RW_CONFIG ; 
 int /*<<< orphan*/  LM95241_REG_RW_REMOTE_MODEL ; 
 int /*<<< orphan*/  LM95241_REG_RW_REM_FILTER ; 
 int /*<<< orphan*/  LM95241_REG_RW_TRUTHERM ; 
 int R1FE_MASK ; 
 int R2FE_MASK ; 
 int TT1_SHIFT ; 
 int TT2_SHIFT ; 
 int TT_OFF ; 
 struct lm95241_data* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct i2c_client *client)
{
	struct lm95241_data *data = FUNC0(client);

	data->rate = HZ;    /* 1 sec default */
	data->valid = 0;
	data->config = CFG_CR0076;
	data->model = 0;
	data->trutherm = (TT_OFF << TT1_SHIFT) | (TT_OFF << TT2_SHIFT);

	FUNC1(client, LM95241_REG_RW_CONFIG,
				  data->config);
	FUNC1(client, LM95241_REG_RW_REM_FILTER,
				  R1FE_MASK | R2FE_MASK);
	FUNC1(client, LM95241_REG_RW_TRUTHERM,
				  data->trutherm);
	FUNC1(client, LM95241_REG_RW_REMOTE_MODEL,
				  data->model);
}