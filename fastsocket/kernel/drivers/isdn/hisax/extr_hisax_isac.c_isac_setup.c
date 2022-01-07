
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isac {int mocr; int adf2; int (* read_isac ) (struct isac*,int ) ;int (* write_isac ) (struct isac*,int ,int) ;int l1m; int flags; int type; } ;


 int DBG (int,char*,int) ;
 int FsmEvent (int *,int,int *) ;
 int ISAC_ADF1 ;
 int ISAC_ADF2 ;
 int ISAC_CIR0 ;
 int ISAC_CMDR ;
 int ISAC_CMDR_RRES ;
 int ISAC_CMDR_XRES ;
 int ISAC_CMD_RES ;
 int ISAC_EXIR ;
 int ISAC_IOM1 ;
 int ISAC_ISTA ;
 int ISAC_MASK ;
 int ISAC_MODE ;
 int ISAC_SPCR ;
 int ISAC_SQXR ;
 int ISAC_STAR ;
 int ISAC_STCR ;
 int ISAC_TIMR ;
 int TYPE_ISAC ;
 int isac_version (struct isac*) ;
 int ph_command (struct isac*,int ) ;
 int stub1 (struct isac*,int ,int) ;
 int stub10 (struct isac*,int ,int) ;
 int stub11 (struct isac*,int ,int) ;
 int stub12 (struct isac*,int ,int) ;
 int stub13 (struct isac*,int ,int) ;
 int stub14 (struct isac*,int ) ;
 int stub15 (struct isac*,int ) ;
 int stub16 (struct isac*,int ) ;
 int stub17 (struct isac*,int ) ;
 int stub18 (struct isac*,int ) ;
 int stub19 (struct isac*,int ) ;
 int stub2 (struct isac*,int ,int) ;
 int stub20 (struct isac*,int ,int) ;
 int stub21 (struct isac*,int ,int) ;
 int stub3 (struct isac*,int ,int) ;
 int stub4 (struct isac*,int ,int) ;
 int stub5 (struct isac*,int ,int) ;
 int stub6 (struct isac*,int ,int) ;
 int stub7 (struct isac*,int ,int) ;
 int stub8 (struct isac*,int ,int) ;
 int stub9 (struct isac*,int ,int) ;
 scalar_t__ test_bit (int ,int *) ;

void isac_setup(struct isac *isac)
{
 int val, eval;

 isac->type = TYPE_ISAC;
 isac_version(isac);

 ph_command(isac, ISAC_CMD_RES);

   isac->write_isac(isac, ISAC_MASK, 0xff);
   isac->mocr = 0xaa;
 if (test_bit(ISAC_IOM1, &isac->flags)) {

  isac->write_isac(isac, ISAC_ADF2, 0x0);
  isac->write_isac(isac, ISAC_SPCR, 0xa);
  isac->write_isac(isac, ISAC_ADF1, 0x2);
  isac->write_isac(isac, ISAC_STCR, 0x70);
  isac->write_isac(isac, ISAC_MODE, 0xc9);
 } else {

  if (!isac->adf2)
   isac->adf2 = 0x80;
  isac->write_isac(isac, ISAC_ADF2, isac->adf2);
  isac->write_isac(isac, ISAC_SQXR, 0x2f);
  isac->write_isac(isac, ISAC_SPCR, 0x00);
  isac->write_isac(isac, ISAC_STCR, 0x70);
  isac->write_isac(isac, ISAC_MODE, 0xc9);
  isac->write_isac(isac, ISAC_TIMR, 0x00);
  isac->write_isac(isac, ISAC_ADF1, 0x00);
 }
 val = isac->read_isac(isac, ISAC_STAR);
 DBG(2, "ISAC STAR %x", val);
 val = isac->read_isac(isac, ISAC_MODE);
 DBG(2, "ISAC MODE %x", val);
 val = isac->read_isac(isac, ISAC_ADF2);
 DBG(2, "ISAC ADF2 %x", val);
 val = isac->read_isac(isac, ISAC_ISTA);
 DBG(2, "ISAC ISTA %x", val);
 if (val & 0x01) {
  eval = isac->read_isac(isac, ISAC_EXIR);
  DBG(2, "ISAC EXIR %x", eval);
 }
 val = isac->read_isac(isac, ISAC_CIR0);
 DBG(2, "ISAC CIR0 %x", val);
 FsmEvent(&isac->l1m, (val >> 2) & 0xf, ((void*)0));

 isac->write_isac(isac, ISAC_MASK, 0x0);

 isac->write_isac(isac, ISAC_CMDR, ISAC_CMDR_XRES | ISAC_CMDR_RRES);
}
