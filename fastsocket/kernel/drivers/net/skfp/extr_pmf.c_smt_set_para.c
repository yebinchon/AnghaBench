
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct smt_para {int p_len; int p_type; } ;
struct TYPE_4__ {int please_reconnect; } ;
struct fddi_mib {int fddiSMTConfigPolicy; int fddiSMTConnectionPolicy; int fddiSMTTT_Notify; int fddiSMTStatRptPolicy; int fddiSMTTrace_MaxExpiration; long fddiESSPayload; long fddiESSOverhead; int fddiESSMaxTNeg; int fddiESSMinSegmentSize; int fddiESSCategory; int fddiESSSynchTxMode; int fddiSBACommand; int fddiSBAAvailable; struct fddi_mib_p* p; struct fddi_mib_a* a; struct fddi_mib_m* m; } ;
struct TYPE_3__ {void* raf_act_timer_poll; } ;
struct s_smc {TYPE_2__ sm; struct fddi_mib mib; TYPE_1__ ess; } ;
struct s_p_tab {int p_access; int p_offset; char* p_swap; } ;
struct fddi_mib_p {int fddiPORTConnectionPolicies; int fddiPORTMaint_LS; int fddiPORTLer_Cutoff; int fddiPORTLer_Alarm; scalar_t__ fddiPORTRequestedPaths; } ;
struct fddi_mib_m {int fddiMACRequestedPaths; int fddiMACFrameErrorThreshold; int fddiMACNotCopiedThreshold; int fddiMACMA_UnitdataEnable; int fddiMACT_Min; } ;
struct fddi_mib_a {int fddiPATHSbaPayload; int fddiPATHSbaOverhead; long fddiPATHT_Rmode; int fddiPATHSbaAvailable; int fddiPATHTVXLowerBound; int fddiPATHT_MaxLowerBound; int fddiPATHMaxT_Req; } ;




 int EC_DISCONNECT ;
 int EVENT_ECM ;
 int EVENT_RMT ;
 int IFSET (int) ;
 int INDEX_MAC ;
 int INDEX_PATH ;
 int INDEX_PORT ;
 int MIB_P_PATH_PRIM_ALTER ;
 int MIB_P_PATH_PRIM_PREFER ;
 long MS2BCLK (int) ;
 int NUMMACS ;
 int NUMPATHS ;
 int POLICY_MM ;
 int RM_ENABLE_FLAG ;
 int RS_EVENT ;
 int RS_SET (struct s_smc*,int ) ;
 int SB_START ;
 int SB_STOP ;
 int SK_LOC_DECL (int ,long) ;
 int SMT_E0120 ;
 int SMT_E0120_MSG ;
 int SMT_PANIC (struct s_smc*,int ,int ) ;
 int SMT_PORT_ACTION ;
 int SMT_RDF_AUTHOR ;
 int SMT_RDF_ILLEGAL ;
 int SMT_RDF_LENGTH ;
 int SMT_RDF_NOPARAM ;
 int SMT_RDF_RANGE ;
 int SMT_STATION_ACTION ;
 void* TRUE ;
 int byte_val ;
 int ess_para_change (struct s_smc*) ;
 long long_val ;
 int memcpy (char*,char*,int) ;
 size_t port_to_mib (struct s_smc*,int) ;
 int queue_event (struct s_smc*,int ,int ) ;
 int rtm_set_timer (struct s_smc*) ;
 int smt_action (struct s_smc*,int ,int,size_t) ;
 struct s_p_tab* smt_get_ptab (int) ;
 int smt_mib_phys (struct s_smc*) ;
 int smt_set_mac_opvalues (struct s_smc*) ;
 int u_char ;
 int u_long ;
 int u_short ;
 int word_val ;

__attribute__((used)) static int smt_set_para(struct s_smc *smc, struct smt_para *pa, int index,
   int local, int set)
{


 const struct s_p_tab *pt ;
 int len ;
 char *from ;
 char *to ;
 const char *swap ;
 char c ;
 char *mib_addr ;
 struct fddi_mib *mib ;
 struct fddi_mib_m *mib_m = ((void*)0);
 struct fddi_mib_a *mib_a = ((void*)0);
 struct fddi_mib_p *mib_p = ((void*)0);
 int mac ;
 int path ;
 int port ;
 SK_LOC_DECL(u_char,byte_val) ;
 SK_LOC_DECL(u_short,word_val) ;
 SK_LOC_DECL(u_long,long_val) ;

 mac = index - INDEX_MAC ;
 path = index - INDEX_PATH ;
 port = index - INDEX_PORT ;
 len = pa->p_len ;
 from = (char *) (pa + 1 ) ;

 mib = &smc->mib ;
 switch (pa->p_type & 0xf000) {
 case 0x1000 :
 default :
  mib_addr = (char *) mib ;
  break ;
 case 0x2000 :
  if (mac < 0 || mac >= NUMMACS) {
   return(SMT_RDF_NOPARAM) ;
  }
  mib_m = &smc->mib.m[mac] ;
  mib_addr = (char *) mib_m ;
  from += 4 ;
  len -= 4 ;
  break ;
 case 0x3000 :
  if (path < 0 || path >= NUMPATHS) {
   return(SMT_RDF_NOPARAM) ;
  }
  mib_a = &smc->mib.a[path] ;
  mib_addr = (char *) mib_a ;
  from += 4 ;
  len -= 4 ;
  break ;
 case 0x4000 :
  if (port < 0 || port >= smt_mib_phys(smc)) {
   return(SMT_RDF_NOPARAM) ;
  }
  mib_p = &smc->mib.p[port_to_mib(smc,port)] ;
  mib_addr = (char *) mib_p ;
  from += 4 ;
  len -= 4 ;
  break ;
 }
 switch (pa->p_type) {
 case 155 :
 case 154 :
 case 141 :
  if (!local) {
   return(SMT_RDF_NOPARAM) ;
  }
  break ;
 }
 pt = smt_get_ptab(pa->p_type) ;
 if (!pt) {
  return( (pa->p_type & 0xff00) ? SMT_RDF_NOPARAM :
      SMT_RDF_ILLEGAL ) ;
 }
 switch (pt->p_access) {
 case 163 :
 case 162 :
  break ;
 default :
  return(SMT_RDF_ILLEGAL) ;
 }
 to = mib_addr + pt->p_offset ;
 swap = pt->p_swap ;

 while (swap && (c = *swap++)) {
  switch(c) {
  case 'b' :
   to = (char *) &byte_val ;
   break ;
  case 'w' :
   to = (char *) &word_val ;
   break ;
  case 'l' :
   to = (char *) &long_val ;
   break ;
  case 'S' :
  case 'E' :
  case 'R' :
  case 'r' :
   if (len < 4) {
    goto len_error ;
   }
   if (from[0] | from[1])
    goto val_error ;
   to[0] = from[2] ;
   to[1] = from[3] ;

   from += 4 ;
   to += 2 ;
   len -= 4 ;
   break ;
  case 'F' :
  case 'B' :
   if (len < 4) {
    goto len_error ;
   }
   if (from[0] | from[1] | from[2])
    goto val_error ;
   to[0] = from[3] ;
   len -= 4 ;
   from += 4 ;
   to += 4 ;
   break ;
  case 'C' :
  case 'T' :
  case 'L' :
   if (len < 4) {
    goto len_error ;
   }






   to[0] = *from++ ;
   to[1] = *from++ ;
   to[2] = *from++ ;
   to[3] = *from++ ;

   len -= 4 ;
   to += 4 ;
   break ;
  case 'A' :
   if (len < 8)
    goto len_error ;
   if (set)
    memcpy((char *) to,(char *) from+2,6) ;
   to += 8 ;
   from += 8 ;
   len -= 8 ;
   break ;
  case '4' :
   if (len < 4)
    goto len_error ;
   if (set)
    memcpy((char *) to,(char *) from,4) ;
   to += 4 ;
   from += 4 ;
   len -= 4 ;
   break ;
  case '8' :
   if (len < 8)
    goto len_error ;
   if (set)
    memcpy((char *) to,(char *) from,8) ;
   to += 8 ;
   from += 8 ;
   len -= 8 ;
   break ;
  case 'D' :
   if (len < 32)
    goto len_error ;
   if (set)
    memcpy((char *) to,(char *) from,32) ;
   to += 32 ;
   from += 32 ;
   len -= 32 ;
   break ;
  case 'P' :
   if (set) {
    to[0] = *from++ ;
    to[1] = *from++ ;
    to[2] = *from++ ;
    to[3] = *from++ ;
    to[4] = *from++ ;
    to[5] = *from++ ;
    to[6] = *from++ ;
    to[7] = *from++ ;
   }
   to += 8 ;
   len -= 8 ;
   break ;
  default :
   SMT_PANIC(smc,SMT_E0120, SMT_E0120_MSG) ;
   return(SMT_RDF_ILLEGAL) ;
  }
 }



 switch (pa->p_type) {
 case 161:
  if (word_val & ~1)
   goto val_error ;
  if (set) (mib->fddiSMTConfigPolicy = word_val) ;
  break ;
 case 160 :
  if (!(word_val & POLICY_MM))
   goto val_error ;
  if (set) (mib->fddiSMTConnectionPolicy = word_val) ;
  break ;
 case 159 :
  if (word_val < 2 || word_val > 30)
   goto val_error ;
  if (set) (mib->fddiSMTTT_Notify = word_val) ;
  break ;
 case 158 :
  if (byte_val & ~1)
   goto val_error ;
  if (set) (mib->fddiSMTStatRptPolicy = byte_val) ;
  break ;
 case 157 :




  if (long_val < (long)0x478bf51L)
   goto val_error ;
  if (set) (mib->fddiSMTTrace_MaxExpiration = long_val) ;
  break ;
 case 145 :
  if ((word_val & (MIB_P_PATH_PRIM_PREFER |
   MIB_P_PATH_PRIM_ALTER)) == 0 )
   goto val_error ;
  if (set) (mib_m->fddiMACRequestedPaths = word_val) ;
  break ;
 case 144 :

  if (set) (mib_m->fddiMACFrameErrorThreshold = word_val) ;
  break ;
 case 143 :

  if (set) (mib_m->fddiMACNotCopiedThreshold = word_val) ;
  break ;
 case 142:
  if (byte_val & ~1)
   goto val_error ;
  if (set) {
   mib_m->fddiMACMA_UnitdataEnable = byte_val ;
   queue_event(smc,EVENT_RMT,RM_ENABLE_FLAG) ;
  }
  break ;
 case 141 :
  if (set) (mib_m->fddiMACT_Min = long_val) ;
  break ;
 case 140 :
  if (long_val > 1562)
   goto val_error ;
  if (set) (mib_a->fddiPATHSbaPayload = long_val) ;




  break ;
 case 139 :
  if (long_val > 5000)
   goto val_error ;

  if (long_val != 0 && mib_a->fddiPATHSbaPayload == 0)
   goto val_error ;

  if (set) (mib_a->fddiPATHSbaOverhead = long_val) ;




  break ;
 case 138:



  if (set) {
   mib_a->fddiPATHT_Rmode = long_val ;
   rtm_set_timer(smc) ;
  }
  break ;
 case 137 :
  if (long_val > 0x00BEBC20L)
   goto val_error ;




  if (set) (mib_a->fddiPATHSbaAvailable = long_val) ;
  break ;
 case 136 :
  if (set) (mib_a->fddiPATHTVXLowerBound = long_val) ;
  goto change_mac_para ;
 case 135 :
  if (set) (mib_a->fddiPATHT_MaxLowerBound = long_val) ;
  goto change_mac_para ;
 case 134 :
  if (set) (mib_a->fddiPATHMaxT_Req = long_val) ;

change_mac_para:
  if (set && smt_set_mac_opvalues(smc)) {
   RS_SET(smc,RS_EVENT) ;
   smc->sm.please_reconnect = 1 ;
   queue_event(smc,EVENT_ECM,EC_DISCONNECT) ;
  }
  break ;
 case 133 :
  if (byte_val > 1)
   goto val_error ;
  if (set) (mib_p->fddiPORTConnectionPolicies = byte_val) ;
  break ;
 case 132 :

  if (set) (memcpy((char *)mib_p->fddiPORTRequestedPaths, (char *)&long_val,4)) ;

  break ;
 case 131:
  if (word_val > 4)
   goto val_error ;
  if (set) (mib_p->fddiPORTMaint_LS = word_val) ;
  break ;
 case 130 :
  if (byte_val < 4 || byte_val > 15)
   goto val_error ;
  if (set) (mib_p->fddiPORTLer_Cutoff = byte_val) ;
  break ;
 case 129 :
  if (byte_val < 4 || byte_val > 15)
   goto val_error ;
  if (set) (mib_p->fddiPORTLer_Alarm = byte_val) ;
  break ;




 case 156 :
  if (smt_action(smc,SMT_STATION_ACTION, (int) word_val, 0))
   goto val_error ;
  break ;
 case 128:
  if (smt_action(smc,SMT_PORT_ACTION, (int) word_val,
   port_to_mib(smc,port)))
   goto val_error ;
  break ;
 default :
  break ;
 }
 return(0) ;

val_error:

 return(SMT_RDF_RANGE) ;

len_error:

 return(SMT_RDF_LENGTH) ;
}
