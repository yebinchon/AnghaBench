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
typedef  int /*<<< orphan*/  u8 ;
struct sht15_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sht15_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sht15_data*) ; 
 int FUNC2 (struct sht15_data*) ; 

__attribute__((used)) static int FUNC3(struct sht15_data *data, u8 cmd)
{
	int ret = 0;
	FUNC1(data);
	FUNC0(data, cmd);
	ret = FUNC2(data);
	return ret;
}