
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct isac {scalar_t__ rcvidx; int (* write_isac ) (struct isac*,int ,int ) ;int (* read_isac_fifo ) (struct isac*,int *,int) ;int * rcvbuf; } ;


 int DBG (int ,char*,int) ;
 int DBG_IRQ ;
 int DBG_PACKET (int ,int *,int) ;
 int DBG_RFIFO ;
 int DBG_WARN ;
 int ISAC_CMDR ;
 int ISAC_CMDR_RMC ;
 scalar_t__ MAX_DFRAME_LEN_L1 ;
 int stub1 (struct isac*,int ,int ) ;
 int stub2 (struct isac*,int *,int) ;
 int stub3 (struct isac*,int ,int ) ;

__attribute__((used)) static void isac_empty_fifo(struct isac *isac, int count)
{


 u_char *ptr;

 DBG(DBG_IRQ, "count %d", count);

 if ((isac->rcvidx + count) >= MAX_DFRAME_LEN_L1) {
  DBG(DBG_WARN, "overrun %d", isac->rcvidx + count);
  isac->write_isac(isac, ISAC_CMDR, ISAC_CMDR_RMC);
  isac->rcvidx = 0;
  return;
 }
 ptr = isac->rcvbuf + isac->rcvidx;
 isac->rcvidx += count;
 isac->read_isac_fifo(isac, ptr, count);
 isac->write_isac(isac, ISAC_CMDR, ISAC_CMDR_RMC);
 DBG_PACKET(DBG_RFIFO, ptr, count);
}
