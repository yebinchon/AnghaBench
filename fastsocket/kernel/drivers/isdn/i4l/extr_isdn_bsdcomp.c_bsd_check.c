
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bsd_db {int in_count; int checkpoint; int bytes_out; scalar_t__ max_ent; scalar_t__ maxmaxcode; unsigned int ratio; } ;


 int CHECK_GAP ;
 int RATIO_MAX ;
 int RATIO_SCALE ;
 unsigned int RATIO_SCALE_LOG ;
 int bsd_clear (struct bsd_db*) ;

__attribute__((used)) static int bsd_check (struct bsd_db *db)
{
    unsigned int new_ratio;

    if (db->in_count >= db->checkpoint)
      {

 if (db->in_count >= RATIO_MAX || db->bytes_out >= RATIO_MAX)
   {
     db->in_count -= (db->in_count >> 2);
     db->bytes_out -= (db->bytes_out >> 2);
   }

 db->checkpoint = db->in_count + CHECK_GAP;

 if (db->max_ent >= db->maxmaxcode)
   {
     new_ratio = db->in_count << RATIO_SCALE_LOG;
     if (db->bytes_out != 0)
       {
  new_ratio /= db->bytes_out;
       }

     if (new_ratio < db->ratio || new_ratio < 1 * RATIO_SCALE)
       {
  bsd_clear (db);
  return 1;
       }
     db->ratio = new_ratio;
   }
      }
    return 0;
}
