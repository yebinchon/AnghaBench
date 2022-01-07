
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcmcia_device_id {int match_flags; scalar_t__ manf_id; scalar_t__ card_id; scalar_t__ function; scalar_t__ device_no; scalar_t__ func_id; int cisfile; int * prod_id; } ;
struct pcmcia_device {scalar_t__ manf_id; scalar_t__ card_id; scalar_t__ func; scalar_t__ device_no; scalar_t__ func_id; int dev; scalar_t__ has_func_id; scalar_t__ has_card_id; scalar_t__ has_manf_id; scalar_t__* prod_id; TYPE_1__* socket; int allow_func_id_match; } ;
struct TYPE_2__ {int fake_cis; } ;


 int PCMCIA_DEV_ID_MATCH_ANONYMOUS ;
 int PCMCIA_DEV_ID_MATCH_CARD_ID ;
 int PCMCIA_DEV_ID_MATCH_DEVICE_NO ;
 int PCMCIA_DEV_ID_MATCH_FAKE_CIS ;
 int PCMCIA_DEV_ID_MATCH_FUNCTION ;
 int PCMCIA_DEV_ID_MATCH_FUNC_ID ;
 int PCMCIA_DEV_ID_MATCH_MANF_ID ;
 int PCMCIA_DEV_ID_MATCH_PROD_ID1 ;
 int PCMCIA_DEV_ID_MATCH_PROD_ID2 ;
 int PCMCIA_DEV_ID_MATCH_PROD_ID3 ;
 int PCMCIA_DEV_ID_MATCH_PROD_ID4 ;
 int dev_set_drvdata (int *,struct pcmcia_device_id*) ;
 int ds_dev_dbg (int ,int *,char*) ;
 int pcmcia_load_firmware (struct pcmcia_device*,int ) ;
 scalar_t__ strcmp (int ,scalar_t__) ;

__attribute__((used)) static inline int pcmcia_devmatch(struct pcmcia_device *dev,
      struct pcmcia_device_id *did)
{
 if (did->match_flags & PCMCIA_DEV_ID_MATCH_MANF_ID) {
  if ((!dev->has_manf_id) || (dev->manf_id != did->manf_id))
   return 0;
 }

 if (did->match_flags & PCMCIA_DEV_ID_MATCH_CARD_ID) {
  if ((!dev->has_card_id) || (dev->card_id != did->card_id))
   return 0;
 }

 if (did->match_flags & PCMCIA_DEV_ID_MATCH_FUNCTION) {
  if (dev->func != did->function)
   return 0;
 }

 if (did->match_flags & PCMCIA_DEV_ID_MATCH_PROD_ID1) {
  if (!dev->prod_id[0])
   return 0;
  if (strcmp(did->prod_id[0], dev->prod_id[0]))
   return 0;
 }

 if (did->match_flags & PCMCIA_DEV_ID_MATCH_PROD_ID2) {
  if (!dev->prod_id[1])
   return 0;
  if (strcmp(did->prod_id[1], dev->prod_id[1]))
   return 0;
 }

 if (did->match_flags & PCMCIA_DEV_ID_MATCH_PROD_ID3) {
  if (!dev->prod_id[2])
   return 0;
  if (strcmp(did->prod_id[2], dev->prod_id[2]))
   return 0;
 }

 if (did->match_flags & PCMCIA_DEV_ID_MATCH_PROD_ID4) {
  if (!dev->prod_id[3])
   return 0;
  if (strcmp(did->prod_id[3], dev->prod_id[3]))
   return 0;
 }

 if (did->match_flags & PCMCIA_DEV_ID_MATCH_DEVICE_NO) {
  if (dev->device_no != did->device_no)
   return 0;
 }

 if (did->match_flags & PCMCIA_DEV_ID_MATCH_FUNC_ID) {
  if ((!dev->has_func_id) || (dev->func_id != did->func_id))
   return 0;



  if (did->match_flags & PCMCIA_DEV_ID_MATCH_DEVICE_NO)
   return 0;
  if (dev->device_no)
   return 0;





  ds_dev_dbg(0, &dev->dev,
   "skipping FUNC_ID match until userspace interaction\n");
  if (!dev->allow_func_id_match)
   return 0;
 }

 if (did->match_flags & PCMCIA_DEV_ID_MATCH_FAKE_CIS) {
  ds_dev_dbg(0, &dev->dev, "device needs a fake CIS\n");
  if (!dev->socket->fake_cis)
   pcmcia_load_firmware(dev, did->cisfile);

  if (!dev->socket->fake_cis)
   return 0;
 }

 if (did->match_flags & PCMCIA_DEV_ID_MATCH_ANONYMOUS) {
  int i;
  for (i=0; i<4; i++)
   if (dev->prod_id[i])
    return 0;
  if (dev->has_manf_id || dev->has_card_id || dev->has_func_id)
   return 0;
 }

 dev_set_drvdata(&dev->dev, did);

 return 1;
}
