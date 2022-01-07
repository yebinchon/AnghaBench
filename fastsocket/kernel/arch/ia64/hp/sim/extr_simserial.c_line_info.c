
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct serial_state {size_t type; int irq; int port; int line; } ;
struct seq_file {int dummy; } ;
struct TYPE_2__ {int name; } ;


 int seq_printf (struct seq_file*,char*,int ,int ,int ,int ) ;
 TYPE_1__* uart_config ;

__attribute__((used)) static inline void line_info(struct seq_file *m, struct serial_state *state)
{
 seq_printf(m, "%d: uart:%s port:%lX irq:%d\n",
         state->line, uart_config[state->type].name,
         state->port, state->irq);
}
