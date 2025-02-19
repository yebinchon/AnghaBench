
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct badblocks {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 size_t ENOSPC ;
 int md_clear_badblocks (struct badblocks*,unsigned long long,int) ;
 scalar_t__ md_set_badblocks (struct badblocks*,unsigned long long,int,int) ;
 int sscanf (char const*,char*,unsigned long long*,int*,char*) ;

__attribute__((used)) static ssize_t
badblocks_store(struct badblocks *bb, const char *page, size_t len, int unack)
{
 unsigned long long sector;
 int length;
 char newline;
 switch (sscanf(page, "%llu %d%c", &sector, &length, &newline)) {
 case 3:
  if (newline != '\n')
   return -EINVAL;
 case 2:
  if (length <= 0)
   return -EINVAL;
  break;
 default:
  return -EINVAL;
 }







 if (md_set_badblocks(bb, sector, length, !unack))
  return len;
 else
  return -ENOSPC;
}
