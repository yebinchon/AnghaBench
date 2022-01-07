
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {void* len; void* type; } ;
struct mrvl_ie_ssid_param_set {int ssid; TYPE_1__ header; } ;
struct lbs_private {int scan_ssid_len; int scan_ssid; } ;


 int TLV_TYPE_SSID ;
 void* cpu_to_le16 (int) ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static int lbs_scan_add_ssid_tlv(struct lbs_private *priv, u8 *tlv)
{
 struct mrvl_ie_ssid_param_set *ssid_tlv = (void *)tlv;

 ssid_tlv->header.type = cpu_to_le16(TLV_TYPE_SSID);
 ssid_tlv->header.len = cpu_to_le16(priv->scan_ssid_len);
 memcpy(ssid_tlv->ssid, priv->scan_ssid, priv->scan_ssid_len);
 return sizeof(ssid_tlv->header) + priv->scan_ssid_len;
}
