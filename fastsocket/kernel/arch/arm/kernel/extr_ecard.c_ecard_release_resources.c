
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct expansion_card {int dummy; } ;


 int ECARD_NUM_RESOURCES ;
 scalar_t__ ecard_resource_end (struct expansion_card*,int) ;
 int ecard_resource_len (struct expansion_card*,int) ;
 int ecard_resource_start (struct expansion_card*,int) ;
 int release_mem_region (int ,int ) ;

void ecard_release_resources(struct expansion_card *ec)
{
 int i;

 for (i = 0; i < ECARD_NUM_RESOURCES; i++)
  if (ecard_resource_end(ec, i))
   release_mem_region(ecard_resource_start(ec, i),
        ecard_resource_len(ec, i));
}
