
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strip {int sx_count; int * sx_buff; } ;
typedef int __u8 ;


 int RecvErr (char*,struct strip*) ;
 int RecvErr_Message (struct strip*,int *,int *,int) ;
 scalar_t__ get_radio_address (struct strip*,int *) ;
 scalar_t__ has_prefix (int *,int,char*) ;
 scalar_t__ text_equal (int *,int,char*) ;

__attribute__((used)) static void process_text_message(struct strip *strip_info)
{
 __u8 *msg = strip_info->sx_buff;
 int len = strip_info->sx_count;



 if (len == 9 && get_radio_address(strip_info, msg) == 0)
  return;

 if (text_equal(msg, len, "OK"))
  return;
 if (text_equal(msg, len, "ERROR"))
  return;
 if (has_prefix(msg, len, "ate0q1"))
  return;



 if (has_prefix(msg, len, "ERR_")) {
  RecvErr_Message(strip_info, ((void*)0), &msg[4], len - 4);
  return;
 }

 RecvErr("No initial *", strip_info);
}
