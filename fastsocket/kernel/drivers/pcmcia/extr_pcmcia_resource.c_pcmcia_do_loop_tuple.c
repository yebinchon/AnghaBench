
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tuple_t ;
struct pcmcia_loop_mem {int (* loop_tuple ) (int ,int *,int ) ;int priv_data; int p_dev; } ;
typedef int cisparse_t ;


 int stub1 (int ,int *,int ) ;

__attribute__((used)) static int pcmcia_do_loop_tuple(tuple_t *tuple, cisparse_t *parse, void *priv)
{
 struct pcmcia_loop_mem *loop = priv;

 return loop->loop_tuple(loop->p_dev, tuple, loop->priv_data);
}
