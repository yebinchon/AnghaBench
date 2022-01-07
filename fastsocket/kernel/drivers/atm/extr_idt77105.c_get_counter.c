
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct atm_dev {int dummy; } ;


 int CTRHI ;
 int CTRLO ;
 int CTRSEL ;
 int GET (int ) ;
 int PUT (int,int ) ;

__attribute__((used)) static u16 get_counter(struct atm_dev *dev, int counter)
{
        u16 val;


        PUT(counter, CTRSEL);

        val = GET(CTRLO);

        val |= GET(CTRHI)<<8;

        return val;
}
