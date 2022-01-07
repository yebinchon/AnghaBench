
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct descriptor {int control; } ;


 int DESCRIPTOR_BRANCH_ALWAYS ;
 int DESCRIPTOR_KEY_IMMEDIATE ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static struct descriptor *find_branch_descriptor(struct descriptor *d, int z)
{
 int b, key;

 b = (le16_to_cpu(d->control) & DESCRIPTOR_BRANCH_ALWAYS) >> 2;
 key = (le16_to_cpu(d->control) & DESCRIPTOR_KEY_IMMEDIATE) >> 8;


 if (z == 2 && (b == 3 || key == 2))
  return d;
 else
  return d + z - 1;
}
