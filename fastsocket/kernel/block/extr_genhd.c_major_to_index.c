
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BLKDEV_MAJOR_HASH_SIZE ;

__attribute__((used)) static inline int major_to_index(int major)
{
 return major % BLKDEV_MAJOR_HASH_SIZE;
}
