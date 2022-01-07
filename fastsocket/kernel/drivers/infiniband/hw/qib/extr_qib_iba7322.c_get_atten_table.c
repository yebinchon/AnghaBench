
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct txdds_ent {int dummy; } ;


 unsigned int TXDDS_TABLE_SZ ;

__attribute__((used)) static const struct txdds_ent *get_atten_table(const struct txdds_ent *txdds,
            unsigned atten)
{




 if (atten <= 2)
  atten = 1;
 else if (atten > TXDDS_TABLE_SZ)
  atten = TXDDS_TABLE_SZ - 1;
 else
  atten--;
 return txdds + atten;
}
