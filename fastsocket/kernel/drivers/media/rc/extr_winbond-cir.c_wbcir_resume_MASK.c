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
struct wbcir_data {int /*<<< orphan*/  irq; } ;
struct pnp_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct wbcir_data* FUNC1 (struct pnp_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct wbcir_data*) ; 

__attribute__((used)) static int
FUNC3(struct pnp_dev *device)
{
	struct wbcir_data *data = FUNC1(device);

	FUNC2(data);
	FUNC0(data->irq);

	return 0;
}