
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int addr64 ;


 int MFC_Cmd ;
 int MFC_TagID ;
 int spu_writech (int ,unsigned int) ;

__attribute__((used)) static inline void enqueue_sync(addr64 lscsa_ea)
{
 unsigned int tag_id = 0;
 unsigned int cmd = 0xCC;




 spu_writech(MFC_TagID, tag_id);
 spu_writech(MFC_Cmd, cmd);
}
