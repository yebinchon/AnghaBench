
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct be_adapter {int dummy; } ;


 int LANCER_FW_DUMP_FILE ;
 int MAX_PRIVILEGES ;
 int be_cmd_get_reg_len (struct be_adapter*,int*) ;
 scalar_t__ be_physfn (struct be_adapter*) ;
 int check_privilege (struct be_adapter*,int ) ;
 scalar_t__ lancer_chip (struct be_adapter*) ;
 int lancer_cmd_get_file_len (struct be_adapter*,int ) ;
 struct be_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int
be_get_reg_len(struct net_device *netdev)
{
 struct be_adapter *adapter = netdev_priv(netdev);
 u32 log_size = 0;

 if (!check_privilege(adapter, MAX_PRIVILEGES))
  return 0;

 if (be_physfn(adapter)) {
  if (lancer_chip(adapter))
   log_size = lancer_cmd_get_file_len(adapter,
     LANCER_FW_DUMP_FILE);
  else
   be_cmd_get_reg_len(adapter, &log_size);
 }
 return log_size;
}
