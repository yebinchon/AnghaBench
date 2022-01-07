
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pvr2_hdw {unsigned int* cmd_buffer; } ;


 unsigned int FX2CMD_MEM_WRITE_DWORD ;
 int PVR2_DECOMPOSE_LE (unsigned int*,unsigned int,int const) ;
 int memset (unsigned int*,int ,int) ;
 int pvr2_send_request (struct pvr2_hdw*,unsigned int*,int,int *,int ) ;

__attribute__((used)) static int pvr2_encoder_write_words(struct pvr2_hdw *hdw,
        unsigned int offs,
        const u32 *data, unsigned int dlen)
{
 unsigned int idx,addr;
 unsigned int bAddr;
 int ret;
 unsigned int chunkCnt;
 while (dlen) {
  chunkCnt = 8;
  if (chunkCnt > dlen) chunkCnt = dlen;
  memset(hdw->cmd_buffer,0,sizeof(hdw->cmd_buffer));
  bAddr = 0;
  hdw->cmd_buffer[bAddr++] = FX2CMD_MEM_WRITE_DWORD;
  for (idx = 0; idx < chunkCnt; idx++) {
   addr = idx + offs;
   hdw->cmd_buffer[bAddr+6] = (addr & 0xffu);
   hdw->cmd_buffer[bAddr+5] = ((addr>>8) & 0xffu);
   hdw->cmd_buffer[bAddr+4] = ((addr>>16) & 0xffu);
   PVR2_DECOMPOSE_LE(hdw->cmd_buffer, bAddr,data[idx]);
   bAddr += 7;
  }
  ret = pvr2_send_request(hdw,
     hdw->cmd_buffer,1+(chunkCnt*7),
     ((void*)0),0);
  if (ret) return ret;
  data += chunkCnt;
  dlen -= chunkCnt;
  offs += chunkCnt;
 }

 return 0;
}
