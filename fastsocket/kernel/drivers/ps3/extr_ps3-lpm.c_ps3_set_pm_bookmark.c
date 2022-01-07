
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int PS3_PM_BOOKMARK_TAG_KERNEL ;
 int PS3_PM_BOOKMARK_TAG_MASK_LO ;
 int get_tb () ;
 int ps3_set_bookmark (int) ;

void ps3_set_pm_bookmark(u64 tag, u64 incident, u64 th_id)
{
 u64 bookmark;

 bookmark = (get_tb() & 0x00000000FFFFFFFFULL) |
  PS3_PM_BOOKMARK_TAG_KERNEL;
 bookmark = ((tag << 56) & PS3_PM_BOOKMARK_TAG_MASK_LO) |
  (incident << 48) | (th_id << 32) | bookmark;
 ps3_set_bookmark(bookmark);
}
