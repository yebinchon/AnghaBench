
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct op_struct {struct op_struct* next; } ;


 struct op_struct* op_struct_list ;
 int op_struct_list_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void free_op_struct(struct op_struct *op_struct)
{
 unsigned long flags;

 spin_lock_irqsave(&op_struct_list_lock, flags);
 op_struct->next = op_struct_list;
 op_struct_list = op_struct;
 spin_unlock_irqrestore(&op_struct_list_lock, flags);
}
