
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdesc_hdr {int dummy; } ;
struct mdesc_handle {int dummy; } ;


 int GFP_KERNEL ;
 int __GFP_NOFAIL ;
 void* kmalloc (unsigned int,int) ;
 int mdesc_handle_init (struct mdesc_handle*,unsigned int,void*) ;

__attribute__((used)) static struct mdesc_handle *mdesc_kmalloc(unsigned int mdesc_size)
{
 unsigned int handle_size;
 void *base;

 handle_size = (sizeof(struct mdesc_handle) -
         sizeof(struct mdesc_hdr) +
         mdesc_size);

 base = kmalloc(handle_size + 15, GFP_KERNEL | __GFP_NOFAIL);
 if (base) {
  struct mdesc_handle *hp;
  unsigned long addr;

  addr = (unsigned long)base;
  addr = (addr + 15UL) & ~15UL;
  hp = (struct mdesc_handle *) addr;

  mdesc_handle_init(hp, handle_size, base);
  return hp;
 }

 return ((void*)0);
}
