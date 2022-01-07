
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct bin_attribute {int dummy; } ;
typedef int ssize_t ;
typedef int loff_t ;
struct TYPE_4__ {size_t scp_data_len; void* scp_data; } ;
struct TYPE_5__ {TYPE_1__ fcp; } ;
struct TYPE_6__ {TYPE_2__ ipl_info; } ;


 int memory_read_from_buffer (char*,size_t,int *,void*,size_t) ;
 TYPE_3__* reipl_block_fcp ;

__attribute__((used)) static ssize_t reipl_fcp_scpdata_read(struct file *filp, struct kobject *kobj,
          struct bin_attribute *attr,
          char *buf, loff_t off, size_t count)
{
 size_t size = reipl_block_fcp->ipl_info.fcp.scp_data_len;
 void *scp_data = reipl_block_fcp->ipl_info.fcp.scp_data;

 return memory_read_from_buffer(buf, count, &off, scp_data, size);
}
