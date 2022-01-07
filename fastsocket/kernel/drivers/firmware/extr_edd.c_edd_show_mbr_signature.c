
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edd_device {int mbr_signature; } ;
typedef int ssize_t ;


 int left ;
 int scnprintf (char*,int ,char*,int ) ;

__attribute__((used)) static ssize_t
edd_show_mbr_signature(struct edd_device *edev, char *buf)
{
 char *p = buf;
 p += scnprintf(p, left, "0x%08x\n", edev->mbr_signature);
 return (p - buf);
}
