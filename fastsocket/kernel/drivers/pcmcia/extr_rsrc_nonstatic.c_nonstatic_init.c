
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; } ;
struct TYPE_3__ {struct TYPE_3__* next; } ;
struct socket_data {TYPE_2__ io_db; TYPE_1__ mem_db; } ;
struct pcmcia_socket {void* resource_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct socket_data* kzalloc (int,int ) ;
 int nonstatic_autoadd_resources (struct pcmcia_socket*) ;

__attribute__((used)) static int nonstatic_init(struct pcmcia_socket *s)
{
 struct socket_data *data;

 data = kzalloc(sizeof(struct socket_data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->mem_db.next = &data->mem_db;
 data->io_db.next = &data->io_db;

 s->resource_data = (void *) data;

 nonstatic_autoadd_resources(s);

 return 0;
}
