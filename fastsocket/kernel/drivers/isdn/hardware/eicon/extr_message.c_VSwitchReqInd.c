
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t word ;
typedef int dword ;
typedef int byte ;
struct TYPE_9__ {int vswitchstate; int internal_command; int command; int ptyState; } ;
struct TYPE_7__ {scalar_t__ Ind; } ;
struct TYPE_8__ {int vswitchstate; int vsprot; int vsprotdialect; TYPE_3__* relatedPTYPLCI; int ptyState; TYPE_1__ Sig; int State; int appl; } ;
typedef TYPE_2__ PLCI ;


 int ESC ;
 size_t MAX_MULTI_IE ;
 scalar_t__ NCR_FACILITY ;
 int S_ECT ;


 int VSWITCHIE ;
 int VSWITCH_IND ;
 int VSWITCH_REQ ;
 int VSWITCH_REQ_PEND ;
 int add_p (TYPE_3__*,int ,int*) ;
 int dbug (int,int ) ;
 int dprintf (char*,int) ;
 int send_req (TYPE_3__*) ;
 int sig_req (TYPE_3__*,int,int ) ;

__attribute__((used)) static void VSwitchReqInd(PLCI *plci, dword Id, byte **parms)
{
 word i;
 if(!plci ||
  !plci->appl ||
  !plci->State ||
  plci->Sig.Ind==NCR_FACILITY
  )
  return;

 for(i=0;i<MAX_MULTI_IE;i++)
 {
        if(!parms[i][0]) continue;
  if(parms[i][0]<7)
  {
   parms[i][0]=0;
   continue;
  }
  dbug(1,dprintf("VSwitchReqInd(%d)",parms[i][4]));
  switch(parms[i][4])
  {
  case 129:
   if(!plci->relatedPTYPLCI ||
    (plci->ptyState!=S_ECT && plci->relatedPTYPLCI->ptyState!=S_ECT))
   {
    break;
   }

   if(parms[i][0]!=11 || parms[i][8]!=3)
   {
    break;
   }
   if(parms[i][2]==VSWITCH_IND && parms[i][9]==1)
   {
    plci->vswitchstate=parms[i][9];
    parms[i][9]=2;

   }
   else if(parms[i][2]==VSWITCH_REQ && parms[i][9]==3)
   {
    plci->vswitchstate=parms[i][9];


   }
   else
   {
    break;
   }
   plci->vsprot=parms[i][10];
   plci->vsprotdialect=parms[i][11];

   parms[i][1]=VSWITCHIE;
   parms[i][2]=VSWITCH_REQ;

   plci->relatedPTYPLCI->command = 0;
   plci->relatedPTYPLCI->internal_command = VSWITCH_REQ_PEND;
   add_p(plci->relatedPTYPLCI,ESC,&parms[i][0]);
   sig_req(plci->relatedPTYPLCI,VSWITCH_REQ,0);
   send_req(plci->relatedPTYPLCI);
   break;
  case 128:
  default:
   if(plci->relatedPTYPLCI &&
    plci->vswitchstate==3 &&
    plci->relatedPTYPLCI->vswitchstate==3)
   {
    add_p(plci->relatedPTYPLCI,ESC,&parms[i][0]);
    sig_req(plci->relatedPTYPLCI,VSWITCH_REQ,0);
    send_req(plci->relatedPTYPLCI);
   }
   break;
  }
  parms[i][0]=0;
 }
}
