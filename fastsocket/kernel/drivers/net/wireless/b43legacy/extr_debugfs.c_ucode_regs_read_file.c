
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43legacy_wldev {int dummy; } ;
typedef int ssize_t ;


 int B43legacy_SHM_WIRELESS ;
 int b43legacy_shm_read16 (struct b43legacy_wldev*,int ,int) ;
 int fappend (char*,int,int ) ;

__attribute__((used)) static ssize_t ucode_regs_read_file(struct b43legacy_wldev *dev, char *buf, size_t bufsize)
{
 ssize_t count = 0;
 int i;

 for (i = 0; i < 64; i++) {
  fappend("r%d = 0x%04x\n", i,
   b43legacy_shm_read16(dev, B43legacy_SHM_WIRELESS, i));
 }

 return count;
}
