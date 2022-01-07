
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sas_rphy {int list; } ;


 int INIT_LIST_HEAD (int *) ;

__attribute__((used)) static void sas_rphy_initialize(struct sas_rphy *rphy)
{
 INIT_LIST_HEAD(&rphy->list);
}
