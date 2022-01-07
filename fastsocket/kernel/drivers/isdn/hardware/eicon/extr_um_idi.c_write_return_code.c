
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int RcCh; } ;
struct TYPE_12__ {int rc; TYPE_4__ e; int status; TYPE_1__* adapter; } ;
typedef TYPE_5__ divas_um_idi_entity_t ;
struct TYPE_9__ {int RcCh; int Rc; } ;
struct TYPE_10__ {TYPE_2__ rc; } ;
struct TYPE_13__ {scalar_t__ data_length; TYPE_3__ hdr; int type; } ;
typedef TYPE_6__ diva_um_idi_ind_hdr_t ;
typedef int byte ;
struct TYPE_8__ {int adapter_nr; } ;


 int DBG_ERR (char*) ;
 int DIVA_UM_IDI_IND_RC ;
 int DIVA_UM_IDI_RC_PENDING ;
 int diva_data_q_ack_segment4write (int *,int) ;
 scalar_t__ diva_data_q_get_segment4write (int *) ;

__attribute__((used)) static int write_return_code(divas_um_idi_entity_t * e, byte rc)
{
 diva_um_idi_ind_hdr_t *prc;

 if (!(prc =
      (diva_um_idi_ind_hdr_t *) diva_data_q_get_segment4write(&e->rc)))
 {
  DBG_ERR(("A: A(%d) E(%08x) rc(%02x) lost",
    e->adapter->adapter_nr, e, rc));
  e->status &= ~DIVA_UM_IDI_RC_PENDING;
  return (-1);
 }

 prc->type = DIVA_UM_IDI_IND_RC;
 prc->hdr.rc.Rc = rc;
 prc->hdr.rc.RcCh = e->e.RcCh;
 prc->data_length = 0;
 diva_data_q_ack_segment4write(&e->rc, sizeof(*prc));

 return (0);
}
