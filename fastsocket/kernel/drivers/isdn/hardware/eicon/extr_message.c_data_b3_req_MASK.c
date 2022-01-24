#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  size_t word ;
typedef  int dword ;
typedef  int byte ;
struct TYPE_16__ {scalar_t__ info; } ;
struct TYPE_15__ {size_t Number; int* P; int Flags; void* Handle; void* Length; } ;
struct TYPE_14__ {scalar_t__* ncci_state; TYPE_3__* ncci; } ;
struct TYPE_13__ {size_t data_out; size_t data_pending; size_t data_ack_out; size_t data_ack_pending; TYPE_1__* DataAck; TYPE_5__* DBuffer; } ;
struct TYPE_12__ {scalar_t__ msg_in_queue; } ;
struct TYPE_11__ {size_t Number; void* Handle; } ;
typedef  TYPE_2__ PLCI ;
typedef  TYPE_3__ NCCI ;
typedef  TYPE_4__ DIVA_CAPI_ADAPTER ;
typedef  TYPE_5__ DATA_B3_DESC ;
typedef  int /*<<< orphan*/  APPL ;
typedef  TYPE_6__ API_PARSE ;

/* Variables and functions */
 int CONFIRM ; 
 scalar_t__ CONNECTED ; 
 void* FUNC0 (scalar_t__) ; 
 scalar_t__ INC_ACT_PENDING ; 
 size_t MAX_DATA_ACK ; 
 size_t MAX_DATA_B3 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int*) ; 
 int* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int _DATA_B3_R ; 
 size_t _WRONG_IDENTIFIER ; 
 size_t _WRONG_STATE ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int,size_t,char*,void*,size_t) ; 

__attribute__((used)) static byte FUNC7(dword Id, word Number, DIVA_CAPI_ADAPTER *a,
			PLCI *plci, APPL *appl, API_PARSE *parms)
{
  NCCI   *ncci_ptr;
  DATA_B3_DESC   *data;
  word Info;
  word ncci;
  word i;

  FUNC3(1,FUNC4("data_b3_req"));

  Info = _WRONG_IDENTIFIER;
  ncci = (word)(Id>>16);
  FUNC3(1,FUNC4("ncci=0x%x, plci=0x%x",ncci,plci));

  if (plci && ncci)
  {
    Info = _WRONG_STATE;
    if ((a->ncci_state[ncci] == CONNECTED)
     || (a->ncci_state[ncci] == INC_ACT_PENDING))
    {
        /* queue data */
      ncci_ptr = &(a->ncci[ncci]);
      i = ncci_ptr->data_out + ncci_ptr->data_pending;
      if (i >= MAX_DATA_B3)
        i -= MAX_DATA_B3;
      data = &(ncci_ptr->DBuffer[i]);
      data->Number = Number;
      if ((((byte   *)(parms[0].info)) >= ((byte   *)(plci->msg_in_queue)))
       && (((byte   *)(parms[0].info)) < ((byte   *)(plci->msg_in_queue)) + sizeof(plci->msg_in_queue)))
      {

        data->P = (byte *)(long)(*((dword *)(parms[0].info)));

      }
      else
        data->P = FUNC2(appl,*(dword *)parms[0].info);
      data->Length = FUNC0(parms[1].info);
      data->Handle = FUNC0(parms[2].info);
      data->Flags = FUNC0(parms[3].info);
      (ncci_ptr->data_pending)++;

        /* check for delivery confirmation */
      if (data->Flags & 0x0004)
      {
        i = ncci_ptr->data_ack_out + ncci_ptr->data_ack_pending;
        if (i >= MAX_DATA_ACK)
          i -= MAX_DATA_ACK;
        ncci_ptr->DataAck[i].Number = data->Number;
        ncci_ptr->DataAck[i].Handle = data->Handle;
        (ncci_ptr->data_ack_pending)++;
      }

      FUNC5(plci);
      return false;
    }
  }
  if (appl)
  {
    if (plci)
    {
      if ((((byte   *)(parms[0].info)) >= ((byte   *)(plci->msg_in_queue)))
       && (((byte   *)(parms[0].info)) < ((byte   *)(plci->msg_in_queue)) + sizeof(plci->msg_in_queue)))
      {

        FUNC1 (appl, (byte *)(long)(*((dword *)(parms[0].info))));

      }
    }
    FUNC6(appl,
          _DATA_B3_R|CONFIRM,
          Id,
          Number,
          "ww",FUNC0(parms[2].info),Info);
  }
  return false;
}