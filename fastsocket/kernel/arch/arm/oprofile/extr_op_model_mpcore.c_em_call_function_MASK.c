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
struct em_function_data {int (* fn ) () ;int ret; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct em_function_data*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  (*) (struct em_function_data*),struct em_function_data*,int) ; 

__attribute__((used)) static int FUNC4(int (*fn)(void))
{
	struct em_function_data data;

	data.fn = fn;
	data.ret = 0;

	FUNC1();
	FUNC3(em_func, &data, 1);
	FUNC0(&data);
	FUNC2();

	return data.ret;
}