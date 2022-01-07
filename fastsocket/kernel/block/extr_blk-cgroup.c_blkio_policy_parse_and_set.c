
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct gendisk {int dummy; } ;
struct TYPE_2__ {unsigned long weight; unsigned int iops; scalar_t__ bps; } ;
struct blkio_policy_node {int plid; int fileid; TYPE_1__ val; int dev; } ;
typedef int s ;
typedef enum blkio_policy_id { ____Placeholder_blkio_policy_id } blkio_policy_id ;
typedef int dev_t ;
 unsigned long BLKIO_WEIGHT_MAX ;
 unsigned long BLKIO_WEIGHT_MIN ;
 int BUG () ;
 int EINVAL ;
 int ENODEV ;
 int MKDEV (unsigned long,unsigned long) ;
 scalar_t__ THROTL_IOPS_MAX ;
 struct gendisk* get_gendisk (int ,int*) ;
 int memset (char**,int ,int) ;
 int put_disk (struct gendisk*) ;
 int strict_strtoul (char*,int,unsigned long*) ;
 int strict_strtoull (char*,int,scalar_t__*) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static int blkio_policy_parse_and_set(char *buf,
 struct blkio_policy_node *newpn, enum blkio_policy_id plid, int fileid)
{
 struct gendisk *disk = ((void*)0);
 char *s[4], *p, *major_s = ((void*)0), *minor_s = ((void*)0);
 unsigned long major, minor, temp;
 int i = 0, ret = -EINVAL;
 int part;
 dev_t dev;
 u64 bps, iops;

 memset(s, 0, sizeof(s));

 while ((p = strsep(&buf, " ")) != ((void*)0)) {
  if (!*p)
   continue;

  s[i++] = p;


  if (i == 3)
   break;
 }

 if (i != 2)
  goto out;

 p = strsep(&s[0], ":");
 if (p != ((void*)0))
  major_s = p;
 else
  goto out;

 minor_s = s[0];
 if (!minor_s)
  goto out;

 if (strict_strtoul(major_s, 10, &major))
  goto out;

 if (strict_strtoul(minor_s, 10, &minor))
  goto out;

 dev = MKDEV(major, minor);

 disk = get_gendisk(dev, &part);
 if (!disk || part) {
  ret = -ENODEV;
  goto out;
 }

 newpn->dev = dev;

 if (s[1] == ((void*)0))
  return -EINVAL;

 switch (plid) {
 case 133:
  ret = strict_strtoul(s[1], 10, &temp);
  if (ret || (temp < BLKIO_WEIGHT_MIN && temp > 0) ||
   temp > BLKIO_WEIGHT_MAX)
   goto out;

  newpn->plid = plid;
  newpn->fileid = fileid;
  newpn->val.weight = temp;
  break;
 case 132:
  switch(fileid) {
  case 131:
  case 129:
   if (strict_strtoull(s[1], 10, &bps))
    goto out;

   newpn->plid = plid;
   newpn->fileid = fileid;
   newpn->val.bps = bps;
   break;
  case 130:
  case 128:
   if (strict_strtoull(s[1], 10, &iops))
    goto out;

   if (iops > THROTL_IOPS_MAX)
    goto out;

   newpn->plid = plid;
   newpn->fileid = fileid;
   newpn->val.iops = (unsigned int)iops;
   break;
  }
  break;
 default:
  BUG();
 }
 ret = 0;
out:
 put_disk(disk);
 return ret;
}
