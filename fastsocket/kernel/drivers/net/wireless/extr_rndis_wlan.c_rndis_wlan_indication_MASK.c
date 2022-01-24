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
struct usbnet {int /*<<< orphan*/  net; } ;
struct rndis_wlan_private {int /*<<< orphan*/  work; int /*<<< orphan*/  workqueue; int /*<<< orphan*/  work_pending; int /*<<< orphan*/  current_command_oid; } ;
struct rndis_indicate {int status; } ;

/* Variables and functions */
 int /*<<< orphan*/  OID_802_11_ADD_KEY ; 
#define  RNDIS_STATUS_MEDIA_CONNECT 130 
#define  RNDIS_STATUS_MEDIA_DISCONNECT 129 
#define  RNDIS_STATUS_MEDIA_SPECIFIC_INDICATION 128 
 int /*<<< orphan*/  WORK_LINK_DOWN ; 
 int /*<<< orphan*/  WORK_LINK_UP ; 
 struct rndis_wlan_private* FUNC0 (struct usbnet*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct usbnet*,struct rndis_indicate*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct usbnet*) ; 

__attribute__((used)) static void FUNC8(struct usbnet *usbdev, void *ind, int buflen)
{
	struct rndis_wlan_private *priv = FUNC0(usbdev);
	struct rndis_indicate *msg = ind;

	switch (msg->status) {
	case RNDIS_STATUS_MEDIA_CONNECT:
		if (priv->current_command_oid == OID_802_11_ADD_KEY) {
			/* OID_802_11_ADD_KEY causes sometimes extra
			 * "media connect" indications which confuses driver
			 * and userspace to think that device is
			 * roaming/reassociating when it isn't.
			 */
			FUNC2(usbdev->net, "ignored OID_802_11_ADD_KEY triggered 'media connect'\n");
			return;
		}

		FUNC7(usbdev);

		FUNC3(usbdev->net, "media connect\n");

		/* queue work to avoid recursive calls into rndis_command */
		FUNC6(WORK_LINK_UP, &priv->work_pending);
		FUNC4(priv->workqueue, &priv->work);
		break;

	case RNDIS_STATUS_MEDIA_DISCONNECT:
		FUNC3(usbdev->net, "media disconnect\n");

		/* queue work to avoid recursive calls into rndis_command */
		FUNC6(WORK_LINK_DOWN, &priv->work_pending);
		FUNC4(priv->workqueue, &priv->work);
		break;

	case RNDIS_STATUS_MEDIA_SPECIFIC_INDICATION:
		FUNC5(usbdev, msg, buflen);
		break;

	default:
		FUNC3(usbdev->net, "indication: 0x%08x\n",
			    FUNC1(msg->status));
		break;
	}
}