
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct ipac_hw {int type; int isac; int name; TYPE_2__* hscx; int conf; } ;
struct TYPE_3__ {int debug; } ;
struct TYPE_4__ {TYPE_1__ bch; } ;


 int DEBUG_HW ;
 int IPAC_CONF ;
 int IPAC_ID ;
 int IPAC_MASK ;
 int IPAC_TYPE_HSCX ;
 int IPAC_TYPE_IPAC ;
 int IPAC__ON ;
 int ReadIPAC (struct ipac_hw*,int ) ;
 int WriteIPAC (struct ipac_hw*,int ,int ) ;
 int hscx_init (TYPE_2__*) ;
 int isac_init (int *) ;
 int pr_debug (char*,int ,int ,int ) ;
 int pr_notice (char*,int ,int ) ;

__attribute__((used)) static int
ipac_init(struct ipac_hw *ipac)
{
 u8 val;

 if (ipac->type & IPAC_TYPE_HSCX) {
  hscx_init(&ipac->hscx[0]);
  hscx_init(&ipac->hscx[1]);
  val = ReadIPAC(ipac, IPAC_ID);
 } else if (ipac->type & IPAC_TYPE_IPAC) {
  hscx_init(&ipac->hscx[0]);
  hscx_init(&ipac->hscx[1]);
  WriteIPAC(ipac, IPAC_MASK, IPAC__ON);
  val = ReadIPAC(ipac, IPAC_CONF);

  pr_debug("%s: IPAC CONF %02x/%02x\n", ipac->name,
   val, ipac->conf);
  WriteIPAC(ipac, IPAC_CONF, ipac->conf);
  val = ReadIPAC(ipac, IPAC_ID);
  if (ipac->hscx[0].bch.debug & DEBUG_HW)
   pr_notice("%s: IPAC Design ID %02x\n", ipac->name, val);
 }

 return isac_init(&ipac->isac);
}
