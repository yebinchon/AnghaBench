
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t word ;
typedef int dword ;
typedef size_t byte ;
struct TYPE_9__ {int Flags; int Handle; int Number; } ;
struct TYPE_8__ {size_t* ch_ncci; scalar_t__* ncci_plci; int Id; scalar_t__* ncci_state; TYPE_2__* ncci; } ;
struct TYPE_7__ {size_t data_out; scalar_t__ data_pending; TYPE_4__* DBuffer; } ;
struct TYPE_6__ {scalar_t__ Id; scalar_t__ appl; scalar_t__ tel; TYPE_3__* adapter; int data_sent_ptr; } ;
typedef TYPE_1__ PLCI ;
typedef TYPE_2__ NCCI ;
typedef TYPE_3__ DIVA_CAPI_ADAPTER ;
typedef TYPE_4__ DATA_B3_DESC ;


 int CONFIRM ;
 int EXT_CONTROLLER ;
 size_t MAX_DATA_B3 ;
 int TransmitBufferFree (scalar_t__,int ) ;
 int _DATA_B3_R ;
 int dbug (int,int ) ;
 int dprintf (char*,size_t,scalar_t__) ;
 int sendf (scalar_t__,int,int,int ,char*,int ,int ) ;

__attribute__((used)) static void data_rc(PLCI *plci, byte ch)
{
  dword Id;
  DIVA_CAPI_ADAPTER * a;
  NCCI *ncci_ptr;
  DATA_B3_DESC *data;
  word ncci;

  if (plci->appl)
  {
    TransmitBufferFree (plci->appl, plci->data_sent_ptr);
    a = plci->adapter;
    ncci = a->ch_ncci[ch];
    if (ncci && (a->ncci_plci[ncci] == plci->Id))
    {
      ncci_ptr = &(a->ncci[ncci]);
      dbug(1,dprintf("data_out=%d, data_pending=%d",ncci_ptr->data_out,ncci_ptr->data_pending));
      if (ncci_ptr->data_pending)
      {
        data = &(ncci_ptr->DBuffer[ncci_ptr->data_out]);
        if (!(data->Flags &4) && a->ncci_state[ncci])
        {
          Id = (((dword)ncci)<<16)|((word)plci->Id<<8)|a->Id;
          if(plci->tel) Id|=EXT_CONTROLLER;
          sendf(plci->appl,_DATA_B3_R|CONFIRM,Id,data->Number,
                "ww",data->Handle,0);
        }
        (ncci_ptr->data_out)++;
        if (ncci_ptr->data_out == MAX_DATA_B3)
          ncci_ptr->data_out = 0;
        (ncci_ptr->data_pending)--;
      }
    }
  }
}
