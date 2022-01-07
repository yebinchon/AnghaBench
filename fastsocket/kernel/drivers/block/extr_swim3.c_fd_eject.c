
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct floppy_state {int ejected; } ;


 int DISK_IN ;
 int EINTR ;
 int EJECT ;
 int RELAX ;
 int current ;
 int ejecting ;
 int grab_drive (struct floppy_state*,int ,int) ;
 int release_drive (struct floppy_state*) ;
 int schedule_timeout_interruptible (int) ;
 scalar_t__ signal_pending (int ) ;
 int swim3_action (struct floppy_state*,int ) ;
 scalar_t__ swim3_readbit (struct floppy_state*,int ) ;
 int swim3_select (struct floppy_state*,int ) ;
 int udelay (int) ;

__attribute__((used)) static int fd_eject(struct floppy_state *fs)
{
 int err, n;

 err = grab_drive(fs, ejecting, 1);
 if (err)
  return err;
 swim3_action(fs, EJECT);
 for (n = 20; n > 0; --n) {
  if (signal_pending(current)) {
   err = -EINTR;
   break;
  }
  swim3_select(fs, RELAX);
  schedule_timeout_interruptible(1);
  if (swim3_readbit(fs, DISK_IN) == 0)
   break;
 }
 swim3_select(fs, RELAX);
 udelay(150);
 fs->ejected = 1;
 release_drive(fs);
 return err;
}
