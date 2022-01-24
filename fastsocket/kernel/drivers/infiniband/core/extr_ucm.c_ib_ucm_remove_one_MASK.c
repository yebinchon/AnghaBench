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
struct ib_ucm_device {int /*<<< orphan*/  dev; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct ib_ucm_device* FUNC1 (struct ib_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ucm_client ; 

__attribute__((used)) static void FUNC2(struct ib_device *device)
{
	struct ib_ucm_device *ucm_dev = FUNC1(device, &ucm_client);

	if (!ucm_dev)
		return;

	FUNC0(&ucm_dev->dev);
}