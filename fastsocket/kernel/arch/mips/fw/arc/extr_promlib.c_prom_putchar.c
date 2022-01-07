
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef char CHAR ;


 int ArcWrite (int,char*,int,int *) ;
 int bc_disable () ;
 int bc_enable () ;

void prom_putchar(char c)
{
 ULONG cnt;
 CHAR it = c;

 bc_disable();
 ArcWrite(1, &it, 1, &cnt);
 bc_enable();
}
