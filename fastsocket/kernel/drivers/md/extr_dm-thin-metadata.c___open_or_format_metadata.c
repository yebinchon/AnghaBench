
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_pool_metadata {int bm; } ;


 int EPERM ;
 int __format_metadata (struct dm_pool_metadata*) ;
 int __open_metadata (struct dm_pool_metadata*) ;
 int __superblock_all_zeroes (int ,int*) ;

__attribute__((used)) static int __open_or_format_metadata(struct dm_pool_metadata *pmd, bool format_device)
{
 int r, unformatted;

 r = __superblock_all_zeroes(pmd->bm, &unformatted);
 if (r)
  return r;

 if (unformatted)
  return format_device ? __format_metadata(pmd) : -EPERM;

 return __open_metadata(pmd);
}
