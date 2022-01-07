
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef char CHAR ;


 int ArcRead (int ,char*,int,int *) ;
 int bc_disable () ;
 int bc_enable () ;

char prom_getchar(void)
{
 ULONG cnt;
 CHAR c;

 bc_disable();
 ArcRead(0, &c, 1, &cnt);
 bc_enable();

 return c;
}
