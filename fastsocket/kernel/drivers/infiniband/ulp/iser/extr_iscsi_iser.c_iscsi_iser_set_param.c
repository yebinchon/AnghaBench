
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_cls_conn {int dummy; } ;
typedef enum iscsi_param { ____Placeholder_iscsi_param } iscsi_param ;


 int EPROTO ;





 int iscsi_set_param (struct iscsi_cls_conn*,int,char*,int) ;
 int iser_err (char*) ;
 int sscanf (char*,char*,int*) ;

__attribute__((used)) static int
iscsi_iser_set_param(struct iscsi_cls_conn *cls_conn,
       enum iscsi_param param, char *buf, int buflen)
{
 int value;

 switch (param) {
 case 129:

  break;
 case 131:
  sscanf(buf, "%d", &value);
  if (value) {
   iser_err("DataDigest wasn't negotiated to None");
   return -EPROTO;
  }
  break;
 case 132:
  sscanf(buf, "%d", &value);
  if (value) {
   iser_err("DataDigest wasn't negotiated to None");
   return -EPROTO;
  }
  break;
 case 130:
  sscanf(buf, "%d", &value);
  if (value) {
   iser_err("IFMarker wasn't negotiated to No");
   return -EPROTO;
  }
  break;
 case 128:
  sscanf(buf, "%d", &value);
  if (value) {
   iser_err("OFMarker wasn't negotiated to No");
   return -EPROTO;
  }
  break;
 default:
  return iscsi_set_param(cls_conn, param, buf, buflen);
 }

 return 0;
}
