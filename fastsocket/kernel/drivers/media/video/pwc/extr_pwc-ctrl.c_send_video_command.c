
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwc_device {int dummy; } ;


 int SET_EP_STREAM_CTL ;
 int VIDEO_OUTPUT_CONTROL_FORMATTER ;
 int _send_control_msg (struct pwc_device*,int ,int ,int,void*,int,int) ;

__attribute__((used)) static inline int send_video_command(struct pwc_device *pdev,
 int index, void *buf, int buflen)
{
 return _send_control_msg(pdev,
  SET_EP_STREAM_CTL,
  VIDEO_OUTPUT_CONTROL_FORMATTER,
  index,
  buf, buflen, 1000);
}
