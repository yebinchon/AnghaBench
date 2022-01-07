
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {struct prism2_download_aux_dump* private; } ;
struct prism2_download_aux_dump {int page; TYPE_1__* local; } ;
struct TYPE_2__ {int dev; } ;


 int hfa384x_from_aux (int ,unsigned long,int,int ) ;
 int seq_write (struct seq_file*,int ,int) ;

__attribute__((used)) static int prism2_download_aux_dump_proc_show(struct seq_file *m, void *v)
{
 struct prism2_download_aux_dump *ctx = m->private;

 hfa384x_from_aux(ctx->local->dev, (unsigned long)v - 1, 0x80, ctx->page);
 seq_write(m, ctx->page, 0x80);
 return 0;
}
