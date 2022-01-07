
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_gmbus {int force_bit; } ;
struct i2c_adapter {int name; } ;


 int DRM_DEBUG_KMS (char*,char*,int ,int) ;
 struct intel_gmbus* to_intel_gmbus (struct i2c_adapter*) ;

void intel_gmbus_force_bit(struct i2c_adapter *adapter, bool force_bit)
{
 struct intel_gmbus *bus = to_intel_gmbus(adapter);

 bus->force_bit += force_bit ? 1 : -1;
 DRM_DEBUG_KMS("%sabling bit-banging on %s. force bit now %d\n",
        force_bit ? "en" : "dis", adapter->name,
        bus->force_bit);
}
