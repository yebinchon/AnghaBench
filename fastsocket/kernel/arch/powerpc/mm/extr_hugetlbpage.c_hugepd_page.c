
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pte_t ;
struct TYPE_3__ {int pd; } ;
typedef TYPE_1__ hugepd_t ;


 int BUG_ON (int) ;
 int HUGEPD_OK ;

__attribute__((used)) static inline pte_t *hugepd_page(hugepd_t hpd)
{
 BUG_ON(!(hpd.pd & HUGEPD_OK));
 return (pte_t *)(hpd.pd & ~HUGEPD_OK);
}
