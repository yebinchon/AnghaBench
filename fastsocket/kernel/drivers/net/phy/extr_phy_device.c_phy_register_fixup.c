
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct phy_fixup {int (* run ) (struct phy_device*) ;int list; void* phy_uid_mask; void* phy_uid; int bus_id; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct phy_fixup* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int phy_fixup_list ;
 int phy_fixup_lock ;
 int strlcpy (int ,char const*,int) ;

int phy_register_fixup(const char *bus_id, u32 phy_uid, u32 phy_uid_mask,
  int (*run)(struct phy_device *))
{
 struct phy_fixup *fixup;

 fixup = kzalloc(sizeof(struct phy_fixup), GFP_KERNEL);
 if (!fixup)
  return -ENOMEM;

 strlcpy(fixup->bus_id, bus_id, sizeof(fixup->bus_id));
 fixup->phy_uid = phy_uid;
 fixup->phy_uid_mask = phy_uid_mask;
 fixup->run = run;

 mutex_lock(&phy_fixup_lock);
 list_add_tail(&fixup->list, &phy_fixup_list);
 mutex_unlock(&phy_fixup_lock);

 return 0;
}
