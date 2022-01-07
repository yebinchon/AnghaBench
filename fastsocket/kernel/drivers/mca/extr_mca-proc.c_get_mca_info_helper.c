
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mca_device {int* pos; char* name; } ;


 scalar_t__ sprintf (char*,char*,...) ;

__attribute__((used)) static int get_mca_info_helper(struct mca_device *mca_dev, char *page, int len)
{
 int j;

 for(j=0; j<8; j++)
  len += sprintf(page+len, "%02x ",
          mca_dev ? mca_dev->pos[j] : 0xff);
 len += sprintf(page+len, " %s\n", mca_dev ? mca_dev->name : "");
 return len;
}
