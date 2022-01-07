
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_blktrans_dev {int dummy; } ;
struct hd_geometry {int cylinders; int sectors; int heads; } ;
struct INFTLrecord {int cylinders; int sectors; int heads; } ;



__attribute__((used)) static int inftl_getgeo(struct mtd_blktrans_dev *dev, struct hd_geometry *geo)
{
 struct INFTLrecord *inftl = (void *)dev;

 geo->heads = inftl->heads;
 geo->sectors = inftl->sectors;
 geo->cylinders = inftl->cylinders;

 return 0;
}
