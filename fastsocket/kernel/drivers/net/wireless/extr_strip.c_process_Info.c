
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strip {int dummy; } ;
typedef int __u8 ;


 int RecvErr (char*,struct strip*) ;

__attribute__((used)) static void process_Info(struct strip *strip_info, __u8 * ptr, __u8 * end)
{
 if (ptr + 16 > end)
  RecvErr("Bad Info Msg:", strip_info);
}
