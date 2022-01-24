#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct kaweth_device {TYPE_3__* dev; } ;
struct TYPE_6__ {TYPE_2__* config; } ;
struct TYPE_4__ {int /*<<< orphan*/  bConfigurationValue; } ;
struct TYPE_5__ {TYPE_1__ desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  KAWETH_CONTROL_TIMEOUT ; 
 int /*<<< orphan*/  USB_REQ_SET_CONFIGURATION ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (struct kaweth_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct kaweth_device *kaweth)
{
	int result;

	FUNC0("kaweth_reset(%p)", kaweth);
	result = FUNC1(kaweth,
				FUNC3(kaweth->dev, 0),
				USB_REQ_SET_CONFIGURATION,
				0,
				kaweth->dev->config[0].desc.bConfigurationValue,
				0,
				NULL,
				0,
				KAWETH_CONTROL_TIMEOUT);

	FUNC2(10);

	FUNC0("kaweth_reset() returns %d.",result);

	return result;
}