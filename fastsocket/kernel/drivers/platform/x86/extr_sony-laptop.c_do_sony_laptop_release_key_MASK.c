#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct work_struct {int dummy; } ;
struct sony_laptop_keypress {int /*<<< orphan*/  dev; int /*<<< orphan*/  key; } ;
typedef  int /*<<< orphan*/  kp ;
struct TYPE_2__ {int /*<<< orphan*/  fifo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 TYPE_1__ sony_laptop_input ; 

__attribute__((used)) static void FUNC4(struct work_struct *work)
{
	struct sony_laptop_keypress kp;

	while (FUNC2(sony_laptop_input.fifo, (unsigned char *)&kp,
			 sizeof(kp)) == sizeof(kp)) {
		FUNC3(10);
		FUNC0(kp.dev, kp.key, 0);
		FUNC1(kp.dev);
	}
}