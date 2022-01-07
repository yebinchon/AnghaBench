
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_dir_entry {scalar_t__ size; } ;


 int S_IWUSR ;
 int machine_is (int ) ;
 int ofdt_fops ;
 struct proc_dir_entry* proc_create (char*,int ,int *,int *) ;
 int pseries ;

__attribute__((used)) static int proc_ppc64_create_ofdt(void)
{
 struct proc_dir_entry *ent;

 if (!machine_is(pseries))
  return 0;

 ent = proc_create("ppc64/ofdt", S_IWUSR, ((void*)0), &ofdt_fops);
 if (ent)
  ent->size = 0;

 return 0;
}
