
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct floppy_state {int lock; int state; } ;


 int idle ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int start_request (struct floppy_state*) ;

__attribute__((used)) static void release_drive(struct floppy_state *fs)
{
 unsigned long flags;

 spin_lock_irqsave(&fs->lock, flags);
 fs->state = idle;
 start_request(fs);
 spin_unlock_irqrestore(&fs->lock, flags);
}
