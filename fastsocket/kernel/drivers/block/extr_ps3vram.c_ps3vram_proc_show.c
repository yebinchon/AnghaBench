
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {struct ps3vram_priv* private; } ;
struct TYPE_2__ {int miss; int hit; } ;
struct ps3vram_priv {TYPE_1__ cache; } ;


 int seq_printf (struct seq_file*,char*,int ,int ) ;

__attribute__((used)) static int ps3vram_proc_show(struct seq_file *m, void *v)
{
 struct ps3vram_priv *priv = m->private;

 seq_printf(m, "hit:%u\nmiss:%u\n", priv->cache.hit, priv->cache.miss);
 return 0;
}
