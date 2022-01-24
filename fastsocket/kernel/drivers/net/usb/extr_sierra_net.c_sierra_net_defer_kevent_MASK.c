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
struct usbnet {int dummy; } ;
struct sierra_net_data {int /*<<< orphan*/  sierra_net_kevent; int /*<<< orphan*/  kevent_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 struct sierra_net_data* FUNC2 (struct usbnet*) ; 

__attribute__((used)) static void FUNC3(struct usbnet *dev, int work)
{
	struct sierra_net_data *priv = FUNC2(dev);

	FUNC1(work, &priv->kevent_flags);
	FUNC0(&priv->sierra_net_kevent);
}