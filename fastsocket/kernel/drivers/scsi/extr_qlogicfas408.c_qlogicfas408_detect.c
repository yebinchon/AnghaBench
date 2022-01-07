
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int REG1 ;
 int inb (int) ;

int qlogicfas408_detect(int qbase, int int_type)
{
        REG1;
 return (((inb(qbase + 0xe) ^ inb(qbase + 0xe)) == 7) &&
        ((inb(qbase + 0xe) ^ inb(qbase + 0xe)) == 7));
}
