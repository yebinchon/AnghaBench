
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {void* len; void* type; } ;
struct mrvl_ie_rates_param_set {TYPE_1__ header; } ;


 int MAX_RATES ;
 int TLV_TYPE_RATES ;
 void* cpu_to_le16 (int) ;
 int* lbs_bg_rates ;

__attribute__((used)) static int lbs_scan_add_rates_tlv(uint8_t *tlv)
{
 int i;
 struct mrvl_ie_rates_param_set *rate_tlv = (void *)tlv;

 rate_tlv->header.type = cpu_to_le16(TLV_TYPE_RATES);
 tlv += sizeof(rate_tlv->header);
 for (i = 0; i < MAX_RATES; i++) {
  *tlv = lbs_bg_rates[i];
  if (*tlv == 0)
   break;




  if (*tlv == 0x02 || *tlv == 0x04 ||
      *tlv == 0x0b || *tlv == 0x16)
   *tlv |= 0x80;
  tlv++;
 }
 rate_tlv->header.len = cpu_to_le16(i);
 return sizeof(rate_tlv->header) + i;
}
