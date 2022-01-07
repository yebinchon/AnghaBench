
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct pwc_device {int vcinterface; } ;


 int _send_control_msg (struct pwc_device*,int ,int ,int ,void*,int,int) ;

__attribute__((used)) static inline int send_control_msg(struct pwc_device *pdev,
 u8 request, u16 value, void *buf, int buflen)
{
 return _send_control_msg(pdev,
  request, value, pdev->vcinterface, buf, buflen, 500);
}
