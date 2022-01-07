
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jmp_buf ;


 int UML_LONGJMP (int *,int) ;
 scalar_t__ UML_SETJMP (int *) ;

void switch_threads(jmp_buf *me, jmp_buf *you)
{
 if (UML_SETJMP(me) == 0)
  UML_LONGJMP(you, 1);
}
