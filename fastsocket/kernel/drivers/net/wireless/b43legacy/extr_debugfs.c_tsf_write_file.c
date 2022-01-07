
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct b43legacy_wldev {int dummy; } ;


 int EINVAL ;
 int b43legacy_tsf_write (struct b43legacy_wldev*,int ) ;
 int sscanf (char const*,char*,unsigned long long*) ;

__attribute__((used)) static int tsf_write_file(struct b43legacy_wldev *dev, const char *buf, size_t count)
{
 u64 tsf;

 if (sscanf(buf, "%llu", (unsigned long long *)(&tsf)) != 1)
  return -EINVAL;
 b43legacy_tsf_write(dev, tsf);

 return 0;
}
