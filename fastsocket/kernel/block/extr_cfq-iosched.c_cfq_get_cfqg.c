
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfq_group {int dummy; } ;
struct cfq_data {struct cfq_group root_group; } ;



__attribute__((used)) static struct cfq_group *cfq_get_cfqg(struct cfq_data *cfqd)
{
 return &cfqd->root_group;
}
