
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct lbs_private {int dummy; } ;
struct cmd_header {int size; } ;


 int le16_to_cpu (int ) ;
 int memcpy (struct cmd_header*,struct cmd_header*,int ) ;
 int min (int ,int ) ;

int lbs_cmd_copyback(struct lbs_private *priv, unsigned long extra,
       struct cmd_header *resp)
{
 struct cmd_header *buf = (void *)extra;
 uint16_t copy_len;

 copy_len = min(le16_to_cpu(buf->size), le16_to_cpu(resp->size));
 memcpy(buf, resp, copy_len);
 return 0;
}
