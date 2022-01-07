
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef int tmp ;
struct b43legacy_wldev {int dummy; } ;
typedef int ssize_t ;
typedef int __le16 ;


 int B43legacy_SHM_SHARED ;
 int b43legacy_shm_read16 (struct b43legacy_wldev*,int ,int) ;
 int cpu_to_le16 (int ) ;

__attribute__((used)) static ssize_t shm_read_file(struct b43legacy_wldev *dev, char *buf, size_t bufsize)
{
 ssize_t count = 0;
 int i;
 u16 tmp;
 __le16 *le16buf = (__le16 *)buf;

 for (i = 0; i < 0x1000; i++) {
  if (bufsize < sizeof(tmp))
   break;
  tmp = b43legacy_shm_read16(dev, B43legacy_SHM_SHARED, 2 * i);
  le16buf[i] = cpu_to_le16(tmp);
  count += sizeof(tmp);
  bufsize -= sizeof(tmp);
 }

 return count;
}
