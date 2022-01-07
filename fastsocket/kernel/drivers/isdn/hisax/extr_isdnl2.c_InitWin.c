
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Layer2 {int ** windowar; } ;


 int MAX_WINDOW ;

__attribute__((used)) static void
InitWin(struct Layer2 *l2)
{
 int i;

 for (i = 0; i < MAX_WINDOW; i++)
  l2->windowar[i] = ((void*)0);
}
