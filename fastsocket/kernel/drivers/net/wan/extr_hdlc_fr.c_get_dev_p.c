
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_3__ {struct net_device* main; struct net_device* ether; } ;
typedef TYPE_1__ pvc_device ;


 int ARPHRD_ETHER ;

__attribute__((used)) static inline struct net_device** get_dev_p(pvc_device *pvc, int type)
{
 if (type == ARPHRD_ETHER)
  return &pvc->ether;
 else
  return &pvc->main;
}
