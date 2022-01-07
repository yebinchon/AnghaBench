
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rx_comp; } ;
struct bnad {TYPE_1__ bnad_completions; } ;
struct bna_rx {int dummy; } ;


 int complete (int *) ;

__attribute__((used)) static void
bnad_cb_rx_disabled(void *arg, struct bna_rx *rx)
{
 struct bnad *bnad = (struct bnad *)arg;

 complete(&bnad->bnad_completions.rx_comp);
}
