
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {scalar_t__ bypass_mode; } ;
struct av7110 {TYPE_1__ audiostate; scalar_t__* pids; } ;


 int COMTYPE_PIDFILTER ;
 size_t DMX_PES_AUDIO ;
 size_t DMX_PES_PCR ;
 size_t DMX_PES_TELETEXT ;
 size_t DMX_PES_VIDEO ;
 int MultiPID ;
 int av7110_fw_cmd (struct av7110*,int ,int ,int,int,int,int,int,int,int) ;
 int dprintk (int,char*,struct av7110*) ;

__attribute__((used)) static inline int SetPIDs(struct av7110 *av7110, u16 vpid, u16 apid, u16 ttpid,
     u16 subpid, u16 pcrpid)
{
 u16 aflags = 0;

 dprintk(4, "%p\n", av7110);

 if (vpid == 0x1fff || apid == 0x1fff ||
     ttpid == 0x1fff || subpid == 0x1fff || pcrpid == 0x1fff) {
  vpid = apid = ttpid = subpid = pcrpid = 0;
  av7110->pids[DMX_PES_VIDEO] = 0;
  av7110->pids[DMX_PES_AUDIO] = 0;
  av7110->pids[DMX_PES_TELETEXT] = 0;
  av7110->pids[DMX_PES_PCR] = 0;
 }

 if (av7110->audiostate.bypass_mode)
  aflags |= 0x8000;

 return av7110_fw_cmd(av7110, COMTYPE_PIDFILTER, MultiPID, 6,
        pcrpid, vpid, apid, ttpid, subpid, aflags);
}
