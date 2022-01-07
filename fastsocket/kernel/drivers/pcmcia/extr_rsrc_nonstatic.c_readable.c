
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int start; } ;
struct TYPE_2__ {struct resource* res; } ;
struct pcmcia_socket {TYPE_1__ cis_mem; int * cis_virt; int map_size; } ;


 int destroy_cis_cache (struct pcmcia_socket*) ;
 int * ioremap (int ,int ) ;
 int iounmap (int *) ;
 int pccard_validate_cis (struct pcmcia_socket*,unsigned int*) ;

__attribute__((used)) static int readable(struct pcmcia_socket *s, struct resource *res,
      unsigned int *count)
{
 int ret = -1;

 s->cis_mem.res = res;
 s->cis_virt = ioremap(res->start, s->map_size);
 if (s->cis_virt) {
  ret = pccard_validate_cis(s, count);

  iounmap(s->cis_virt);
  s->cis_virt = ((void*)0);
  destroy_cis_cache(s);
 }
 s->cis_mem.res = ((void*)0);
 if ((ret != 0) || (*count == 0))
  return 0;
 return 1;
}
