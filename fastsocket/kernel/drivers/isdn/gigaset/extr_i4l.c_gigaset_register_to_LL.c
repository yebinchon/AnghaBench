
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int features; int channels; int * statcallb; int * rcvcallb_skb; int * readstat; int * writecmd; int writebuf_skb; int command; int hl_hdrlen; int maxbufsize; int owner; int id; } ;
struct cardstate {int minor_index; int myid; int channels; TYPE_1__ iif; } ;
typedef TYPE_1__ isdn_if ;


 int DEBUG_ANY ;
 int HW_HDR_LEN ;
 int ISDN_FEATURE_L2_HDLC ;
 int ISDN_FEATURE_L2_TRANS ;
 int ISDN_FEATURE_L2_X75I ;
 int ISDN_FEATURE_L3_TRANS ;
 int ISDN_FEATURE_P_EURO ;
 int MAX_BUF_SIZE ;
 int THIS_MODULE ;
 int command_from_LL ;
 int gig_dbg (int ,char*) ;
 int pr_err (char*,...) ;
 int register_isdn (TYPE_1__*) ;
 int snprintf (int ,int,char*,char const*,int) ;
 int writebuf_from_LL ;

int gigaset_register_to_LL(struct cardstate *cs, const char *isdnid)
{
 isdn_if *iif = &cs->iif;

 gig_dbg(DEBUG_ANY, "Register driver capabilities to LL");

 if (snprintf(iif->id, sizeof iif->id, "%s_%u", isdnid, cs->minor_index)
     >= sizeof iif->id) {
  pr_err("ID too long: %s\n", isdnid);
  return 0;
 }

 iif->owner = THIS_MODULE;
 iif->channels = cs->channels;
 iif->maxbufsize = MAX_BUF_SIZE;
 iif->features = ISDN_FEATURE_L2_TRANS |
  ISDN_FEATURE_L2_HDLC |



  ISDN_FEATURE_L3_TRANS |
  ISDN_FEATURE_P_EURO;
 iif->hl_hdrlen = HW_HDR_LEN;
 iif->command = command_from_LL;
 iif->writebuf_skb = writebuf_from_LL;
 iif->writecmd = ((void*)0);
 iif->readstat = ((void*)0);
 iif->rcvcallb_skb = ((void*)0);
 iif->statcallb = ((void*)0);

 if (!register_isdn(iif)) {
  pr_err("register_isdn failed\n");
  return 0;
 }

 cs->myid = iif->channels;
 return 1;
}
