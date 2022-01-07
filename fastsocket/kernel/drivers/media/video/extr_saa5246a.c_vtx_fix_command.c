
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int VTXIOCCLRCACHE ;

 unsigned int VTXIOCCLRFOUND ;

 unsigned int VTXIOCCLRPAGE ;

 unsigned int VTXIOCGETINFO ;

 unsigned int VTXIOCGETPAGE ;

 unsigned int VTXIOCGETSTAT ;

 unsigned int VTXIOCPAGEREQ ;

 unsigned int VTXIOCPUTPAGE ;

 unsigned int VTXIOCPUTSTAT ;

 unsigned int VTXIOCSETDISP ;

 unsigned int VTXIOCSETVIRT ;

 unsigned int VTXIOCSTOPDAU ;


__attribute__((used)) static inline unsigned int vtx_fix_command(unsigned int cmd)
{
 switch (cmd) {
 case 136:
  cmd = VTXIOCGETINFO;
  break;
 case 137:
  cmd = VTXIOCCLRPAGE;
  break;
 case 138:
  cmd = VTXIOCCLRFOUND;
  break;
 case 133:
  cmd = VTXIOCPAGEREQ;
  break;
 case 134:
  cmd = VTXIOCGETSTAT;
  break;
 case 135:
  cmd = VTXIOCGETPAGE;
  break;
 case 128:
  cmd = VTXIOCSTOPDAU;
  break;
 case 132:
  cmd = VTXIOCPUTPAGE;
  break;
 case 130:
  cmd = VTXIOCSETDISP;
  break;
 case 131:
  cmd = VTXIOCPUTSTAT;
  break;
 case 139:
  cmd = VTXIOCCLRCACHE;
  break;
 case 129:
  cmd = VTXIOCSETVIRT;
  break;
 }
 return cmd;
}
