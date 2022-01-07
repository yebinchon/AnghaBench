
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct ioc4_soft {TYPE_1__* is_intr_type; } ;
struct ioc4_intr_info {void* sd_info; int * sd_intr; int sd_bits; } ;
typedef int ioc4_intr_func_f ;
struct TYPE_2__ {struct ioc4_intr_info* is_intr_info; int is_num_intrs; } ;


 int BUG_ON (int) ;
 int IOC4_OTHER_INTR_TYPE ;
 int IOC4_SIO_INTR_TYPE ;
 int MAX_IOC4_INTR_ENTS ;
 int atomic_inc (int *) ;
 int printk (char*,int) ;

__attribute__((used)) static void
intr_connect(struct ioc4_soft *soft, int type,
    uint32_t intrbits, ioc4_intr_func_f * intr, void *info)
{
 int i;
 struct ioc4_intr_info *intr_ptr;

 BUG_ON(!((type == IOC4_SIO_INTR_TYPE)
        || (type == IOC4_OTHER_INTR_TYPE)));

 i = atomic_inc(&soft-> is_intr_type[type].is_num_intrs) - 1;
 BUG_ON(!(i < MAX_IOC4_INTR_ENTS || (printk("i %d\n", i), 0)));


 intr_ptr = &soft->is_intr_type[type].is_intr_info[i];
 intr_ptr->sd_bits = intrbits;
 intr_ptr->sd_intr = intr;
 intr_ptr->sd_info = info;
}
