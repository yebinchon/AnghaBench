
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int instr ;


 int BB_END (int ) ;
 int STK_ALLOC_MATCH (int ) ;

__attribute__((used)) static instr *
seek_prologue(instr * pc)
{
 while (!STK_ALLOC_MATCH(*pc))
  --pc;
 while (!BB_END(*(pc - 1)))
  --pc;
 return pc;
}
