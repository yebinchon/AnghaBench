
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block_device {struct block_device* bd_contains; } ;


 int ENOTTY ;
int scsi_verify_blk_ioctl(struct block_device *bd, unsigned int cmd)
{
 if (bd && bd == bd->bd_contains)
  return 0;




 switch (cmd) {
 case 136:
 case 137:
 case 135:
 case 134:
 case 130:
 case 128:
 case 131:
 case 132:
 case 129:
 case 133:
  return 0;
 default:
  break;
 }

 return -ENOTTY;
}
