
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thin_c {int td; } ;
struct dm_thin_new_mapping {int virt_block; struct thin_c* tc; } ;


 int DMERR_LIMIT (char*) ;
 int dm_thin_remove_block (int ,int ) ;
 int process_prepared_discard_passdown (struct dm_thin_new_mapping*) ;

__attribute__((used)) static void process_prepared_discard(struct dm_thin_new_mapping *m)
{
 int r;
 struct thin_c *tc = m->tc;

 r = dm_thin_remove_block(tc->td, m->virt_block);
 if (r)
  DMERR_LIMIT("dm_thin_remove_block() failed");

 process_prepared_discard_passdown(m);
}
