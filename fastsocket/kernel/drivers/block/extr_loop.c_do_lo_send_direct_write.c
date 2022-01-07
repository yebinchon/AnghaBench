
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct loop_device {int lo_backing_file; } ;
struct bio_vec {int bv_page; int bv_len; scalar_t__ bv_offset; } ;
typedef int ssize_t ;
typedef int loff_t ;


 int __do_lo_send_write (int ,scalar_t__,int ,int ) ;
 int cond_resched () ;
 scalar_t__ kmap (int ) ;
 int kunmap (int ) ;

__attribute__((used)) static int do_lo_send_direct_write(struct loop_device *lo,
  struct bio_vec *bvec, loff_t pos, struct page *page)
{
 ssize_t bw = __do_lo_send_write(lo->lo_backing_file,
   kmap(bvec->bv_page) + bvec->bv_offset,
   bvec->bv_len, pos);
 kunmap(bvec->bv_page);
 cond_resched();
 return bw;
}
