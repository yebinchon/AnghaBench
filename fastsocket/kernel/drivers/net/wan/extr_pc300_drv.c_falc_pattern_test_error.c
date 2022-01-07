
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_5__ {int falc; } ;
typedef TYPE_1__ pc300ch_t ;
struct TYPE_6__ {int * chan; } ;
typedef TYPE_2__ pc300_t ;
struct TYPE_7__ {int bec; } ;
typedef TYPE_3__ falc_t ;



__attribute__((used)) static u16 falc_pattern_test_error(pc300_t * card, int ch)
{
 pc300ch_t *chan = (pc300ch_t *) & card->chan[ch];
 falc_t *pfalc = (falc_t *) & chan->falc;

 return (pfalc->bec);
}
