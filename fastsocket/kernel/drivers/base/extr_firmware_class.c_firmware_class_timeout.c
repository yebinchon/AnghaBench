
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;
struct firmware_priv {int dummy; } ;


 int fw_load_abort (struct firmware_priv*) ;

__attribute__((used)) static void
firmware_class_timeout(u_long data)
{
 struct firmware_priv *fw_priv = (struct firmware_priv *) data;
 fw_load_abort(fw_priv);
}
