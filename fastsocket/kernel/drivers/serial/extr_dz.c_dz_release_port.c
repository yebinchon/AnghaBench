
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int mapbase; int * membase; } ;
struct dz_mux {int map_guard; } ;
struct TYPE_2__ {struct dz_mux* mux; } ;


 int atomic_add_return (int,int *) ;
 int dec_kn_slot_size ;
 int iounmap (int *) ;
 int release_mem_region (int ,int ) ;
 TYPE_1__* to_dport (struct uart_port*) ;

__attribute__((used)) static void dz_release_port(struct uart_port *uport)
{
 struct dz_mux *mux = to_dport(uport)->mux;
 int map_guard;

 iounmap(uport->membase);
 uport->membase = ((void*)0);

 map_guard = atomic_add_return(-1, &mux->map_guard);
 if (!map_guard)
  release_mem_region(uport->mapbase, dec_kn_slot_size);
}
