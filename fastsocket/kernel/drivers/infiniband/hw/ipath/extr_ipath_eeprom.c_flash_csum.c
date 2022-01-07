
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ipath_flash {int if_length; int if_csum; } ;



__attribute__((used)) static u8 flash_csum(struct ipath_flash *ifp, int adjust)
{
 u8 *ip = (u8 *) ifp;
 u8 csum = 0, len;






 len = ifp->if_length;
 if (len > sizeof(struct ipath_flash))
  len = sizeof(struct ipath_flash);
 while (len--)
  csum += *ip++;
 csum -= ifp->if_csum;
 csum = ~csum;
 if (adjust)
  ifp->if_csum = csum;

 return csum;
}
