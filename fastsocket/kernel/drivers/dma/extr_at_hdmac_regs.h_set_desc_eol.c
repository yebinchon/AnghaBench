
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ctrlb; scalar_t__ dscr; } ;
struct at_desc {TYPE_1__ lli; } ;


 int ATC_DST_DSCR_DIS ;
 int ATC_SRC_DSCR_DIS ;

__attribute__((used)) static void set_desc_eol(struct at_desc *desc)
{
 desc->lli.ctrlb |= ATC_SRC_DSCR_DIS | ATC_DST_DSCR_DIS;
 desc->lli.dscr = 0;
}
