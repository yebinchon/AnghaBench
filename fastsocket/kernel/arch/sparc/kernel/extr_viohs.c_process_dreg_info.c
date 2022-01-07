
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vio_driver_state {int dr_state; struct vio_dring_state* drings; int desc_buf_len; int desc_buf; } ;
struct vio_dring_state {int ncookies; scalar_t__ ident; TYPE_1__* cookies; int entry_size; int num_entries; } ;
struct TYPE_4__ {int stype; } ;
struct vio_dring_register {int num_cookies; TYPE_2__ tag; scalar_t__ dring_ident; TYPE_1__* cookies; int descr_size; int num_descr; int options; } ;
struct ldc_trans_cookie {int dummy; } ;
struct TYPE_3__ {scalar_t__ cookie_size; scalar_t__ cookie_addr; } ;


 int BUG_ON (int ) ;
 int GFP_ATOMIC ;
 int HS ;
 size_t VIO_DRIVER_RX_RING ;
 int VIO_DR_STATE_RXREG ;
 int VIO_DR_STATE_RXREQ ;
 int VIO_SUBTYPE_ACK ;
 int VIO_SUBTYPE_NACK ;
 int handshake_failure (struct vio_driver_state*) ;
 int kzalloc (int ,int ) ;
 scalar_t__ send_ctrl (struct vio_driver_state*,TYPE_2__*,int) ;
 int viodbg (int ,char*,...) ;

__attribute__((used)) static int process_dreg_info(struct vio_driver_state *vio,
        struct vio_dring_register *pkt)
{
 struct vio_dring_state *dr;
 int i, len;

 viodbg(HS, "GOT DRING_REG INFO ident[%llx] "
        "ndesc[%u] dsz[%u] opt[0x%x] ncookies[%u]\n",
        (unsigned long long) pkt->dring_ident,
        pkt->num_descr, pkt->descr_size, pkt->options,
        pkt->num_cookies);

 if (!(vio->dr_state & VIO_DR_STATE_RXREQ))
  goto send_nack;

 if (vio->dr_state & VIO_DR_STATE_RXREG)
  goto send_nack;

 BUG_ON(vio->desc_buf);

 vio->desc_buf = kzalloc(pkt->descr_size, GFP_ATOMIC);
 if (!vio->desc_buf)
  goto send_nack;

 vio->desc_buf_len = pkt->descr_size;

 dr = &vio->drings[VIO_DRIVER_RX_RING];

 dr->num_entries = pkt->num_descr;
 dr->entry_size = pkt->descr_size;
 dr->ncookies = pkt->num_cookies;
 for (i = 0; i < dr->ncookies; i++) {
  dr->cookies[i] = pkt->cookies[i];

  viodbg(HS, "DRING COOKIE(%d) [%016llx:%016llx]\n",
         i,
         (unsigned long long)
         pkt->cookies[i].cookie_addr,
         (unsigned long long)
         pkt->cookies[i].cookie_size);
 }

 pkt->tag.stype = VIO_SUBTYPE_ACK;
 pkt->dring_ident = ++dr->ident;

 viodbg(HS, "SEND DRING_REG ACK ident[%llx]\n",
        (unsigned long long) pkt->dring_ident);

 len = (sizeof(*pkt) +
        (dr->ncookies * sizeof(struct ldc_trans_cookie)));
 if (send_ctrl(vio, &pkt->tag, len) < 0)
  goto send_nack;

 vio->dr_state |= VIO_DR_STATE_RXREG;

 return 0;

send_nack:
 pkt->tag.stype = VIO_SUBTYPE_NACK;
 viodbg(HS, "SEND DRING_REG NACK\n");
 (void) send_ctrl(vio, &pkt->tag, sizeof(*pkt));

 return handshake_failure(vio);
}
