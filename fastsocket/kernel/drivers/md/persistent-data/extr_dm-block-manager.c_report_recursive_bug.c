
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ dm_block_t ;


 int DMERR (char*,unsigned long long) ;
 int EINVAL ;

__attribute__((used)) static void report_recursive_bug(dm_block_t b, int r)
{
 if (r == -EINVAL)
  DMERR("recursive acquisition of block %llu requested.",
        (unsigned long long) b);
}
