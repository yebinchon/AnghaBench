
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bsg_device {scalar_t__ queued_cmds; scalar_t__ max_queue; int lock; int name; } ;
struct bsg_command {int list; struct bsg_device* bd; } ;


 int EINVAL ;
 int ENOMEM ;
 struct bsg_command* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int bsg_cmd_cachep ;
 int dprintk (char*,int ,struct bsg_command*) ;
 struct bsg_command* kmem_cache_zalloc (int ,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct bsg_command *bsg_alloc_command(struct bsg_device *bd)
{
 struct bsg_command *bc = ERR_PTR(-EINVAL);

 spin_lock_irq(&bd->lock);

 if (bd->queued_cmds >= bd->max_queue)
  goto out;

 bd->queued_cmds++;
 spin_unlock_irq(&bd->lock);

 bc = kmem_cache_zalloc(bsg_cmd_cachep, GFP_KERNEL);
 if (unlikely(!bc)) {
  spin_lock_irq(&bd->lock);
  bd->queued_cmds--;
  bc = ERR_PTR(-ENOMEM);
  goto out;
 }

 bc->bd = bd;
 INIT_LIST_HEAD(&bc->list);
 dprintk("%s: returning free cmd %p\n", bd->name, bc);
 return bc;
out:
 spin_unlock_irq(&bd->lock);
 return bc;
}
