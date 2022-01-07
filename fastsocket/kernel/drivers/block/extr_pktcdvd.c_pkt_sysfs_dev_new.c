
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pktcdvd_device {TYPE_1__* dev; void* kobj_wqueue; void* kobj_stat; int name; } ;
struct TYPE_3__ {int kobj; } ;


 scalar_t__ IS_ERR (TYPE_1__*) ;
 int MKDEV (int ,int ) ;
 scalar_t__ class_pktcdvd ;
 TYPE_1__* device_create (scalar_t__,int *,int ,int *,char*,int ) ;
 int kobj_pkt_type_stat ;
 int kobj_pkt_type_wqueue ;
 void* pkt_kobj_create (struct pktcdvd_device*,char*,int *,int *) ;

__attribute__((used)) static void pkt_sysfs_dev_new(struct pktcdvd_device *pd)
{
 if (class_pktcdvd) {
  pd->dev = device_create(class_pktcdvd, ((void*)0), MKDEV(0, 0), ((void*)0),
     "%s", pd->name);
  if (IS_ERR(pd->dev))
   pd->dev = ((void*)0);
 }
 if (pd->dev) {
  pd->kobj_stat = pkt_kobj_create(pd, "stat",
     &pd->dev->kobj,
     &kobj_pkt_type_stat);
  pd->kobj_wqueue = pkt_kobj_create(pd, "write_queue",
     &pd->dev->kobj,
     &kobj_pkt_type_wqueue);
 }
}
