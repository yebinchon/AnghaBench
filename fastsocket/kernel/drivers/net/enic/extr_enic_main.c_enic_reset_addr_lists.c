
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enic {scalar_t__ flags; scalar_t__ uc_count; scalar_t__ mc_count; } ;



void enic_reset_addr_lists(struct enic *enic)
{
 enic->mc_count = 0;
 enic->uc_count = 0;
 enic->flags = 0;
}
