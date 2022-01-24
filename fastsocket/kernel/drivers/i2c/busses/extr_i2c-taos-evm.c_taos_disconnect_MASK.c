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
struct taos_data {int /*<<< orphan*/  adapter; scalar_t__ client; } ;
struct serio {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct taos_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct serio*) ; 
 struct taos_data* FUNC5 (struct serio*) ; 
 int /*<<< orphan*/  FUNC6 (struct serio*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct serio *serio)
{
	struct taos_data *taos = FUNC5(serio);

	if (taos->client)
		FUNC2(taos->client);
	FUNC1(&taos->adapter);
	FUNC4(serio);
	FUNC6(serio, NULL);
	FUNC3(taos);

	FUNC0(&serio->dev, "Disconnected from TAOS EVM\n");
}