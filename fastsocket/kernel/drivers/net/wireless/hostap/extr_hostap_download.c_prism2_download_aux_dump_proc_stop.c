
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {struct prism2_download_aux_dump* private; } ;
struct prism2_download_aux_dump {TYPE_1__* local; } ;
struct TYPE_2__ {int dev; } ;


 int prism2_enable_aux_port (int ,int ) ;

__attribute__((used)) static void prism2_download_aux_dump_proc_stop(struct seq_file *m, void *v)
{
 struct prism2_download_aux_dump *ctx = m->private;
 prism2_enable_aux_port(ctx->local->dev, 0);
}
