
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*) ;
 scalar_t__ show_activity ;

__attribute__((used)) static void first_line(void)
{
 if (show_activity)
  printf("Name                   Objects      Alloc       Free   %%Fast Fallb O\n");
 else
  printf("Name                   Objects Objsize    Space "
   "Slabs/Part/Cpu  O/S O %%Fr %%Ef Flg\n");
}
