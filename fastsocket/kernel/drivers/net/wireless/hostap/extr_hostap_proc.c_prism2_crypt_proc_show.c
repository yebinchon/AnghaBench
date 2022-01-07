
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct seq_file {TYPE_4__* private; } ;
struct TYPE_7__ {TYPE_2__** crypt; int tx_keyidx; } ;
struct TYPE_8__ {TYPE_3__ crypt_info; } ;
typedef TYPE_4__ local_info_t ;
struct TYPE_6__ {int priv; TYPE_1__* ops; } ;
struct TYPE_5__ {int (* print_stats ) (struct seq_file*,int ) ;} ;


 int WEP_KEYS ;
 int seq_printf (struct seq_file*,char*,int ) ;
 int stub1 (struct seq_file*,int ) ;

__attribute__((used)) static int prism2_crypt_proc_show(struct seq_file *m, void *v)
{
 local_info_t *local = m->private;
 int i;

 seq_printf(m, "tx_keyidx=%d\n", local->crypt_info.tx_keyidx);
 for (i = 0; i < WEP_KEYS; i++) {
  if (local->crypt_info.crypt[i] &&
      local->crypt_info.crypt[i]->ops &&
      local->crypt_info.crypt[i]->ops->print_stats) {
   local->crypt_info.crypt[i]->ops->print_stats(
    m, local->crypt_info.crypt[i]->priv);
  }
 }
 return 0;
}
