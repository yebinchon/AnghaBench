
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irte {unsigned int svt; unsigned int sq; unsigned int sid; } ;


 unsigned int SVT_NO_VERIFY ;
 scalar_t__ disable_sourceid_checking ;

__attribute__((used)) static void set_irte_sid(struct irte *irte, unsigned int svt,
    unsigned int sq, unsigned int sid)
{
 if (disable_sourceid_checking)
  svt = SVT_NO_VERIFY;
 irte->svt = svt;
 irte->sq = sq;
 irte->sid = sid;
}
