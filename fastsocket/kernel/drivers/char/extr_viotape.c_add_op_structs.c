
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct op_struct {struct op_struct* next; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int clear_op_struct_pool () ;
 struct op_struct* kmalloc (int,int ) ;
 struct op_struct* op_struct_list ;

__attribute__((used)) static int add_op_structs(int structs)
{
 int i;

 for (i = 0; i < structs; ++i) {
  struct op_struct *new_struct =
   kmalloc(sizeof(*new_struct), GFP_KERNEL);
  if (!new_struct) {
   clear_op_struct_pool();
   return -ENOMEM;
  }
  new_struct->next = op_struct_list;
  op_struct_list = new_struct;
 }
 return 0;
}
