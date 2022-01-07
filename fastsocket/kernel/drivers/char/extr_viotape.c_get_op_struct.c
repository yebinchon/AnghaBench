
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct op_struct {int com; struct op_struct* next; } ;


 int init_completion (int *) ;
 int memset (struct op_struct*,int ,int) ;
 struct op_struct* op_struct_list ;
 int op_struct_list_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct op_struct *get_op_struct(void)
{
 struct op_struct *retval;
 unsigned long flags;

 spin_lock_irqsave(&op_struct_list_lock, flags);
 retval = op_struct_list;
 if (retval)
  op_struct_list = retval->next;
 spin_unlock_irqrestore(&op_struct_list_lock, flags);
 if (retval) {
  memset(retval, 0, sizeof(*retval));
  init_completion(&retval->com);
 }

 return retval;
}
