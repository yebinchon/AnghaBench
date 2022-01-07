
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct md_rdev {int badblocks; } ;
typedef int ssize_t ;


 int badblocks_store (int *,char const*,size_t,int) ;

__attribute__((used)) static ssize_t ubb_store(struct md_rdev *rdev, const char *page, size_t len)
{
 return badblocks_store(&rdev->badblocks, page, len, 1);
}
