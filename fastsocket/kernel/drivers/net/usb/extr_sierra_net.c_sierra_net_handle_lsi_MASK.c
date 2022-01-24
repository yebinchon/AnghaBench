#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct usbnet {int /*<<< orphan*/  net; } ;
struct sierra_net_data {int link_up; } ;
struct TYPE_3__ {int /*<<< orphan*/  byte; } ;
struct TYPE_4__ {int /*<<< orphan*/  word; } ;
struct hip_hdr {int hdrlen; TYPE_1__ msgspecific; TYPE_2__ payload_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct sierra_net_data* FUNC1 (struct usbnet*) ; 
 int FUNC2 (struct usbnet*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sierra_net_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct usbnet*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct usbnet *dev, char *data,
		struct hip_hdr	*hh)
{
	struct sierra_net_data *priv = FUNC1(dev);
	int link_up;

	link_up = FUNC2(dev, data + hh->hdrlen,
					hh->payload_len.word);
	if (link_up < 0) {
		FUNC0(dev->net, "Invalid LSI\n");
		return;
	}
	if (link_up) {
		FUNC3(priv, hh->msgspecific.byte);
		priv->link_up = 1;
	} else {
		priv->link_up = 0;
	}
	FUNC4(dev, link_up, 0);
}