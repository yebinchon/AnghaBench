
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int inchar () ;
 int termch ;

int
skipbl(void)
{
 int c;

 if( termch != 0 ){
  c = termch;
  termch = 0;
 } else
  c = inchar();
 while( c == ' ' || c == '\t' )
  c = inchar();
 return c;
}
