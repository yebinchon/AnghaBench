
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int inchar () ;

__attribute__((used)) static int
bsesc(void)
{
 int c;

 c = inchar();
 switch( c ){
 case 'n': c = '\n'; break;
 case 'r': c = '\r'; break;
 case 'b': c = '\b'; break;
 case 't': c = '\t'; break;
 }
 return c;
}
