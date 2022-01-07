
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct mm_struct {int flags; } ;


 int MMF_COMPAT ;
 struct vm_area_struct gate_vma ;
 scalar_t__ test_bit (int ,int *) ;

struct vm_area_struct *get_gate_vma(struct mm_struct *mm)
{




 return &gate_vma;
}
