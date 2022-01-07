
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {void* len; void* type; } ;
struct mrvl_ie_chanlist_param_set {TYPE_1__ header; int chanscanparam; } ;
struct chanscanparamset {int dummy; } ;


 size_t TLV_TYPE_CHANLIST ;
 void* cpu_to_le16 (size_t) ;
 int memcpy (int ,struct chanscanparamset*,size_t) ;

__attribute__((used)) static int lbs_scan_add_chanlist_tlv(uint8_t *tlv,
         struct chanscanparamset *chan_list,
         int chan_count)
{
 size_t size = sizeof(struct chanscanparamset) *chan_count;
 struct mrvl_ie_chanlist_param_set *chan_tlv = (void *)tlv;

 chan_tlv->header.type = cpu_to_le16(TLV_TYPE_CHANLIST);
 memcpy(chan_tlv->chanscanparam, chan_list, size);
 chan_tlv->header.len = cpu_to_le16(size);
 return sizeof(chan_tlv->header) + size;
}
