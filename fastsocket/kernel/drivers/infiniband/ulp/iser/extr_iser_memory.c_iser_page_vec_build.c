
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iser_page_vec {int length; int data_size; scalar_t__ offset; } ;
struct iser_data_buf {int dma_nents; } ;
struct ib_device {int dummy; } ;


 int BUG () ;
 int SIZE_4K ;
 int iser_data_buf_dump (struct iser_data_buf*,struct ib_device*) ;
 int iser_dbg (char*,int ,...) ;
 int iser_dump_page_vec (struct iser_page_vec*) ;
 int iser_err (char*) ;
 int iser_sg_to_page_vec (struct iser_data_buf*,struct iser_page_vec*,struct ib_device*) ;

__attribute__((used)) static void iser_page_vec_build(struct iser_data_buf *data,
    struct iser_page_vec *page_vec,
    struct ib_device *ibdev)
{
 int page_vec_len = 0;

 page_vec->length = 0;
 page_vec->offset = 0;

 iser_dbg("Translating sg sz: %d\n", data->dma_nents);
 page_vec_len = iser_sg_to_page_vec(data, page_vec, ibdev);
 iser_dbg("sg len %d page_vec_len %d\n", data->dma_nents,page_vec_len);

 page_vec->length = page_vec_len;

 if (page_vec_len * SIZE_4K < page_vec->data_size) {
  iser_err("page_vec too short to hold this SG\n");
  iser_data_buf_dump(data, ibdev);
  iser_dump_page_vec(page_vec);
  BUG();
 }
}
