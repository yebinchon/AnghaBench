
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_breakpoint {int dummy; } ;


 int * breakinfo ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void kgdb_remove_all_hw_break(void)
{
 int i;

 for (i = 0; i < 4; i++)
  memset(&breakinfo[i], 0, sizeof(struct hw_breakpoint));
}
