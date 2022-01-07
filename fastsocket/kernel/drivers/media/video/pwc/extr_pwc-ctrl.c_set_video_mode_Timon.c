
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int y; int x; } ;
struct pwc_device {scalar_t__ pixfmt; int cmd_len; unsigned char* cmd_buf; int vframes; int vsize; int vsnapshot; scalar_t__ valternate; int vbandlength; int frame_size; TYPE_1__ image; int type; int vendpoint; } ;
struct Timon_table_entry {scalar_t__ alternate; unsigned char* mode; int bandlength; } ;


 int EINVAL ;
 int ENOENT ;
 int PSZ_MAX ;
 int PSZ_VGA ;
 struct Timon_table_entry*** Timon_table ;
 scalar_t__ V4L2_PIX_FMT_YUV420 ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int pwc_dec23_init (struct pwc_device*,int ,unsigned char*) ;
 TYPE_1__* pwc_image_sizes ;
 int send_video_command (struct pwc_device*,int ,unsigned char*,int) ;

__attribute__((used)) static int set_video_mode_Timon(struct pwc_device *pdev, int size, int frames, int compression, int snapshot)
{
 unsigned char buf[13];
 const struct Timon_table_entry *pChoose;
 int ret, fps;

 if (size >= PSZ_MAX || frames < 5 || frames > 30 || compression < 0 || compression > 3)
  return -EINVAL;
 if (size == PSZ_VGA && frames > 15)
  return -EINVAL;
 fps = (frames / 5) - 1;




 pChoose = ((void*)0);
 while (compression <= 3) {
    pChoose = &Timon_table[size][fps][compression];
    if (pChoose->alternate != 0)
      break;
    compression++;
 }
 if (pChoose == ((void*)0) || pChoose->alternate == 0)
  return -ENOENT;

 memcpy(buf, pChoose->mode, 13);
 if (snapshot)
  buf[0] |= 0x80;
 ret = send_video_command(pdev, pdev->vendpoint, buf, 13);
 if (ret < 0)
  return ret;

 if (pChoose->bandlength > 0 && pdev->pixfmt == V4L2_PIX_FMT_YUV420)
  pwc_dec23_init(pdev, pdev->type, buf);

 pdev->cmd_len = 13;
 memcpy(pdev->cmd_buf, buf, 13);


 pdev->vframes = frames;
 pdev->vsize = size;
 pdev->vsnapshot = snapshot;
 pdev->valternate = pChoose->alternate;
 pdev->image = pwc_image_sizes[size];
 pdev->vbandlength = pChoose->bandlength;
 if (pChoose->bandlength > 0)
  pdev->frame_size = (pChoose->bandlength * pdev->image.y) / 4;
 else
  pdev->frame_size = (pdev->image.x * pdev->image.y * 12) / 8;
 return 0;
}
