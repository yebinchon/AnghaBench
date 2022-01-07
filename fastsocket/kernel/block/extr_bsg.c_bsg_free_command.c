
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bsg_device {int wq_free; int lock; int queued_cmds; } ;
struct bsg_command {struct bsg_device* bd; } ;


 int bsg_cmd_cachep ;
 int kmem_cache_free (int ,struct bsg_command*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up (int *) ;

__attribute__((used)) static void bsg_free_command(struct bsg_command *bc)
{
 struct bsg_device *bd = bc->bd;
 unsigned long flags;

 kmem_cache_free(bsg_cmd_cachep, bc);

 spin_lock_irqsave(&bd->lock, flags);
 bd->queued_cmds--;
 spin_unlock_irqrestore(&bd->lock, flags);

 wake_up(&bd->wq_free);
}
