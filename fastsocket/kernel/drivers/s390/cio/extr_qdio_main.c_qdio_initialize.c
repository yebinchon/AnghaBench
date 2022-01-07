
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qdio_initialize {int cdev; } ;


 int qdio_allocate (struct qdio_initialize*) ;
 int qdio_establish (struct qdio_initialize*) ;
 int qdio_free (int ) ;

int qdio_initialize(struct qdio_initialize *init_data)
{
 int rc;

 rc = qdio_allocate(init_data);
 if (rc)
  return rc;

 rc = qdio_establish(init_data);
 if (rc)
  qdio_free(init_data->cdev);
 return rc;
}
