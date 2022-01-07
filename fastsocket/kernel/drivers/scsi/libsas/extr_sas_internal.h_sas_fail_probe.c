
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct domain_device {int port; int sas_addr; scalar_t__ parent; } ;


 int SAS_ADDR (int ) ;
 int SAS_DPRINTK (char*,char const*,char*,int ,int) ;
 int sas_unregister_dev (int ,struct domain_device*) ;

__attribute__((used)) static inline void sas_fail_probe(struct domain_device *dev, const char *func, int err)
{
 SAS_DPRINTK("%s: for %s device %16llx returned %d\n",
      func, dev->parent ? "exp-attached" :
         "direct-attached",
      SAS_ADDR(dev->sas_addr), err);
 sas_unregister_dev(dev->port, dev);
}
