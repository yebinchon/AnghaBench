
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_5__ {int addr_family; int dhcp_enabled; scalar_t__ adapter_id; scalar_t__ dns_addr; scalar_t__ gate_way; scalar_t__ sub_net; scalar_t__ ip_addr; } ;
struct TYPE_6__ {TYPE_2__ kvp_ip_val; } ;
struct hv_kvp_msg {TYPE_3__ body; } ;
struct TYPE_4__ {int addr_family; int dhcp_enabled; scalar_t__ adapter_id; scalar_t__ dns_addr; scalar_t__ gate_way; scalar_t__ sub_net; scalar_t__ ip_addr; } ;
struct hv_kvp_ip_msg {TYPE_1__ kvp_ip_val; } ;



 int MAX_GATEWAY_SIZE ;
 int MAX_IP_ADDR_SIZE ;
 int UTF16_HOST_ENDIAN ;
 int strlen (char*) ;
 int utf8s_to_utf16s (char*,int ,int ,int *,int ) ;

__attribute__((used)) static int process_ob_ipinfo(void *in_msg, void *out_msg, int op)
{
 struct hv_kvp_msg *in = in_msg;
 struct hv_kvp_ip_msg *out = out_msg;
 int len;

 switch (op) {
 case 128:



  len = utf8s_to_utf16s((char *)in->body.kvp_ip_val.ip_addr,
    strlen((char *)in->body.kvp_ip_val.ip_addr),
    UTF16_HOST_ENDIAN,
    (wchar_t *)out->kvp_ip_val.ip_addr,
    MAX_IP_ADDR_SIZE);
  if (len < 0)
   return len;

  len = utf8s_to_utf16s((char *)in->body.kvp_ip_val.sub_net,
    strlen((char *)in->body.kvp_ip_val.sub_net),
    UTF16_HOST_ENDIAN,
    (wchar_t *)out->kvp_ip_val.sub_net,
    MAX_IP_ADDR_SIZE);
  if (len < 0)
   return len;

  len = utf8s_to_utf16s((char *)in->body.kvp_ip_val.gate_way,
    strlen((char *)in->body.kvp_ip_val.gate_way),
    UTF16_HOST_ENDIAN,
    (wchar_t *)out->kvp_ip_val.gate_way,
    MAX_GATEWAY_SIZE);
  if (len < 0)
   return len;

  len = utf8s_to_utf16s((char *)in->body.kvp_ip_val.dns_addr,
    strlen((char *)in->body.kvp_ip_val.dns_addr),
    UTF16_HOST_ENDIAN,
    (wchar_t *)out->kvp_ip_val.dns_addr,
    MAX_IP_ADDR_SIZE);
  if (len < 0)
   return len;

  len = utf8s_to_utf16s((char *)in->body.kvp_ip_val.adapter_id,
    strlen((char *)in->body.kvp_ip_val.adapter_id),
    UTF16_HOST_ENDIAN,
    (wchar_t *)out->kvp_ip_val.adapter_id,
    MAX_IP_ADDR_SIZE);
  if (len < 0)
   return len;

  out->kvp_ip_val.dhcp_enabled =
   in->body.kvp_ip_val.dhcp_enabled;
  out->kvp_ip_val.addr_family =
   in->body.kvp_ip_val.addr_family;
 }

 return 0;
}
