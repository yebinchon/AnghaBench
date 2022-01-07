
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpsb_iso {int dummy; } ;
struct firedtv {struct hpsb_iso* backend_data; } ;


 int hpsb_iso_shutdown (struct hpsb_iso*) ;
 int hpsb_iso_stop (struct hpsb_iso*) ;

__attribute__((used)) static void stop_iso(struct firedtv *fdtv)
{
 struct hpsb_iso *iso_handle = fdtv->backend_data;

 if (iso_handle != ((void*)0)) {
  hpsb_iso_stop(iso_handle);
  hpsb_iso_shutdown(iso_handle);
 }
 fdtv->backend_data = ((void*)0);
}
