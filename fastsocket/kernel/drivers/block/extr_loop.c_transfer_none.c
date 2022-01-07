
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct loop_device {int dummy; } ;
typedef int sector_t ;


 int KM_USER0 ;
 int KM_USER1 ;
 int READ ;
 int cond_resched () ;
 char* kmap_atomic (struct page*,int ) ;
 int kunmap_atomic (char*,int ) ;
 int memcpy (char*,char*,int) ;

__attribute__((used)) static int transfer_none(struct loop_device *lo, int cmd,
    struct page *raw_page, unsigned raw_off,
    struct page *loop_page, unsigned loop_off,
    int size, sector_t real_block)
{
 char *raw_buf = kmap_atomic(raw_page, KM_USER0) + raw_off;
 char *loop_buf = kmap_atomic(loop_page, KM_USER1) + loop_off;

 if (cmd == READ)
  memcpy(loop_buf, raw_buf, size);
 else
  memcpy(raw_buf, loop_buf, size);

 kunmap_atomic(loop_buf, KM_USER1);
 kunmap_atomic(raw_buf, KM_USER0);
 cond_resched();
 return 0;
}
