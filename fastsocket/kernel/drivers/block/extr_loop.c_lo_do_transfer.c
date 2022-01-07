
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct loop_device {int (* transfer ) (struct loop_device*,int,struct page*,unsigned int,struct page*,unsigned int,int,int ) ;} ;
typedef int sector_t ;


 int stub1 (struct loop_device*,int,struct page*,unsigned int,struct page*,unsigned int,int,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int
lo_do_transfer(struct loop_device *lo, int cmd,
        struct page *rpage, unsigned roffs,
        struct page *lpage, unsigned loffs,
        int size, sector_t rblock)
{
 if (unlikely(!lo->transfer))
  return 0;

 return lo->transfer(lo, cmd, rpage, roffs, lpage, loffs, size, rblock);
}
