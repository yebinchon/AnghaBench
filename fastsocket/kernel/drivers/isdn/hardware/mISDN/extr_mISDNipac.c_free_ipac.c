
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipac_hw {int isac; } ;


 int isac_release (int *) ;

__attribute__((used)) static void
free_ipac(struct ipac_hw *ipac)
{
 isac_release(&ipac->isac);
}
