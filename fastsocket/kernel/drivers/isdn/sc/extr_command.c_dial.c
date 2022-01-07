
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int phone; } ;
typedef TYPE_1__ setup_parm ;
struct TYPE_5__ {int devicename; } ;


 int CEPID ;
 int ENODEV ;
 int IS_VALID_CARD (int) ;
 int ceReqClass1 ;
 int ceReqPhyConnect ;
 int ceReqTypePhy ;
 int pr_debug (char*,int,...) ;
 TYPE_2__** sc_adapter ;
 int sendmessage (int,int ,int ,int ,int ,unsigned char,int ,unsigned int*) ;
 int strcpy (char*,int ) ;
 int strlen (char*) ;

__attribute__((used)) static int dial(int card, unsigned long channel, setup_parm setup)
{
 int status;
 char Phone[48];

 if(!IS_VALID_CARD(card)) {
  pr_debug("Invalid param: %d is not a valid card id\n", card);
  return -ENODEV;
 }


 strcpy(Phone,setup.phone);


 status = sendmessage(card, CEPID,ceReqTypePhy,
    ceReqClass1,
    ceReqPhyConnect,
    (unsigned char) channel+1,
    strlen(Phone),
    (unsigned int *) Phone);

 pr_debug("%s: Dialing %s on channel %lu\n",
  sc_adapter[card]->devicename, Phone, channel+1);

 return status;
}
