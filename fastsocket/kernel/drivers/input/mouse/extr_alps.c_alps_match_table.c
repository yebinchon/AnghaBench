
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {int dummy; } ;
struct alps_model_info {unsigned char command_mode_resp; int mask0; int byte0; int flags; int proto_version; int signature; } ;
struct alps_data {int mask0; int byte0; int flags; int proto_version; } ;


 int ARRAY_SIZE (struct alps_model_info*) ;
 int EINVAL ;
 struct alps_model_info* alps_model_data ;
 int alps_set_defaults (struct alps_data*) ;
 int memcmp (unsigned char*,int ,int) ;

__attribute__((used)) static int alps_match_table(struct psmouse *psmouse, struct alps_data *priv,
       unsigned char *e7, unsigned char *ec)
{
 const struct alps_model_info *model;
 int i;

 for (i = 0; i < ARRAY_SIZE(alps_model_data); i++) {
  model = &alps_model_data[i];

  if (!memcmp(e7, model->signature, sizeof(model->signature)) &&
      (!model->command_mode_resp ||
       model->command_mode_resp == ec[2])) {

   priv->proto_version = model->proto_version;
   alps_set_defaults(priv);

   priv->flags = model->flags;
   priv->byte0 = model->byte0;
   priv->mask0 = model->mask0;

   return 0;
  }
 }

 return -EINVAL;
}
