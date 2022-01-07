
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block_device {int dummy; } ;
typedef int fmode_t ;
 int ENOIOCTLCMD ;
 int __blkdev_driver_ioctl (struct block_device*,int ,unsigned int,unsigned long) ;
 int compat_cdrom_generic_command (struct block_device*,int ,unsigned int,unsigned long) ;
 int compat_cdrom_read_audio (struct block_device*,int ,unsigned int,unsigned long) ;
 int compat_fd_ioctl (struct block_device*,int ,unsigned int,unsigned long) ;
 int compat_hdio_ioctl (struct block_device*,int ,unsigned int,unsigned long) ;
 scalar_t__ compat_ptr (unsigned long) ;

__attribute__((used)) static int compat_blkdev_driver_ioctl(struct block_device *bdev, fmode_t mode,
   unsigned cmd, unsigned long arg)
{
 switch (cmd) {
 case 141:
 case 144:
 case 145:
 case 151:
 case 142:
 case 147:
 case 143:
 case 140:
 case 150:
 case 149:
 case 148:
  return compat_hdio_ioctl(bdev, mode, cmd, arg);
 case 157:
 case 177:
 case 166:
 case 160:
 case 171:
 case 170:
 case 163:
 case 168:
 case 154:
  return compat_fd_ioctl(bdev, mode, cmd, arg);
 case 209:
  return compat_cdrom_read_audio(bdev, mode, cmd, arg);
 case 183:
  return compat_cdrom_generic_command(bdev, mode, cmd, arg);





 case 219:




 case 146:
 case 152:
 case 153:

 case 0x330:

 case 164:
 case 165:
 case 159:
 case 175:
 case 155:
 case 158:
 case 167:
 case 169:
 case 176:
 case 178:
 case 174:
 case 173:
 case 161:
 case 156:
 case 172:
 case 162:

 case 214:
 case 201:
 case 212:
 case 211:
 case 203:
 case 204:
 case 198:
 case 199:
 case 217:
 case 196:
 case 197:
 case 215:
 case 188:
 case 202:
 case 195:
 case 200:
 case 213:
 case 218:
 case 191:
 case 194:
 case 189:




 case 206:
 case 207:
 case 205:
 case 208:
 case 210:

 case 180:
 case 179:
 case 181:
  arg = (unsigned long)compat_ptr(arg);


 case 133:
 case 129:
 case 134:
 case 139:
 case 131:
 case 135:
 case 130:
 case 132:
 case 128:
 case 138:
 case 136:
 case 137:
 case 216:
 case 182:
 case 193:
 case 184:
 case 185:
 case 186:
 case 190:
 case 187:
 case 192:
  break;
 default:

  return -ENOIOCTLCMD;
 }

 return __blkdev_driver_ioctl(bdev, mode, cmd, arg);
}
