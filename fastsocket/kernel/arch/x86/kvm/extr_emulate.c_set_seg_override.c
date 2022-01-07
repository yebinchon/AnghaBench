
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct decode_cache {int has_seg_override; int seg_override; } ;



__attribute__((used)) static void set_seg_override(struct decode_cache *c, int seg)
{
 c->has_seg_override = 1;
 c->seg_override = seg;
}
