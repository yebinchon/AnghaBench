
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m2p_channel {int * client; int lock; int clk; int name; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int clk_get (int *,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int init_channel(struct m2p_channel *ch)
{
 ch->clk = clk_get(((void*)0), ch->name);
 if (IS_ERR(ch->clk))
  return PTR_ERR(ch->clk);

 spin_lock_init(&ch->lock);
 ch->client = ((void*)0);

 return 0;
}
