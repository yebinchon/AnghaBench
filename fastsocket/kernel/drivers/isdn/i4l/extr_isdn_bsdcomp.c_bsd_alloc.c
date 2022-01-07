
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isdn_ppp_comp_data {int optlen; scalar_t__ num; int flags; int * options; } ;
struct bsd_dict {int dummy; } ;
struct bsd_db {int xmit; int totlen; unsigned int hsize; unsigned int hshift; unsigned int maxmaxcode; int maxbits; int * lens; void* dict; } ;


 scalar_t__ BSD_CURRENT_VERSION ;
 int BSD_NBITS (int ) ;
 scalar_t__ BSD_VERSION (int ) ;
 scalar_t__ CI_BSD_COMPRESS ;
 int GFP_KERNEL ;
 int IPPP_COMP_FLAG_XMIT ;
 unsigned int MAXCODE (int) ;
 int bsd_free (struct bsd_db*) ;
 struct bsd_db* kzalloc (int,int ) ;
 void* vmalloc (unsigned int) ;

__attribute__((used)) static void *bsd_alloc (struct isdn_ppp_comp_data *data)
{
 int bits;
 unsigned int hsize, hshift, maxmaxcode;
 struct bsd_db *db;
 int decomp;

 static unsigned int htab[][2] = {
  { 5003 , 4 } , { 5003 , 4 } , { 5003 , 4 } , { 5003 , 4 } ,
  { 9001 , 5 } , { 18013 , 6 } , { 35023 , 7 } , { 69001 , 8 }
 };

 if (data->optlen != 1 || data->num != CI_BSD_COMPRESS
  || BSD_VERSION(data->options[0]) != BSD_CURRENT_VERSION)
  return ((void*)0);

 bits = BSD_NBITS(data->options[0]);

 if(bits < 9 || bits > 15)
  return ((void*)0);

 hsize = htab[bits-9][0];
 hshift = htab[bits-9][1];




 maxmaxcode = MAXCODE(bits);
 db = kzalloc (sizeof (struct bsd_db),GFP_KERNEL);
 if (!db)
  return ((void*)0);

 db->xmit = data->flags & IPPP_COMP_FLAG_XMIT;
 decomp = db->xmit ? 0 : 1;





 db->dict = vmalloc(hsize * sizeof(struct bsd_dict));
 if (!db->dict) {
  bsd_free (db);
  return ((void*)0);
 }





 if (!decomp)
  db->lens = ((void*)0);
 else {
  db->lens = vmalloc((maxmaxcode + 1) * sizeof(db->lens[0]));
  if (!db->lens) {
   bsd_free (db);
   return (((void*)0));
  }
 }




 db->totlen = sizeof (struct bsd_db) + (sizeof (struct bsd_dict) * hsize);
 db->hsize = hsize;
 db->hshift = hshift;
 db->maxmaxcode = maxmaxcode;
 db->maxbits = bits;

 return (void *) db;
}
