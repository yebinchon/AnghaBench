
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isac {int (* write_isac ) (struct isac*,int ,int) ;int type; } ;


 int ISACSX_ISTA_CIC ;
 int ISACSX_ISTA_ICD ;
 int ISACSX_MASK ;
 int ISACSX_MASKD ;
 int ISACSX_MODED ;
 int ISACSX_TR_CONF0 ;
 int ISACSX_TR_CONF2 ;
 int TYPE_ISACSX ;
 int stub1 (struct isac*,int ,int) ;
 int stub2 (struct isac*,int ,int) ;
 int stub3 (struct isac*,int ,int) ;
 int stub4 (struct isac*,int ,int) ;
 int stub5 (struct isac*,int ,int) ;

void isacsx_setup(struct isac *isac)
{
 isac->type = TYPE_ISACSX;

 isac->write_isac(isac, ISACSX_TR_CONF0, 0x00);

 isac->write_isac(isac, ISACSX_TR_CONF2, 0x00);

 isac->write_isac(isac, ISACSX_MODED, 0xc9);

 isac->write_isac(isac, ISACSX_MASKD, 0x03);

 isac->write_isac(isac, ISACSX_MASK,
    ~(ISACSX_ISTA_ICD | ISACSX_ISTA_CIC));
}
