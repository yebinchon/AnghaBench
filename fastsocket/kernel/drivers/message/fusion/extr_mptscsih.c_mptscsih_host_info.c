
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct info_str {char* buffer; int length; scalar_t__ offset; scalar_t__ pos; } ;
typedef scalar_t__ off_t ;
struct TYPE_5__ {int Word; } ;
struct TYPE_6__ {int NumberOfPorts; TYPE_1__ FWVersion; } ;
struct TYPE_7__ {int req_depth; TYPE_2__ facts; int prod_name; int name; } ;
typedef TYPE_3__ MPT_ADAPTER ;


 int MPT_FW_REV_MAGIC_ID_STRING ;
 int mptscsih_copy_info (struct info_str*,char*,int ,...) ;

__attribute__((used)) static int
mptscsih_host_info(MPT_ADAPTER *ioc, char *pbuf, off_t offset, int len)
{
 struct info_str info;

 info.buffer = pbuf;
 info.length = len;
 info.offset = offset;
 info.pos = 0;

 mptscsih_copy_info(&info, "%s: %s, ", ioc->name, ioc->prod_name);
 mptscsih_copy_info(&info, "%s%08xh, ", MPT_FW_REV_MAGIC_ID_STRING, ioc->facts.FWVersion.Word);
 mptscsih_copy_info(&info, "Ports=%d, ", ioc->facts.NumberOfPorts);
 mptscsih_copy_info(&info, "MaxQ=%d\n", ioc->req_depth);

 return ((info.pos > info.offset) ? info.pos - info.offset : 0);
}
