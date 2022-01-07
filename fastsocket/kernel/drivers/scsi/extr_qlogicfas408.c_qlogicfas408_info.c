
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlogicfas408_priv {char const* qinfo; } ;
struct Scsi_Host {int dummy; } ;


 struct qlogicfas408_priv* get_priv_by_host (struct Scsi_Host*) ;

const char *qlogicfas408_info(struct Scsi_Host *host)
{
 struct qlogicfas408_priv *priv = get_priv_by_host(host);
 return priv->qinfo;
}
