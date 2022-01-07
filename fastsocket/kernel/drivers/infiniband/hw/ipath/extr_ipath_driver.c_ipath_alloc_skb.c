
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {scalar_t__ data; } ;
struct ipath_devdata {int ipath_ibmaxlen; int ipath_flags; } ;
typedef int gfp_t ;


 int IPATH_4BYTE_TID ;
 struct sk_buff* __dev_alloc_skb (int,int ) ;
 int ipath_dev_err (struct ipath_devdata*,char*,int) ;
 int skb_reserve (struct sk_buff*,int) ;

struct sk_buff *ipath_alloc_skb(struct ipath_devdata *dd,
    gfp_t gfp_mask)
{
 struct sk_buff *skb;
 u32 len;
 len = dd->ipath_ibmaxlen + 4;

 if (dd->ipath_flags & IPATH_4BYTE_TID) {




  len += 2047;
 }

 skb = __dev_alloc_skb(len, gfp_mask);
 if (!skb) {
  ipath_dev_err(dd, "Failed to allocate skbuff, length %u\n",
         len);
  goto bail;
 }

 skb_reserve(skb, 4);

 if (dd->ipath_flags & IPATH_4BYTE_TID) {
  u32 una = (unsigned long)skb->data & 2047;
  if (una)
   skb_reserve(skb, 2048 - una);
 }

bail:
 return skb;
}
