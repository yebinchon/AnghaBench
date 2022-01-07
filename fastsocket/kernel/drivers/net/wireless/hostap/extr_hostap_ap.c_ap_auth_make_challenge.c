
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct ap_data {TYPE_1__* crypt; int crypt_priv; } ;
struct TYPE_2__ {scalar_t__ extra_mpdu_prefix_len; scalar_t__ (* encrypt_mpdu ) (struct sk_buff*,int ,int ) ;scalar_t__ extra_mpdu_postfix_len; } ;


 int DEBUG_AP ;
 int GFP_ATOMIC ;
 int PDEBUG (int ,char*) ;
 scalar_t__ WLAN_AUTH_CHALLENGE_LEN ;
 int ap_crypt_init (struct ap_data*) ;
 struct sk_buff* dev_alloc_skb (scalar_t__) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int kfree (char*) ;
 char* kmalloc (scalar_t__,int ) ;
 int memset (int ,int ,scalar_t__) ;
 int skb_copy_from_linear_data_offset (struct sk_buff*,scalar_t__,char*,scalar_t__) ;
 int skb_put (struct sk_buff*,scalar_t__) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;
 scalar_t__ stub1 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static char * ap_auth_make_challenge(struct ap_data *ap)
{
 char *tmpbuf;
 struct sk_buff *skb;

 if (ap->crypt == ((void*)0)) {
  ap_crypt_init(ap);
  if (ap->crypt == ((void*)0))
   return ((void*)0);
 }

 tmpbuf = kmalloc(WLAN_AUTH_CHALLENGE_LEN, GFP_ATOMIC);
 if (tmpbuf == ((void*)0)) {
  PDEBUG(DEBUG_AP, "AP: kmalloc failed for challenge\n");
  return ((void*)0);
 }

 skb = dev_alloc_skb(WLAN_AUTH_CHALLENGE_LEN +
       ap->crypt->extra_mpdu_prefix_len +
       ap->crypt->extra_mpdu_postfix_len);
 if (skb == ((void*)0)) {
  kfree(tmpbuf);
  return ((void*)0);
 }

 skb_reserve(skb, ap->crypt->extra_mpdu_prefix_len);
 memset(skb_put(skb, WLAN_AUTH_CHALLENGE_LEN), 0,
        WLAN_AUTH_CHALLENGE_LEN);
 if (ap->crypt->encrypt_mpdu(skb, 0, ap->crypt_priv)) {
  dev_kfree_skb(skb);
  kfree(tmpbuf);
  return ((void*)0);
 }

 skb_copy_from_linear_data_offset(skb, ap->crypt->extra_mpdu_prefix_len,
      tmpbuf, WLAN_AUTH_CHALLENGE_LEN);
 dev_kfree_skb(skb);

 return tmpbuf;
}
