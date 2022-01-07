
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int ) ;
 int QETH_DBF_TEXT (int ,int,char*) ;
 int TRACE ;
 int qeth_l3_ip6_notifier ;
 int qeth_l3_ip_notifier ;
 int unregister_inet6addr_notifier (int *) ;
 int unregister_inetaddr_notifier (int *) ;

__attribute__((used)) static void qeth_l3_unregister_notifiers(void)
{

 QETH_DBF_TEXT(TRACE, 5, "unregnot");
 BUG_ON(unregister_inetaddr_notifier(&qeth_l3_ip_notifier));



}
