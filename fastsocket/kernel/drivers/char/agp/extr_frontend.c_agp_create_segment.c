
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agp_segment_priv {int prot; int pg_count; int pg_start; } ;
struct agp_segment {int prot; int pg_count; int pg_start; } ;
struct agp_region {int seg_count; struct agp_segment_priv* seg_list; } ;
struct agp_client {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int agp_add_seg_to_client (struct agp_client*,struct agp_segment_priv**,size_t) ;
 int agp_convert_mmap_flags (int ) ;
 int kfree (struct agp_segment_priv*) ;
 struct agp_segment_priv** kmalloc (int,int ) ;
 struct agp_segment_priv* kzalloc (int,int ) ;

int agp_create_segment(struct agp_client *client, struct agp_region *region)
{
 struct agp_segment_priv **ret_seg;
 struct agp_segment_priv *seg;
 struct agp_segment *user_seg;
 size_t i;

 seg = kzalloc((sizeof(struct agp_segment_priv) * region->seg_count), GFP_KERNEL);
 if (seg == ((void*)0)) {
  kfree(region->seg_list);
  region->seg_list = ((void*)0);
  return -ENOMEM;
 }
 user_seg = region->seg_list;

 for (i = 0; i < region->seg_count; i++) {
  seg[i].pg_start = user_seg[i].pg_start;
  seg[i].pg_count = user_seg[i].pg_count;
  seg[i].prot = agp_convert_mmap_flags(user_seg[i].prot);
 }
 kfree(region->seg_list);
 region->seg_list = ((void*)0);

 ret_seg = kmalloc(sizeof(void *), GFP_KERNEL);
 if (ret_seg == ((void*)0)) {
  kfree(seg);
  return -ENOMEM;
 }
 *ret_seg = seg;
 agp_add_seg_to_client(client, ret_seg, region->seg_count);
 return 0;
}
