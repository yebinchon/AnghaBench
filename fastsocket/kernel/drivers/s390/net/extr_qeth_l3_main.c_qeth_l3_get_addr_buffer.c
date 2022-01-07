
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_ipaddr {int proto; int type; } ;
typedef enum qeth_prot_versions { ____Placeholder_qeth_prot_versions } qeth_prot_versions ;


 int GFP_ATOMIC ;
 int QETH_IP_TYPE_NORMAL ;
 struct qeth_ipaddr* kzalloc (int,int ) ;

struct qeth_ipaddr *qeth_l3_get_addr_buffer(
    enum qeth_prot_versions prot)
{
 struct qeth_ipaddr *addr;

 addr = kzalloc(sizeof(struct qeth_ipaddr), GFP_ATOMIC);
 if (addr == ((void*)0)) {
  return ((void*)0);
 }
 addr->type = QETH_IP_TYPE_NORMAL;
 addr->proto = prot;
 return addr;
}
