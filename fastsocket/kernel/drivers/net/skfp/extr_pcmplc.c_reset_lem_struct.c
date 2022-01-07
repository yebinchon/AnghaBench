
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lem_counter {int lem_float_ber; } ;
struct s_phy {TYPE_1__* mib; struct lem_counter lem; } ;
struct TYPE_2__ {int fddiPORTLer_Estimate; } ;



__attribute__((used)) static void reset_lem_struct(struct s_phy *phy)
{
 struct lem_counter *lem = &phy->lem ;

 phy->mib->fddiPORTLer_Estimate = 15 ;
 lem->lem_float_ber = 15 * 100 ;
}
