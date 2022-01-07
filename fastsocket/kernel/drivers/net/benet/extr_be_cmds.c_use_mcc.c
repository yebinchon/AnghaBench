
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int created; } ;
struct TYPE_4__ {TYPE_1__ q; } ;
struct be_adapter {TYPE_2__ mcc_obj; } ;



__attribute__((used)) static bool use_mcc(struct be_adapter *adapter)
{
 return adapter->mcc_obj.q.created;
}
