
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct root_entry {int val; } ;



__attribute__((used)) static inline void set_root_present(struct root_entry *root)
{
 root->val |= 1;
}
