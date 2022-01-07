
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_trans {int dummy; } ;
struct iwl_phy_db {struct iwl_trans* trans; } ;


 int GFP_KERNEL ;
 struct iwl_phy_db* kzalloc (int,int ) ;

struct iwl_phy_db *iwl_phy_db_init(struct iwl_trans *trans)
{
 struct iwl_phy_db *phy_db = kzalloc(sizeof(struct iwl_phy_db),
         GFP_KERNEL);

 if (!phy_db)
  return phy_db;

 phy_db->trans = trans;


 return phy_db;
}
