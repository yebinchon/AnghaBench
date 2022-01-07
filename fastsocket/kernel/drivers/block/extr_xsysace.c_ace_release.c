
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct gendisk {struct ace_device* private_data; } ;
struct ace_device {scalar_t__ users; int lock; int dev; } ;
typedef int fmode_t ;


 int ACE_CTRL ;
 int ACE_CTRL_LOCKREQ ;
 int ace_in (struct ace_device*,int ) ;
 int ace_out (struct ace_device*,int ,int) ;
 int dev_dbg (int ,char*,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ace_release(struct gendisk *disk, fmode_t mode)
{
 struct ace_device *ace = disk->private_data;
 unsigned long flags;
 u16 val;

 dev_dbg(ace->dev, "ace_release() users=%i\n", ace->users - 1);

 spin_lock_irqsave(&ace->lock, flags);
 ace->users--;
 if (ace->users == 0) {
  val = ace_in(ace, ACE_CTRL);
  ace_out(ace, ACE_CTRL, val & ~ACE_CTRL_LOCKREQ);
 }
 spin_unlock_irqrestore(&ace->lock, flags);
 return 0;
}
