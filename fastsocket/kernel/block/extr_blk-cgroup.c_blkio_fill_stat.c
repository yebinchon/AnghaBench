
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct cgroup_map_cb {int (* fill ) (struct cgroup_map_cb*,char*,int ) ;} ;
typedef int dev_t ;


 int blkio_get_key_name (int ,int ,char*,int,int) ;
 int stub1 (struct cgroup_map_cb*,char*,int ) ;

__attribute__((used)) static uint64_t blkio_fill_stat(char *str, int chars_left, uint64_t val,
    struct cgroup_map_cb *cb, dev_t dev)
{
 blkio_get_key_name(0, dev, str, chars_left, 1);
 cb->fill(cb, str, val);
 return val;
}
