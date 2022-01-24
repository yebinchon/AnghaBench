#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct bsd_dict {int dummy; } ;
struct bsd_db {int totlen; unsigned int hsize; unsigned int hshift; unsigned int maxmaxcode; int maxbits; int /*<<< orphan*/ * lens; void* dict; } ;

/* Variables and functions */
 scalar_t__ BSD_CURRENT_VERSION ; 
 int FUNC0 (unsigned char) ; 
 scalar_t__ FUNC1 (unsigned char) ; 
 unsigned char CI_BSD_COMPRESS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct bsd_db*) ; 
 struct bsd_db* FUNC4 (int,int /*<<< orphan*/ ) ; 
 void* FUNC5 (unsigned int) ; 

__attribute__((used)) static void *FUNC6 (unsigned char *options, int opt_len, int decomp)
  {
    int bits;
    unsigned int hsize, hshift, maxmaxcode;
    struct bsd_db *db;

    if (opt_len != 3 || options[0] != CI_BSD_COMPRESS || options[1] != 3
	|| FUNC1(options[2]) != BSD_CURRENT_VERSION)
      {
	return NULL;
      }

    bits = FUNC0(options[2]);

    switch (bits)
      {
    case 9:			/* needs 82152 for both directions */
    case 10:			/* needs 84144 */
    case 11:			/* needs 88240 */
    case 12:			/* needs 96432 */
	hsize = 5003;
	hshift = 4;
	break;
    case 13:			/* needs 176784 */
	hsize = 9001;
	hshift = 5;
	break;
    case 14:			/* needs 353744 */
	hsize = 18013;
	hshift = 6;
	break;
    case 15:			/* needs 691440 */
	hsize = 35023;
	hshift = 7;
	break;
    case 16:			/* needs 1366160--far too much, */
	/* hsize = 69001; */	/* and 69001 is too big for cptr */
	/* hshift = 8; */	/* in struct bsd_db */
	/* break; */
    default:
	return NULL;
      }
/*
 * Allocate the main control structure for this instance.
 */
    maxmaxcode = FUNC2(bits);
    db         = FUNC4(sizeof (struct bsd_db),
					    GFP_KERNEL);
    if (!db)
      {
	return NULL;
      }

/*
 * Allocate space for the dictionary. This may be more than one page in
 * length.
 */
    db->dict = FUNC5(hsize * sizeof(struct bsd_dict));
    if (!db->dict)
      {
	FUNC3 (db);
	return NULL;
      }

/*
 * If this is the compression buffer then there is no length data.
 */
    if (!decomp)
      {
	db->lens = NULL;
      }
/*
 * For decompression, the length information is needed as well.
 */
    else
      {
        db->lens = FUNC5((maxmaxcode + 1) * sizeof(db->lens[0]));
	if (!db->lens)
	  {
	    FUNC3 (db);
	    return (NULL);
	  }
      }
/*
 * Initialize the data information for the compression code
 */
    db->totlen     = sizeof (struct bsd_db)   +
      		    (sizeof (struct bsd_dict) * hsize);

    db->hsize      = hsize;
    db->hshift     = hshift;
    db->maxmaxcode = maxmaxcode;
    db->maxbits    = bits;

    return (void *) db;
  }