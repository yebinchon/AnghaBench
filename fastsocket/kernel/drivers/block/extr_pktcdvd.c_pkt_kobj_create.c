
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pktcdvd_kobj {int kobj; struct pktcdvd_device* pd; } ;
struct pktcdvd_device {int dummy; } ;
struct kobject {int dummy; } ;
struct kobj_type {int dummy; } ;


 int GFP_KERNEL ;
 int KOBJ_ADD ;
 int kobject_init_and_add (int *,struct kobj_type*,struct kobject*,char*,char const*) ;
 int kobject_put (int *) ;
 int kobject_uevent (int *,int ) ;
 struct pktcdvd_kobj* kzalloc (int,int ) ;

__attribute__((used)) static struct pktcdvd_kobj* pkt_kobj_create(struct pktcdvd_device *pd,
     const char* name,
     struct kobject* parent,
     struct kobj_type* ktype)
{
 struct pktcdvd_kobj *p;
 int error;

 p = kzalloc(sizeof(*p), GFP_KERNEL);
 if (!p)
  return ((void*)0);
 p->pd = pd;
 error = kobject_init_and_add(&p->kobj, ktype, parent, "%s", name);
 if (error) {
  kobject_put(&p->kobj);
  return ((void*)0);
 }
 kobject_uevent(&p->kobj, KOBJ_ADD);
 return p;
}
