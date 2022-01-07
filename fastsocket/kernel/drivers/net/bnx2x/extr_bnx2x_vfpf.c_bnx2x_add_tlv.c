
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct channel_tlv {int type; int length; } ;
struct bnx2x {int dummy; } ;



void bnx2x_add_tlv(struct bnx2x *bp, void *tlvs_list, u16 offset, u16 type,
     u16 length)
{
 struct channel_tlv *tl =
  (struct channel_tlv *)(tlvs_list + offset);

 tl->type = type;
 tl->length = length;
}
