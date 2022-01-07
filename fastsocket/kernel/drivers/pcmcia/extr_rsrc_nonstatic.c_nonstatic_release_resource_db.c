
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_map {struct resource_map* next; } ;
struct socket_data {struct resource_map io_db; struct resource_map mem_db; } ;
struct pcmcia_socket {struct socket_data* resource_data; } ;


 int kfree (struct resource_map*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rsrc_mutex ;

__attribute__((used)) static void nonstatic_release_resource_db(struct pcmcia_socket *s)
{
 struct socket_data *data = s->resource_data;
 struct resource_map *p, *q;

 mutex_lock(&rsrc_mutex);
 for (p = data->mem_db.next; p != &data->mem_db; p = q) {
  q = p->next;
  kfree(p);
 }
 for (p = data->io_db.next; p != &data->io_db; p = q) {
  q = p->next;
  kfree(p);
 }
 mutex_unlock(&rsrc_mutex);
}
