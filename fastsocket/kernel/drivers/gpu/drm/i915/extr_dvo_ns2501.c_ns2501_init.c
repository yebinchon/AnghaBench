
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ns2501_priv {int quiet; int reg_8_shadow; scalar_t__ reg_8_set; } ;
struct intel_dvo_device {int slave_addr; struct ns2501_priv* dev_priv; struct i2c_adapter* i2c_bus; } ;
struct i2c_adapter {int name; } ;


 int DRM_DEBUG_KMS (char*,...) ;
 int GFP_KERNEL ;
 int NS2501_8_BPAS ;
 int NS2501_8_HEN ;
 int NS2501_8_PD ;
 int NS2501_8_VEN ;
 int NS2501_DID ;
 int NS2501_DID_LO ;
 int NS2501_VID ;
 int NS2501_VID_LO ;
 int kfree (struct ns2501_priv*) ;
 struct ns2501_priv* kzalloc (int,int ) ;
 int ns2501_readb (struct intel_dvo_device*,int ,unsigned char*) ;

__attribute__((used)) static bool ns2501_init(struct intel_dvo_device *dvo,
   struct i2c_adapter *adapter)
{

 struct ns2501_priv *ns;
 unsigned char ch;

 ns = kzalloc(sizeof(struct ns2501_priv), GFP_KERNEL);
 if (ns == ((void*)0))
  return 0;

 dvo->i2c_bus = adapter;
 dvo->dev_priv = ns;
 ns->quiet = 1;

 if (!ns2501_readb(dvo, NS2501_VID_LO, &ch))
  goto out;

 if (ch != (NS2501_VID & 0xff)) {
  DRM_DEBUG_KMS("ns2501 not detected got %d: from %s Slave %d.\n",
         ch, adapter->name, dvo->slave_addr);
  goto out;
 }

 if (!ns2501_readb(dvo, NS2501_DID_LO, &ch))
  goto out;

 if (ch != (NS2501_DID & 0xff)) {
  DRM_DEBUG_KMS("ns2501 not detected got %d: from %s Slave %d.\n",
         ch, adapter->name, dvo->slave_addr);
  goto out;
 }
 ns->quiet = 0;
 ns->reg_8_set = 0;
 ns->reg_8_shadow =
     NS2501_8_PD | NS2501_8_BPAS | NS2501_8_VEN | NS2501_8_HEN;

 DRM_DEBUG_KMS("init ns2501 dvo controller successfully!\n");
 return 1;

out:
 kfree(ns);
 return 0;
}
