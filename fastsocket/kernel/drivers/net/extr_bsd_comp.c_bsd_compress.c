
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long fcode; } ;
struct bsd_dict {unsigned int codem1; int cptr; TYPE_1__ f; } ;
struct bsd_db {int hshift; unsigned int max_ent; unsigned int n_bits; int seqno; int hsize; unsigned int maxmaxcode; int bytes_out; int uncomp_bytes; int in_count; int incomp_bytes; int comp_bytes; int comp_count; int incomp_count; int uncomp_count; scalar_t__ lens; } ;


 unsigned int BADCODEM1 ;
 int BSD_HASH (int,unsigned char,int) ;
 unsigned long BSD_KEY (int,unsigned char) ;
 int BSD_OVHD ;
 int CLEAR ;
 int MAXCODE (unsigned int) ;
 int OUTPUT (int) ;
 int PPP_ADDRESS (unsigned char*) ;
 int PPP_COMP ;
 int PPP_CONTROL (unsigned char*) ;
 int PPP_HDRLEN ;
 int PPP_PROTOCOL (unsigned char*) ;
 int PUTBYTE (unsigned long) ;
 scalar_t__ bsd_check (struct bsd_db*) ;
 struct bsd_dict* dict_ptr (struct bsd_db*,int) ;
 unsigned short* lens_ptr (struct bsd_db*,int) ;

__attribute__((used)) static int bsd_compress (void *state, unsigned char *rptr, unsigned char *obuf,
    int isize, int osize)
  {
    struct bsd_db *db;
    int hshift;
    unsigned int max_ent;
    unsigned int n_bits;
    unsigned int bitno;
    unsigned long accm;
    int ent;
    unsigned long fcode;
    struct bsd_dict *dictp;
    unsigned char c;
    int hval;
    int disp;
    int ilen;
    int mxcode;
    unsigned char *wptr;
    int olen;
    ent = PPP_PROTOCOL(rptr);
    if (ent < 0x21 || ent > 0xf9)
      {
 return 0;
      }

    db = (struct bsd_db *) state;
    hshift = db->hshift;
    max_ent = db->max_ent;
    n_bits = db->n_bits;
    bitno = 32;
    accm = 0;
    mxcode = MAXCODE (n_bits);


    wptr = obuf;
    olen = PPP_HDRLEN + BSD_OVHD;

    if (osize > isize)
      {
 osize = isize;
      }


    if (wptr)
      {
 *wptr++ = PPP_ADDRESS(rptr);
 *wptr++ = PPP_CONTROL(rptr);
 *wptr++ = 0;
 *wptr++ = PPP_COMP;
 *wptr++ = db->seqno >> 8;
 *wptr++ = db->seqno;
      }


    rptr += PPP_HDRLEN;
    isize -= PPP_HDRLEN;
    ilen = ++isize;

    while (--ilen > 0)
      {
 c = *rptr++;
 fcode = BSD_KEY (ent, c);
 hval = BSD_HASH (ent, c, hshift);
 dictp = dict_ptr (db, hval);


 if (dictp->codem1 >= max_ent)
   {
     goto nomatch;
   }

 if (dictp->f.fcode == fcode)
   {
     ent = dictp->codem1 + 1;
     continue;
   }


 disp = (hval == 0) ? 1 : hval;

 do
   {
     hval += disp;
     if (hval >= db->hsize)
       {
  hval -= db->hsize;
       }
     dictp = dict_ptr (db, hval);
     if (dictp->codem1 >= max_ent)
       {
  goto nomatch;
       }
   }
 while (dictp->f.fcode != fcode);

 ent = dictp->codem1 + 1;
 continue;

nomatch:
 { bitno -= n_bits; accm |= ((ent) << bitno); do { { ++olen; if (wptr) { *wptr++ = (unsigned char) (accm >> 24); if (olen >= osize) { wptr = ((void*)0); } } }; accm <<= 8; bitno += 8; } while (bitno <= 24); };


 if (max_ent < db->maxmaxcode)
   {
     struct bsd_dict *dictp2;
     struct bsd_dict *dictp3;
     int indx;


     if (max_ent >= mxcode)
       {
  db->n_bits = ++n_bits;
  mxcode = MAXCODE (n_bits);
       }





     dictp2 = dict_ptr (db, max_ent + 1);
     indx = dictp2->cptr;
     dictp3 = dict_ptr (db, indx);

     if (dictp3->codem1 == max_ent)
       {
  dictp3->codem1 = BADCODEM1;
       }

     dictp2->cptr = hval;
     dictp->codem1 = max_ent;
     dictp->f.fcode = fcode;
     db->max_ent = ++max_ent;

     if (db->lens)
       {
  unsigned short *len1 = lens_ptr (db, max_ent);
  unsigned short *len2 = lens_ptr (db, ent);
  *len1 = *len2 + 1;
       }
   }
 ent = c;
      }

    { bitno -= n_bits; accm |= ((ent) << bitno); do { { ++olen; if (wptr) { *wptr++ = (unsigned char) (accm >> 24); if (olen >= osize) { wptr = ((void*)0); } } }; accm <<= 8; bitno += 8; } while (bitno <= 24); };

    db->bytes_out += olen - PPP_HDRLEN - BSD_OVHD;
    db->uncomp_bytes += isize;
    db->in_count += isize;
    ++db->uncomp_count;
    ++db->seqno;

    if (bitno < 32)
      {
 ++db->bytes_out;
      }





    if (bsd_check(db))
      {
 { bitno -= n_bits; accm |= ((CLEAR) << bitno); do { { ++olen; if (wptr) { *wptr++ = (unsigned char) (accm >> 24); if (olen >= osize) { wptr = ((void*)0); } } }; accm <<= 8; bitno += 8; } while (bitno <= 24); };
      }






    if (bitno != 32)
      {
 { ++olen; if (wptr) { *wptr++ = (unsigned char) ((accm | (0xff << (bitno-8))) >> 24); if (olen >= osize) { wptr = ((void*)0); } } };
      }






    if (max_ent >= mxcode && max_ent < db->maxmaxcode)
      {
 db->n_bits++;
      }


    if (wptr == ((void*)0))
      {
 ++db->incomp_count;
 db->incomp_bytes += isize;
 olen = 0;
      }
    else
      {
 ++db->comp_count;
 db->comp_bytes += olen;
      }


    return olen;


  }
