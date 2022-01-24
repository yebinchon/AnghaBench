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
struct dog_data {int /*<<< orphan*/ * close_me; int /*<<< orphan*/  stdout; int /*<<< orphan*/  stdin; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(void *d)
{
	struct dog_data *data = d;

	FUNC1(data->stdin, 0);
	FUNC1(data->stdout, 1);
	FUNC1(data->stdout, 2);
	FUNC0(data->stdin);
	FUNC0(data->stdout);
	FUNC0(data->close_me[0]);
	FUNC0(data->close_me[1]);
}