
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Interface ;


 int ppc6_deselect (int *) ;

__attribute__((used)) static void ppc6_close(Interface *ppc)
{
 ppc6_deselect(ppc);
}
