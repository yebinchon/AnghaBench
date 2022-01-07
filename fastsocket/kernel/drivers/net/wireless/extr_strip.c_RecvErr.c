
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strip {int sx_count; int rx_errors; int * sx_buff; } ;
typedef int __u8 ;


 int DumpData (char*,struct strip*,int *,int *) ;

__attribute__((used)) static void RecvErr(char *msg, struct strip *strip_info)
{
 __u8 *ptr = strip_info->sx_buff;
 __u8 *end = strip_info->sx_buff + strip_info->sx_count;
 DumpData(msg, strip_info, ptr, end);
 strip_info->rx_errors++;
}
