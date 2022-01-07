
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * parent; } ;
struct TYPE_12__ {int name; TYPE_1__ dev; TYPE_5__* algo_data; int owner; } ;
struct TYPE_11__ {struct igb_adapter* data; } ;
struct TYPE_10__ {scalar_t__ type; } ;
struct TYPE_9__ {TYPE_4__ mac; } ;
struct igb_adapter {TYPE_6__ i2c_adap; TYPE_2__* pdev; TYPE_5__ i2c_algo; TYPE_3__ hw; } ;
typedef int s32 ;
struct TYPE_8__ {int dev; } ;


 int E1000_SUCCESS ;
 int THIS_MODULE ;
 scalar_t__ e1000_i350 ;
 int i2c_bit_add_bus (TYPE_6__*) ;
 TYPE_5__ igb_i2c_algo ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static s32 igb_init_i2c(struct igb_adapter *adapter)
{
 s32 status = E1000_SUCCESS;


 if (adapter->hw.mac.type != e1000_i350)
  return E1000_SUCCESS;





 adapter->i2c_adap.owner = THIS_MODULE;
 adapter->i2c_algo = igb_i2c_algo;
 adapter->i2c_algo.data = adapter;
 adapter->i2c_adap.algo_data = &adapter->i2c_algo;
 adapter->i2c_adap.dev.parent = &adapter->pdev->dev;
 strlcpy(adapter->i2c_adap.name, "igb BB",
  sizeof(adapter->i2c_adap.name));
 status = i2c_bit_add_bus(&adapter->i2c_adap);
 return status;
}
