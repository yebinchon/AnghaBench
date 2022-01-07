
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fcoe_transport {int attached; int name; int list; } ;


 int EEXIST ;
 int FCOE_TRANSPORT_DEFAULT ;
 int LIBFCOE_TRANSPORT_DBG (char*,int ) ;
 int fcoe_transports ;
 int ft_mutex ;
 int list_add (int *,int *) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ strcmp (int ,int ) ;

int fcoe_transport_attach(struct fcoe_transport *ft)
{
 int rc = 0;

 mutex_lock(&ft_mutex);
 if (ft->attached) {
  LIBFCOE_TRANSPORT_DBG("transport %s already attached\n",
           ft->name);
  rc = -EEXIST;
  goto out_attach;
 }


 if (strcmp(ft->name, FCOE_TRANSPORT_DEFAULT))
  list_add(&ft->list, &fcoe_transports);
 else
  list_add_tail(&ft->list, &fcoe_transports);

 ft->attached = 1;
 LIBFCOE_TRANSPORT_DBG("attaching transport %s\n", ft->name);

out_attach:
 mutex_unlock(&ft_mutex);
 return rc;
}
