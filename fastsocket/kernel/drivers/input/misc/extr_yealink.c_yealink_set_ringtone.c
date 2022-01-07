
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct yld_ctl_packet {int size; int * data; int offset; int cmd; } ;
struct yealink_dev {struct yld_ctl_packet* ctl_data; } ;


 int CMD_RING_NOTE ;
 int CMD_RING_VOLUME ;
 int EINVAL ;
 int cpu_to_be16 (int) ;
 int memcpy (int *,int *,int) ;
 int memset (struct yld_ctl_packet*,int ,int) ;
 int yealink_cmd (struct yealink_dev*,struct yld_ctl_packet*) ;

__attribute__((used)) static int yealink_set_ringtone(struct yealink_dev *yld, u8 *buf, size_t size)
{
 struct yld_ctl_packet *p = yld->ctl_data;
 int ix, len;

 if (size <= 0)
  return -EINVAL;


 memset(yld->ctl_data, 0, sizeof(*(yld->ctl_data)));
 yld->ctl_data->cmd = CMD_RING_VOLUME;
 yld->ctl_data->size = 1;
 yld->ctl_data->data[0] = buf[0];
 yealink_cmd(yld, p);

 buf++;
 size--;

 p->cmd = CMD_RING_NOTE;
 ix = 0;
 while (size != ix) {
  len = size - ix;
  if (len > sizeof(p->data))
   len = sizeof(p->data);
  p->size = len;
  p->offset = cpu_to_be16(ix);
  memcpy(p->data, &buf[ix], len);
  yealink_cmd(yld, p);
  ix += len;
 }
 return 0;
}
