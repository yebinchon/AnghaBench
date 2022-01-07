
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kimage {int control_code_page; } ;


 int machine_kexec_alloc_page_tables (struct kimage*) ;
 int machine_kexec_prepare_page_tables (struct kimage*) ;
 scalar_t__ nx_enabled ;
 int set_pages_x (int ,int) ;

int machine_kexec_prepare(struct kimage *image)
{
 int error;

 if (nx_enabled)
  set_pages_x(image->control_code_page, 1);
 error = machine_kexec_alloc_page_tables(image);
 if (error)
  return error;
 machine_kexec_prepare_page_tables(image);
 return 0;
}
