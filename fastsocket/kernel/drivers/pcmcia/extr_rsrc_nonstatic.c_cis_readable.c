
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct pcmcia_socket {int dummy; } ;


 int IORESOURCE_MEM ;
 struct resource* claim_region (struct pcmcia_socket*,unsigned long,unsigned long,int ,char*) ;
 int free_region (struct resource*) ;
 int readable (struct pcmcia_socket*,struct resource*,unsigned int*) ;

__attribute__((used)) static int
cis_readable(struct pcmcia_socket *s, unsigned long base, unsigned long size)
{
 struct resource *res1, *res2;
 unsigned int info1, info2;
 int ret = 0;

 res1 = claim_region(s, base, size/2, IORESOURCE_MEM, "cs memory probe");
 res2 = claim_region(s, base + size/2, size/2, IORESOURCE_MEM, "cs memory probe");

 if (res1 && res2) {
  ret = readable(s, res1, &info1);
  ret += readable(s, res2, &info2);
 }

 free_region(res2);
 free_region(res1);

 return (ret == 2) && (info1 == info2);
}
