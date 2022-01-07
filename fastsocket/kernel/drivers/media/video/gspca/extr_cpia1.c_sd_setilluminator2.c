
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;
typedef int __s32 ;


 int sd_setilluminator (struct gspca_dev*,int ,int) ;

__attribute__((used)) static int sd_setilluminator2(struct gspca_dev *gspca_dev, __s32 val)
{
 return sd_setilluminator(gspca_dev, val, 2);
}
