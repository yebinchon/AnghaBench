
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int OP0_DIAGNOSE ;
 int SR0_DIAGNOSE_PASSED ;
 int wv_82593_cmd (struct net_device*,char*,int ,int ) ;

__attribute__((used)) static inline int
wv_diag(struct net_device * dev)
{
  return(wv_82593_cmd(dev, "wv_diag(): diagnose",
        OP0_DIAGNOSE, SR0_DIAGNOSE_PASSED));
}
