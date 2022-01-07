
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int list; } ;
struct ubi_scan_leb {int pnum; int ec; TYPE_1__ u; } ;
struct list_head {int dummy; } ;
struct ubi_scan_info {int corr_count; struct list_head alien; struct list_head corr; struct list_head erase; struct list_head free; } ;


 int BUG () ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dbg_bld (char*,int,int) ;
 struct ubi_scan_leb* kmalloc (int,int ) ;
 int list_add_tail (int *,struct list_head*) ;

__attribute__((used)) static int add_to_list(struct ubi_scan_info *si, int pnum, int ec,
         struct list_head *list)
{
 struct ubi_scan_leb *seb;

 if (list == &si->free)
  dbg_bld("add to free: PEB %d, EC %d", pnum, ec);
 else if (list == &si->erase)
  dbg_bld("add to erase: PEB %d, EC %d", pnum, ec);
 else if (list == &si->corr) {
  dbg_bld("add to corrupted: PEB %d, EC %d", pnum, ec);
  si->corr_count += 1;
 } else if (list == &si->alien)
  dbg_bld("add to alien: PEB %d, EC %d", pnum, ec);
 else
  BUG();

 seb = kmalloc(sizeof(struct ubi_scan_leb), GFP_KERNEL);
 if (!seb)
  return -ENOMEM;

 seb->pnum = pnum;
 seb->ec = ec;
 list_add_tail(&seb->u.list, list);
 return 0;
}
