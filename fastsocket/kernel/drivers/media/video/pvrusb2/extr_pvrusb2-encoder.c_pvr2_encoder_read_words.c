
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pvr2_hdw {unsigned int* cmd_buffer; } ;


 unsigned int FX2CMD_MEM_READ_64BYTES ;
 unsigned int FX2CMD_MEM_READ_DWORD ;
 int PVR2_COMPOSE_LE (unsigned int*,unsigned int) ;
 int pvr2_send_request (struct pvr2_hdw*,unsigned int*,int,unsigned int*,int) ;

__attribute__((used)) static int pvr2_encoder_read_words(struct pvr2_hdw *hdw,
       unsigned int offs,
       u32 *data, unsigned int dlen)
{
 unsigned int idx;
 int ret;
 unsigned int chunkCnt;
 while (dlen) {
  chunkCnt = 16;
  if (chunkCnt > dlen) chunkCnt = dlen;
  if (chunkCnt < 16) chunkCnt = 1;
  hdw->cmd_buffer[0] =
   ((chunkCnt == 1) ?
    FX2CMD_MEM_READ_DWORD : FX2CMD_MEM_READ_64BYTES);
  hdw->cmd_buffer[1] = 0;
  hdw->cmd_buffer[2] = 0;
  hdw->cmd_buffer[3] = 0;
  hdw->cmd_buffer[4] = 0;
  hdw->cmd_buffer[5] = ((offs>>16) & 0xffu);
  hdw->cmd_buffer[6] = ((offs>>8) & 0xffu);
  hdw->cmd_buffer[7] = (offs & 0xffu);
  ret = pvr2_send_request(hdw,
     hdw->cmd_buffer,8,
     hdw->cmd_buffer,
     (chunkCnt == 1 ? 4 : 16 * 4));
  if (ret) return ret;

  for (idx = 0; idx < chunkCnt; idx++) {
   data[idx] = PVR2_COMPOSE_LE(hdw->cmd_buffer,idx*4);
  }
  data += chunkCnt;
  dlen -= chunkCnt;
  offs += chunkCnt;
 }

 return 0;
}
