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
struct sdio_func {int dummy; } ;
struct hci_dev {int dummy; } ;
struct btsdio_data {struct hci_dev* hdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*) ; 
 struct btsdio_data* FUNC3 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC4 (struct sdio_func*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct sdio_func *func)
{
	struct btsdio_data *data = FUNC3(func);
	struct hci_dev *hdev;

	FUNC0("func %p", func);

	if (!data)
		return;

	hdev = data->hdev;

	FUNC4(func, NULL);

	FUNC2(hdev);

	FUNC1(hdev);
}