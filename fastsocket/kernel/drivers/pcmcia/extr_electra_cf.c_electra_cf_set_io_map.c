
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_socket {int dummy; } ;
struct pccard_io_map {int dummy; } ;



__attribute__((used)) static int electra_cf_set_io_map(struct pcmcia_socket *s,
     struct pccard_io_map *io)
{
 return 0;
}
