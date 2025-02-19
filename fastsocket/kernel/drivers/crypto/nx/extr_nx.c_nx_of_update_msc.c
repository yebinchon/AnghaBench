
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct property {unsigned int length; scalar_t__ value; } ;
struct nx_of {int flags; TYPE_1__*** ap; } ;
struct msc_triplet {int keybitlen; int sglen; int databytelen; } ;
struct max_sync_cop {unsigned int triplets; scalar_t__ fc; scalar_t__ mode; struct msc_triplet* trip; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int sglen; int databytelen; } ;


 size_t NX_FC_AES ;
 size_t NX_FC_AES_HMAC ;
 size_t NX_FC_SHA ;
 scalar_t__ NX_MAX_FC ;
 scalar_t__ NX_MAX_MODE ;
 int NX_OF_FLAG_MAXSYNCCOP_SET ;
 int dev_err (struct device*,char*,scalar_t__,scalar_t__) ;
 int dev_warn (struct device*,char*,size_t,...) ;

__attribute__((used)) static void nx_of_update_msc(struct device *dev,
        struct property *p,
        struct nx_of *props)
{
 struct msc_triplet *trip;
 struct max_sync_cop *msc;
 unsigned int bytes_so_far, i, lenp;

 msc = (struct max_sync_cop *)p->value;
 lenp = p->length;





 bytes_so_far = 0;

 while ((bytes_so_far + sizeof(struct max_sync_cop)) <= lenp) {
  bytes_so_far += sizeof(struct max_sync_cop);

  trip = msc->trip;

  for (i = 0;
       ((bytes_so_far + sizeof(struct msc_triplet)) <= lenp) &&
       i < msc->triplets;
       i++) {
   if (msc->fc > NX_MAX_FC || msc->mode > NX_MAX_MODE) {
    dev_err(dev, "unknown function code/mode "
     "combo: %d/%d (ignored)\n", msc->fc,
     msc->mode);
    goto next_loop;
   }

   switch (trip->keybitlen) {
   case 128:
   case 160:
    props->ap[msc->fc][msc->mode][0].databytelen =
     trip->databytelen;
    props->ap[msc->fc][msc->mode][0].sglen =
     trip->sglen;
    break;
   case 192:
    props->ap[msc->fc][msc->mode][1].databytelen =
     trip->databytelen;
    props->ap[msc->fc][msc->mode][1].sglen =
     trip->sglen;
    break;
   case 256:
    if (msc->fc == NX_FC_AES) {
     props->ap[msc->fc][msc->mode][2].
      databytelen = trip->databytelen;
     props->ap[msc->fc][msc->mode][2].sglen =
      trip->sglen;
    } else if (msc->fc == NX_FC_AES_HMAC ||
        msc->fc == NX_FC_SHA) {
     props->ap[msc->fc][msc->mode][1].
      databytelen = trip->databytelen;
     props->ap[msc->fc][msc->mode][1].sglen =
      trip->sglen;
    } else {
     dev_warn(dev, "unknown function "
      "code/key bit len combo"
      ": (%u/256)\n", msc->fc);
    }
    break;
   case 512:
    props->ap[msc->fc][msc->mode][2].databytelen =
     trip->databytelen;
    props->ap[msc->fc][msc->mode][2].sglen =
     trip->sglen;
    break;
   default:
    dev_warn(dev, "unknown function code/key bit "
      "len combo: (%u/%u)\n", msc->fc,
      trip->keybitlen);
    break;
   }
next_loop:
   bytes_so_far += sizeof(struct msc_triplet);
   trip++;
  }

  msc = (struct max_sync_cop *)trip;
 }

 props->flags |= NX_OF_FLAG_MAXSYNCCOP_SET;
}
