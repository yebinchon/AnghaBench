
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idt77105_priv {struct idt77105_priv* next; struct atm_dev* dev; } ;
struct atm_dev {int * dev_data; int * phy; int number; int type; } ;


 int DPRINTK (char*,int ,int ) ;
 int GET (int ) ;
 int IDT77105_MCR_EIP ;
 int MCR ;
 int PUT (int,int ) ;
 struct idt77105_priv* idt77105_all ;
 int kfree (struct idt77105_priv*) ;

__attribute__((used)) static int idt77105_stop(struct atm_dev *dev)
{
 struct idt77105_priv *walk, *prev;

        DPRINTK("%s(itf %d): stopping IDT77105\n",dev->type,dev->number);


 PUT( GET(MCR) & ~IDT77105_MCR_EIP, MCR );


 for (prev = ((void*)0), walk = idt77105_all ;
             walk != ((void*)0);
             prev = walk, walk = walk->next) {
            if (walk->dev == dev) {
                if (prev != ((void*)0))
                    prev->next = walk->next;
                else
                    idt77105_all = walk->next;
         dev->phy = ((void*)0);
                dev->dev_data = ((void*)0);
                kfree(walk);
                break;
            }
        }

 return 0;
}
