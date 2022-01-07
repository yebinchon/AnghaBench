
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hlist_node {int dummy; } ;
struct drm_open_hash {int dummy; } ;


 int EINVAL ;
 struct hlist_node* drm_ht_find_key (struct drm_open_hash*,unsigned long) ;
 int hlist_del_init (struct hlist_node*) ;

int drm_ht_remove_key(struct drm_open_hash *ht, unsigned long key)
{
 struct hlist_node *list;

 list = drm_ht_find_key(ht, key);
 if (list) {
  hlist_del_init(list);
  return 0;
 }
 return -EINVAL;
}
