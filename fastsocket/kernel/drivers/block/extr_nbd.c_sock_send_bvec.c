
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nbd_device {int dummy; } ;
struct bio_vec {int bv_offset; int bv_page; int bv_len; } ;


 void* kmap (int ) ;
 int kunmap (int ) ;
 int sock_xmit (struct nbd_device*,int,void*,int ,int) ;

__attribute__((used)) static inline int sock_send_bvec(struct nbd_device *lo, struct bio_vec *bvec,
  int flags)
{
 int result;
 void *kaddr = kmap(bvec->bv_page);
 result = sock_xmit(lo, 1, kaddr + bvec->bv_offset, bvec->bv_len, flags);
 kunmap(bvec->bv_page);
 return result;
}
