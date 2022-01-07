; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iser_memory.c_iser_reg_rdma_mem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iser_memory.c_iser_reg_rdma_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_iser_task = type { %struct.TYPE_11__, %struct.iser_data_buf*, %struct.iser_regd_buf*, %struct.iser_data_buf*, %struct.TYPE_8__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.iser_regd_buf = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i64, i64, i64, i64 }
%struct.iser_data_buf = type { i32, i64, i32 }
%struct.TYPE_8__ = type { %struct.iser_conn*, %struct.iscsi_conn* }
%struct.iser_conn = type { %struct.TYPE_12__*, i32, %struct.iser_device* }
%struct.TYPE_12__ = type { i32, i64*, i32, i32 }
%struct.iser_device = type { %struct.TYPE_9__*, %struct.ib_device* }
%struct.TYPE_9__ = type { i64, i64 }
%struct.ib_device = type { i32 }
%struct.iscsi_conn = type { i32 }
%struct.scatterlist = type { i32 }

@.str = private unnamed_addr constant [63 x i8] c"rdma alignment violation (%d/%d aligned) or FMR not supported\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [72 x i8] c"PHYSICAL Mem.register: lkey: 0x%08X rkey: 0x%08X  va: 0x%08lX sz: %ld]\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"mem->dma_nents = %d (dlength = 0x%x)\0A\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"page_vec: data_size = 0x%x, length = %d, offset = 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"page_vec[%d] = 0x%llx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iser_reg_rdma_mem(%struct.iscsi_iser_task* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_iser_task*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iscsi_conn*, align 8
  %7 = alloca %struct.iser_conn*, align 8
  %8 = alloca %struct.iser_device*, align 8
  %9 = alloca %struct.ib_device*, align 8
  %10 = alloca %struct.iser_data_buf*, align 8
  %11 = alloca %struct.iser_regd_buf*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.scatterlist*, align 8
  store %struct.iscsi_iser_task* %0, %struct.iscsi_iser_task** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %4, align 8
  %17 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %16, i32 0, i32 4
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = load %struct.iscsi_conn*, %struct.iscsi_conn** %19, align 8
  store %struct.iscsi_conn* %20, %struct.iscsi_conn** %6, align 8
  %21 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %4, align 8
  %22 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %21, i32 0, i32 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load %struct.iser_conn*, %struct.iser_conn** %24, align 8
  store %struct.iser_conn* %25, %struct.iser_conn** %7, align 8
  %26 = load %struct.iser_conn*, %struct.iser_conn** %7, align 8
  %27 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %26, i32 0, i32 2
  %28 = load %struct.iser_device*, %struct.iser_device** %27, align 8
  store %struct.iser_device* %28, %struct.iser_device** %8, align 8
  %29 = load %struct.iser_device*, %struct.iser_device** %8, align 8
  %30 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %29, i32 0, i32 1
  %31 = load %struct.ib_device*, %struct.ib_device** %30, align 8
  store %struct.ib_device* %31, %struct.ib_device** %9, align 8
  %32 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %4, align 8
  %33 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %32, i32 0, i32 3
  %34 = load %struct.iser_data_buf*, %struct.iser_data_buf** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %34, i64 %36
  store %struct.iser_data_buf* %37, %struct.iser_data_buf** %10, align 8
  %38 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %4, align 8
  %39 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %38, i32 0, i32 2
  %40 = load %struct.iser_regd_buf*, %struct.iser_regd_buf** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.iser_regd_buf, %struct.iser_regd_buf* %40, i64 %42
  store %struct.iser_regd_buf* %43, %struct.iser_regd_buf** %11, align 8
  %44 = load %struct.iser_data_buf*, %struct.iser_data_buf** %10, align 8
  %45 = load %struct.ib_device*, %struct.ib_device** %9, align 8
  %46 = call i32 @iser_data_buf_aligned_len(%struct.iser_data_buf* %44, %struct.ib_device* %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = load %struct.iser_data_buf*, %struct.iser_data_buf** %10, align 8
  %49 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %47, %50
  br i1 %51, label %62, label %52

52:                                               ; preds = %2
  %53 = load %struct.iser_conn*, %struct.iser_conn** %7, align 8
  %54 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %91, label %57

57:                                               ; preds = %52
  %58 = load %struct.iser_data_buf*, %struct.iser_data_buf** %10, align 8
  %59 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp sgt i32 %60, 1
  br i1 %61, label %62, label %91

62:                                               ; preds = %57, %2
  %63 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %64 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  %67 = load i32, i32* %12, align 4
  %68 = load %struct.iser_data_buf*, %struct.iser_data_buf** %10, align 8
  %69 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @iser_warn(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %67, i32 %70)
  %72 = load %struct.iser_data_buf*, %struct.iser_data_buf** %10, align 8
  %73 = load %struct.ib_device*, %struct.ib_device** %9, align 8
  %74 = call i32 @iser_data_buf_dump(%struct.iser_data_buf* %72, %struct.ib_device* %73)
  %75 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %4, align 8
  %76 = call i32 @iser_dma_unmap_task_data(%struct.iscsi_iser_task* %75)
  %77 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %4, align 8
  %78 = load i32, i32* %5, align 4
  %79 = call i64 @iser_start_rdma_unaligned_sg(%struct.iscsi_iser_task* %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %62
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %236

84:                                               ; preds = %62
  %85 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %4, align 8
  %86 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %85, i32 0, i32 1
  %87 = load %struct.iser_data_buf*, %struct.iser_data_buf** %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %87, i64 %89
  store %struct.iser_data_buf* %90, %struct.iser_data_buf** %10, align 8
  br label %91

91:                                               ; preds = %84, %57, %52
  %92 = load %struct.iser_data_buf*, %struct.iser_data_buf** %10, align 8
  %93 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp eq i32 %94, 1
  br i1 %95, label %96, label %153

96:                                               ; preds = %91
  %97 = load %struct.iser_data_buf*, %struct.iser_data_buf** %10, align 8
  %98 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = inttoptr i64 %99 to %struct.scatterlist*
  store %struct.scatterlist* %100, %struct.scatterlist** %15, align 8
  %101 = load %struct.iser_device*, %struct.iser_device** %8, align 8
  %102 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %101, i32 0, i32 0
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.iser_regd_buf*, %struct.iser_regd_buf** %11, align 8
  %107 = getelementptr inbounds %struct.iser_regd_buf, %struct.iser_regd_buf* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 3
  store i64 %105, i64* %108, align 8
  %109 = load %struct.iser_device*, %struct.iser_device** %8, align 8
  %110 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %109, i32 0, i32 0
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.iser_regd_buf*, %struct.iser_regd_buf** %11, align 8
  %115 = getelementptr inbounds %struct.iser_regd_buf, %struct.iser_regd_buf* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 2
  store i64 %113, i64* %116, align 8
  %117 = load %struct.ib_device*, %struct.ib_device** %9, align 8
  %118 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %119 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %118, i64 0
  %120 = call i64 @ib_sg_dma_len(%struct.ib_device* %117, %struct.scatterlist* %119)
  %121 = load %struct.iser_regd_buf*, %struct.iser_regd_buf** %11, align 8
  %122 = getelementptr inbounds %struct.iser_regd_buf, %struct.iser_regd_buf* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 0
  store i64 %120, i64* %123, align 8
  %124 = load %struct.ib_device*, %struct.ib_device** %9, align 8
  %125 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %126 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %125, i64 0
  %127 = call i64 @ib_sg_dma_address(%struct.ib_device* %124, %struct.scatterlist* %126)
  %128 = load %struct.iser_regd_buf*, %struct.iser_regd_buf** %11, align 8
  %129 = getelementptr inbounds %struct.iser_regd_buf, %struct.iser_regd_buf* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 1
  store i64 %127, i64* %130, align 8
  %131 = load %struct.iser_regd_buf*, %struct.iser_regd_buf** %11, align 8
  %132 = getelementptr inbounds %struct.iser_regd_buf, %struct.iser_regd_buf* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 4
  store i64 0, i64* %133, align 8
  %134 = load %struct.iser_regd_buf*, %struct.iser_regd_buf** %11, align 8
  %135 = getelementptr inbounds %struct.iser_regd_buf, %struct.iser_regd_buf* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 3
  %137 = load i64, i64* %136, align 8
  %138 = trunc i64 %137 to i32
  %139 = load %struct.iser_regd_buf*, %struct.iser_regd_buf** %11, align 8
  %140 = getelementptr inbounds %struct.iser_regd_buf, %struct.iser_regd_buf* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = trunc i64 %142 to i32
  %144 = load %struct.iser_regd_buf*, %struct.iser_regd_buf** %11, align 8
  %145 = getelementptr inbounds %struct.iser_regd_buf, %struct.iser_regd_buf* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.iser_regd_buf*, %struct.iser_regd_buf** %11, align 8
  %149 = getelementptr inbounds %struct.iser_regd_buf, %struct.iser_regd_buf* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = call i32 @iser_dbg(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 %138, i32 %143, i64 %147, i64 %151)
  br label %235

153:                                              ; preds = %91
  %154 = load %struct.iser_data_buf*, %struct.iser_data_buf** %10, align 8
  %155 = load %struct.iser_conn*, %struct.iser_conn** %7, align 8
  %156 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %155, i32 0, i32 0
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %156, align 8
  %158 = load %struct.ib_device*, %struct.ib_device** %9, align 8
  %159 = call i32 @iser_page_vec_build(%struct.iser_data_buf* %154, %struct.TYPE_12__* %157, %struct.ib_device* %158)
  %160 = load %struct.iser_conn*, %struct.iser_conn** %7, align 8
  %161 = load %struct.iser_conn*, %struct.iser_conn** %7, align 8
  %162 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %161, i32 0, i32 0
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %162, align 8
  %164 = load %struct.iser_regd_buf*, %struct.iser_regd_buf** %11, align 8
  %165 = getelementptr inbounds %struct.iser_regd_buf, %struct.iser_regd_buf* %164, i32 0, i32 0
  %166 = call i32 @iser_reg_page_vec(%struct.iser_conn* %160, %struct.TYPE_12__* %163, %struct.TYPE_13__* %165)
  store i32 %166, i32* %13, align 4
  %167 = load i32, i32* %13, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %229

169:                                              ; preds = %153
  %170 = load i32, i32* %13, align 4
  %171 = load i32, i32* @EAGAIN, align 4
  %172 = sub nsw i32 0, %171
  %173 = icmp ne i32 %170, %172
  br i1 %173, label %174, label %229

174:                                              ; preds = %169
  %175 = load %struct.iser_data_buf*, %struct.iser_data_buf** %10, align 8
  %176 = load %struct.ib_device*, %struct.ib_device** %9, align 8
  %177 = call i32 @iser_data_buf_dump(%struct.iser_data_buf* %175, %struct.ib_device* %176)
  %178 = load %struct.iser_data_buf*, %struct.iser_data_buf** %10, align 8
  %179 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %4, align 8
  %182 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = call i64 @ntoh24(i32 %185)
  %187 = call i32 (i8*, i32, i64, ...) @iser_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %180, i64 %186)
  %188 = load %struct.iser_conn*, %struct.iser_conn** %7, align 8
  %189 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %188, i32 0, i32 0
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.iser_conn*, %struct.iser_conn** %7, align 8
  %194 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %193, i32 0, i32 0
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = sext i32 %197 to i64
  %199 = load %struct.iser_conn*, %struct.iser_conn** %7, align 8
  %200 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %199, i32 0, i32 0
  %201 = load %struct.TYPE_12__*, %struct.TYPE_12__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = call i32 (i8*, i32, i64, ...) @iser_err(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %192, i64 %198, i32 %203)
  store i32 0, i32* %14, align 4
  br label %205

205:                                              ; preds = %225, %174
  %206 = load i32, i32* %14, align 4
  %207 = load %struct.iser_conn*, %struct.iser_conn** %7, align 8
  %208 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %207, i32 0, i32 0
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = icmp slt i32 %206, %211
  br i1 %212, label %213, label %228

213:                                              ; preds = %205
  %214 = load i32, i32* %14, align 4
  %215 = load %struct.iser_conn*, %struct.iser_conn** %7, align 8
  %216 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %215, i32 0, i32 0
  %217 = load %struct.TYPE_12__*, %struct.TYPE_12__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 1
  %219 = load i64*, i64** %218, align 8
  %220 = load i32, i32* %14, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i64, i64* %219, i64 %221
  %223 = load i64, i64* %222, align 8
  %224 = call i32 (i8*, i32, i64, ...) @iser_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %214, i64 %223)
  br label %225

225:                                              ; preds = %213
  %226 = load i32, i32* %14, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %14, align 4
  br label %205

228:                                              ; preds = %205
  br label %229

229:                                              ; preds = %228, %169, %153
  %230 = load i32, i32* %13, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %234

232:                                              ; preds = %229
  %233 = load i32, i32* %13, align 4
  store i32 %233, i32* %3, align 4
  br label %236

234:                                              ; preds = %229
  br label %235

235:                                              ; preds = %234, %96
  store i32 0, i32* %3, align 4
  br label %236

236:                                              ; preds = %235, %232, %81
  %237 = load i32, i32* %3, align 4
  ret i32 %237
}

declare dso_local i32 @iser_data_buf_aligned_len(%struct.iser_data_buf*, %struct.ib_device*) #1

declare dso_local i32 @iser_warn(i8*, i32, i32) #1

declare dso_local i32 @iser_data_buf_dump(%struct.iser_data_buf*, %struct.ib_device*) #1

declare dso_local i32 @iser_dma_unmap_task_data(%struct.iscsi_iser_task*) #1

declare dso_local i64 @iser_start_rdma_unaligned_sg(%struct.iscsi_iser_task*, i32) #1

declare dso_local i64 @ib_sg_dma_len(%struct.ib_device*, %struct.scatterlist*) #1

declare dso_local i64 @ib_sg_dma_address(%struct.ib_device*, %struct.scatterlist*) #1

declare dso_local i32 @iser_dbg(i8*, i32, i32, i64, i64) #1

declare dso_local i32 @iser_page_vec_build(%struct.iser_data_buf*, %struct.TYPE_12__*, %struct.ib_device*) #1

declare dso_local i32 @iser_reg_page_vec(%struct.iser_conn*, %struct.TYPE_12__*, %struct.TYPE_13__*) #1

declare dso_local i32 @iser_err(i8*, i32, i64, ...) #1

declare dso_local i64 @ntoh24(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
