
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cphy {int dummy; } ;


 int cphy_cause_link_change ;
 int mv88x201x_interrupt_clear (struct cphy*) ;

__attribute__((used)) static int mv88x201x_interrupt_handler(struct cphy *cphy)
{

 mv88x201x_interrupt_clear(cphy);




 return cphy_cause_link_change;
}
