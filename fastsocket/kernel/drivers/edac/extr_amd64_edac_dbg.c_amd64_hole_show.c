
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mem_ctl_info {int dummy; } ;
typedef int ssize_t ;


 int amd64_get_dram_hole_info (struct mem_ctl_info*,int *,int *,int *) ;
 int sprintf (char*,char*,int ,int ,int ) ;

__attribute__((used)) static ssize_t amd64_hole_show(struct mem_ctl_info *mci, char *data)
{
 u64 hole_base = 0;
 u64 hole_offset = 0;
 u64 hole_size = 0;

 amd64_get_dram_hole_info(mci, &hole_base, &hole_offset, &hole_size);

 return sprintf(data, "%llx %llx %llx\n", hole_base, hole_offset,
       hole_size);
}
