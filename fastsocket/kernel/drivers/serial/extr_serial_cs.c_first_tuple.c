
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tuple_t ;
struct pcmcia_device {int dummy; } ;
typedef int cisparse_t ;


 int pcmcia_get_first_tuple (struct pcmcia_device*,int *) ;
 int pcmcia_get_tuple_data (struct pcmcia_device*,int *) ;
 int pcmcia_parse_tuple (int *,int *) ;

__attribute__((used)) static int
first_tuple(struct pcmcia_device *handle, tuple_t * tuple, cisparse_t * parse)
{
 int i;
 i = pcmcia_get_first_tuple(handle, tuple);
 if (i != 0)
  return i;
 i = pcmcia_get_tuple_data(handle, tuple);
 if (i != 0)
  return i;
 return pcmcia_parse_tuple(tuple, parse);
}
