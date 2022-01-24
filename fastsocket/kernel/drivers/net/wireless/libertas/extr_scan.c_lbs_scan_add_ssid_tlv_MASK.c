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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {void* len; void* type; } ;
struct mrvl_ie_ssid_param_set {int /*<<< orphan*/  ssid; TYPE_1__ header; } ;
struct lbs_private {int scan_ssid_len; int /*<<< orphan*/  scan_ssid; } ;

/* Variables and functions */
 int TLV_TYPE_SSID ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct lbs_private *priv, u8 *tlv)
{
	struct mrvl_ie_ssid_param_set *ssid_tlv = (void *)tlv;

	ssid_tlv->header.type = FUNC0(TLV_TYPE_SSID);
	ssid_tlv->header.len = FUNC0(priv->scan_ssid_len);
	FUNC1(ssid_tlv->ssid, priv->scan_ssid, priv->scan_ssid_len);
	return sizeof(ssid_tlv->header) + priv->scan_ssid_len;
}