
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdesc_mem_ops {struct mdesc_handle* (* alloc ) (unsigned int) ;} ;
struct mdesc_handle {struct mdesc_mem_ops* mops; } ;


 struct mdesc_handle* stub1 (unsigned int) ;

__attribute__((used)) static struct mdesc_handle *mdesc_alloc(unsigned int mdesc_size,
     struct mdesc_mem_ops *mops)
{
 struct mdesc_handle *hp = mops->alloc(mdesc_size);

 if (hp)
  hp->mops = mops;

 return hp;
}
