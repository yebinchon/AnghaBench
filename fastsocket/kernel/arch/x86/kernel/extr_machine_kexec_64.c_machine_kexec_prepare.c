
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kimage {int control_code_page; } ;


 unsigned long PAGE_SHIFT ;
 int init_pgtable (struct kimage*,unsigned long) ;
 unsigned long page_to_pfn (int ) ;

int machine_kexec_prepare(struct kimage *image)
{
 unsigned long start_pgtable;
 int result;


 start_pgtable = page_to_pfn(image->control_code_page) << PAGE_SHIFT;


 result = init_pgtable(image, start_pgtable);
 if (result)
  return result;

 return 0;
}
