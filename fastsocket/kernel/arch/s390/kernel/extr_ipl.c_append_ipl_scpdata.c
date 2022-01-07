
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ pbt; } ;
struct TYPE_5__ {TYPE_1__ hdr; } ;


 scalar_t__ DIAG308_IPL_TYPE_FCP ;
 TYPE_2__ ipl_block ;
 size_t reipl_append_ascii_scpdata (char*,size_t,TYPE_2__*) ;

size_t append_ipl_scpdata(char *dest, size_t len)
{
 size_t rc;

 rc = 0;
 if (ipl_block.hdr.pbt == DIAG308_IPL_TYPE_FCP)
  rc = reipl_append_ascii_scpdata(dest, len, &ipl_block);
 else
  dest[0] = 0;
 return rc;
}
