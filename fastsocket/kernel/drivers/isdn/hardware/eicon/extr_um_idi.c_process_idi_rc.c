
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ Req; scalar_t__ RNum; scalar_t__ XNum; int * R; int * X; scalar_t__ IndCh; scalar_t__ Ind; scalar_t__ RcCh; scalar_t__ Rc; scalar_t__ ReqCh; scalar_t__ Id; int * callback; } ;
struct TYPE_8__ {int status; TYPE_2__* adapter; TYPE_1__ e; scalar_t__ rc_count; } ;
typedef TYPE_3__ divas_um_idi_entity_t ;
typedef int byte ;
struct TYPE_7__ {int adapter_nr; } ;


 int ASSIGN_OK ;
 int DBG_ERR (char*) ;
 int DBG_TRC (char*) ;
 int DIVA_UM_IDI_ASSIGN_PENDING ;
 scalar_t__ REMOVE ;
 int write_return_code (TYPE_3__*,int) ;

__attribute__((used)) static int process_idi_rc(divas_um_idi_entity_t * e, byte rc)
{
 DBG_TRC(("A(%d) E(%08x) rc(%02x-%02x-%02x)",
   e->adapter->adapter_nr, e, e->e.Id, rc, e->e.RcCh));

 if (e->status & DIVA_UM_IDI_ASSIGN_PENDING) {
  e->status &= ~DIVA_UM_IDI_ASSIGN_PENDING;
  if (rc != ASSIGN_OK) {
   DBG_ERR(("A: A(%d) E(%08x) ASSIGN failed",
     e->adapter->adapter_nr, e));
   e->e.callback = ((void*)0);
   e->e.Id = 0;
   e->e.Req = 0;
   e->e.ReqCh = 0;
   e->e.Rc = 0;
   e->e.RcCh = 0;
   e->e.Ind = 0;
   e->e.IndCh = 0;
   e->e.X = ((void*)0);
   e->e.R = ((void*)0);
   e->e.XNum = 0;
   e->e.RNum = 0;
  }
 }
 if ((e->e.Req == REMOVE) && e->e.Id && (rc == 0xff)) {
  DBG_ERR(("A: A(%d) E(%08x)  discard OK in REMOVE",
    e->adapter->adapter_nr, e));
  return (0);
 }
 if ((e->e.Req == REMOVE) && (!e->e.Id)) {
  e->e.callback = ((void*)0);
  e->e.Id = 0;
  e->e.Req = 0;
  e->e.ReqCh = 0;
  e->e.Rc = 0;
  e->e.RcCh = 0;
  e->e.Ind = 0;
  e->e.IndCh = 0;
  e->e.X = ((void*)0);
  e->e.R = ((void*)0);
  e->e.XNum = 0;
  e->e.RNum = 0;
  e->rc_count = 0;
 }
 if ((e->e.Req == REMOVE) && (rc != 0xff)) {
  DBG_ERR(("A: A(%d) E(%08x)  REMOVE FAILED",
    e->adapter->adapter_nr, e));
 }
 write_return_code(e, rc);

 return (1);
}
