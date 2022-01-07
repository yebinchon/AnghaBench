
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct sysdev_attribute {int dummy; } ;
struct sys_device {unsigned int id; } ;
typedef size_t ssize_t ;
struct TYPE_3__ {int mm; } ;


 size_t EINVAL ;
 int VM_READ ;
 TYPE_1__* current ;
 int get_user_pages (TYPE_1__*,int ,int ,int,int ,int ,int *,int *) ;
 int ia64_tpa (int ) ;
 int * phys_addr ;
 int printk (char*,int ) ;
 int simple_strtoull (char const*,int *,int) ;

__attribute__((used)) static ssize_t
store_virtual_to_phys(struct sys_device *dev, struct sysdev_attribute *attr,
   const char *buf, size_t size)
{
 unsigned int cpu=dev->id;
 u64 virt_addr=simple_strtoull(buf, ((void*)0), 16);
 int ret;

        ret = get_user_pages(current, current->mm, virt_addr,
                        1, VM_READ, 0, ((void*)0), ((void*)0));
 if (ret<=0) {



  return -EINVAL;
 }

 phys_addr[cpu] = ia64_tpa(virt_addr);
 return size;
}
