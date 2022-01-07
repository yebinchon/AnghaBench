
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stripe_head {int disks; } ;
struct raid5_percpu {int * scribble; } ;
struct page {int dummy; } ;
typedef int addr_conv_t ;



__attribute__((used)) static addr_conv_t *to_addr_conv(struct stripe_head *sh,
     struct raid5_percpu *percpu)
{
 return percpu->scribble + sizeof(struct page *) * (sh->disks + 2);
}
