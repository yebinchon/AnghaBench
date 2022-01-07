
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct channel_tlv {scalar_t__ type; int length; } ;
struct bnx2x {int dummy; } ;


 int BNX2X_MSG_IOV ;
 scalar_t__ CHANNEL_TLV_LIST_END ;
 int DP (int ,char*,int,scalar_t__,int ) ;
 int MAX_TLVS_IN_LIST ;
 int WARN (int,char*) ;

void bnx2x_dp_tlv_list(struct bnx2x *bp, void *tlvs_list)
{
 int i = 1;
 struct channel_tlv *tlv = (struct channel_tlv *)tlvs_list;

 while (tlv->type != CHANNEL_TLV_LIST_END) {

  DP(BNX2X_MSG_IOV, "TLV number %d: type %d, length %d\n", i,
     tlv->type, tlv->length);


  tlvs_list += tlv->length;


  tlv = (struct channel_tlv *)tlvs_list;

  i++;


  if (i > MAX_TLVS_IN_LIST) {
   WARN(1, "corrupt tlvs");
   return;
  }
 }


 DP(BNX2X_MSG_IOV, "TLV number %d: type %d, length %d\n", i,
    tlv->type, tlv->length);
}
