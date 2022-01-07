
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
struct TYPE_9__ {size_t* ch_ncci; scalar_t__* ncci_plci; int Id; scalar_t__* ncci_state; TYPE_3__* ncci; } ;
struct TYPE_8__ {size_t data_ack_out; scalar_t__ data_ack_pending; TYPE_1__* DataAck; } ;
struct TYPE_7__ {scalar_t__ Id; int appl; scalar_t__ tel; TYPE_4__* adapter; } ;
struct TYPE_6__ {int Handle; int Number; } ;
typedef TYPE_2__ PLCI ;
typedef TYPE_3__ NCCI ;
typedef TYPE_4__ DIVA_CAPI_ADAPTER ;


 int CONFIRM ;
 int EXT_CONTROLLER ;
 size_t MAX_DATA_ACK ;
 int _DATA_B3_R ;
 int sendf (int ,int,int,int ,char*,int ,int ) ;

__attribute__((used)) static void data_ack(PLCI *plci, byte ch)
{
  dword Id;
  DIVA_CAPI_ADAPTER * a;
  NCCI *ncci_ptr;
  word ncci;

  a = plci->adapter;
  ncci = a->ch_ncci[ch];
  ncci_ptr = &(a->ncci[ncci]);
  if (ncci_ptr->data_ack_pending)
  {
    if (a->ncci_state[ncci] && (a->ncci_plci[ncci] == plci->Id))
    {
      Id = (((dword)ncci)<<16)|((word)plci->Id<<8)|a->Id;
      if(plci->tel) Id|=EXT_CONTROLLER;
      sendf(plci->appl,_DATA_B3_R|CONFIRM,Id,ncci_ptr->DataAck[ncci_ptr->data_ack_out].Number,
            "ww",ncci_ptr->DataAck[ncci_ptr->data_ack_out].Handle,0);
    }
    (ncci_ptr->data_ack_out)++;
    if (ncci_ptr->data_ack_out == MAX_DATA_ACK)
      ncci_ptr->data_ack_out = 0;
    (ncci_ptr->data_ack_pending)--;
  }
}
