
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct op_struct {struct op_struct* next; } ;


 int kfree (struct op_struct*) ;
 struct op_struct* op_struct_list ;

__attribute__((used)) static void clear_op_struct_pool(void)
{
 while (op_struct_list) {
  struct op_struct *toFree = op_struct_list;
  op_struct_list = op_struct_list->next;
  kfree(toFree);
 }
}
