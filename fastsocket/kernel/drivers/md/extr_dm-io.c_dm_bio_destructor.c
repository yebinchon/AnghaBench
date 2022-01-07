
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct io {TYPE_1__* client; } ;
struct bio {int dummy; } ;
struct TYPE_2__ {int bios; } ;


 int bio_free (struct bio*,int ) ;
 int retrieve_io_and_region_from_bio (struct bio*,struct io**,unsigned int*) ;

__attribute__((used)) static void dm_bio_destructor(struct bio *bio)
{
 unsigned region;
 struct io *io;

 retrieve_io_and_region_from_bio(bio, &io, &region);

 bio_free(bio, io->client->bios);
}
