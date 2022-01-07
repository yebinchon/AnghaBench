
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_data {unsigned int rsrc_mem_probe; } ;
struct pcmcia_socket {int features; int state; struct socket_data* resource_data; } ;


 unsigned int MEM_PROBE_HIGH ;
 unsigned int MEM_PROBE_LOW ;
 int SOCKET_PRESENT ;
 int SS_CAP_PAGE_REGS ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int probe_mem ;
 int rsrc_mutex ;
 int validate_mem (struct pcmcia_socket*,unsigned int) ;

__attribute__((used)) static int pcmcia_nonstatic_validate_mem(struct pcmcia_socket *s)
{
 struct socket_data *s_data = s->resource_data;
 unsigned int probe_mask = MEM_PROBE_LOW;
 int ret = 0;

 if (!probe_mem)
  return 0;

 mutex_lock(&rsrc_mutex);

 if (s->features & SS_CAP_PAGE_REGS)
  probe_mask = MEM_PROBE_HIGH;

 if (probe_mask & ~s_data->rsrc_mem_probe) {
  if (s->state & SOCKET_PRESENT)
   ret = validate_mem(s, probe_mask);
  if (!ret)
   s_data->rsrc_mem_probe |= probe_mask;
 }

 mutex_unlock(&rsrc_mutex);

 return ret;
}
