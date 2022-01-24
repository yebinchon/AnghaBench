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
struct if_usb_card {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct if_usb_card*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  if_usb_receive_fwload ; 

__attribute__((used)) static int FUNC1(struct if_usb_card *cardp)
{
	return FUNC0(cardp, &if_usb_receive_fwload);
}