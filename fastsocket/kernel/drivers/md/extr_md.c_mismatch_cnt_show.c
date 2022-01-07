
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {int resync_mismatches; } ;
typedef int ssize_t ;


 scalar_t__ atomic64_read (int *) ;
 int sprintf (char*,char*,unsigned long long) ;

__attribute__((used)) static ssize_t
mismatch_cnt_show(struct mddev *mddev, char *page)
{
 return sprintf(page, "%llu\n",
         (unsigned long long)
         atomic64_read(&mddev->resync_mismatches));
}
