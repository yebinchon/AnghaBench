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
struct uinput_request {int dummy; } ;
struct uinput_device {int /*<<< orphan*/  requests_waitq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct uinput_device*,struct uinput_request*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline int FUNC2(struct uinput_device *udev, struct uinput_request *request)
{
	/* Allocate slot. If none are available right away, wait. */
	return FUNC1(udev->requests_waitq,
					!FUNC0(udev, request));
}