; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_virtio_blk.c_do_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_virtio_blk.c_do_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.virtio_blk = type { i32, i32*, i32 }
%struct.request = type { i32, i32, i32, %struct.TYPE_2__*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i8*, i64 }
%struct.virtblk_req = type { %struct.TYPE_2__, %struct.request*, %struct.TYPE_2__, %struct.TYPE_2__ }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@REQ_FLUSH = common dso_local global i32 0, align 4
@VIRTIO_BLK_T_FLUSH = common dso_local global i32 0, align 4
@VIRTIO_BLK_T_SCSI_CMD = common dso_local global i32 0, align 4
@VIRTIO_BLK_T_GET_ID = common dso_local global i32 0, align 4
@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4
@WRITE = common dso_local global i64 0, align 8
@VIRTIO_BLK_T_OUT = common dso_local global i32 0, align 4
@VIRTIO_BLK_T_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, %struct.virtio_blk*, %struct.request*)* @do_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_req(%struct.request_queue* %0, %struct.virtio_blk* %1, %struct.request* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca %struct.virtio_blk*, align 8
  %7 = alloca %struct.request*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.virtblk_req*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %5, align 8
  store %struct.virtio_blk* %1, %struct.virtio_blk** %6, align 8
  store %struct.request* %2, %struct.request** %7, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %12 = load %struct.virtio_blk*, %struct.virtio_blk** %6, align 8
  %13 = getelementptr inbounds %struct.virtio_blk, %struct.virtio_blk* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @GFP_ATOMIC, align 4
  %16 = call %struct.virtblk_req* @mempool_alloc(i32 %14, i32 %15)
  store %struct.virtblk_req* %16, %struct.virtblk_req** %11, align 8
  %17 = load %struct.virtblk_req*, %struct.virtblk_req** %11, align 8
  %18 = icmp ne %struct.virtblk_req* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %245

20:                                               ; preds = %3
  %21 = load %struct.request*, %struct.request** %7, align 8
  %22 = load %struct.virtblk_req*, %struct.virtblk_req** %11, align 8
  %23 = getelementptr inbounds %struct.virtblk_req, %struct.virtblk_req* %22, i32 0, i32 1
  store %struct.request* %21, %struct.request** %23, align 8
  %24 = load %struct.request*, %struct.request** %7, align 8
  %25 = getelementptr inbounds %struct.request, %struct.request* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @REQ_FLUSH, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %20
  %31 = load i32, i32* @VIRTIO_BLK_T_FLUSH, align 4
  %32 = load %struct.virtblk_req*, %struct.virtblk_req** %11, align 8
  %33 = getelementptr inbounds %struct.virtblk_req, %struct.virtblk_req* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 8
  %35 = load %struct.virtblk_req*, %struct.virtblk_req** %11, align 8
  %36 = getelementptr inbounds %struct.virtblk_req, %struct.virtblk_req* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  store i64 0, i64* %37, align 8
  %38 = load %struct.virtblk_req*, %struct.virtblk_req** %11, align 8
  %39 = getelementptr inbounds %struct.virtblk_req, %struct.virtblk_req* %38, i32 0, i32 1
  %40 = load %struct.request*, %struct.request** %39, align 8
  %41 = call i8* @req_get_ioprio(%struct.request* %40)
  %42 = load %struct.virtblk_req*, %struct.virtblk_req** %11, align 8
  %43 = getelementptr inbounds %struct.virtblk_req, %struct.virtblk_req* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  store i8* %41, i8** %44, align 8
  br label %100

45:                                               ; preds = %20
  %46 = load %struct.request*, %struct.request** %7, align 8
  %47 = getelementptr inbounds %struct.request, %struct.request* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  switch i32 %48, label %97 [
    i32 129, label %49
    i32 130, label %67
    i32 128, label %82
  ]

49:                                               ; preds = %45
  %50 = load %struct.virtblk_req*, %struct.virtblk_req** %11, align 8
  %51 = getelementptr inbounds %struct.virtblk_req, %struct.virtblk_req* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i32 0, i32* %52, align 8
  %53 = load %struct.virtblk_req*, %struct.virtblk_req** %11, align 8
  %54 = getelementptr inbounds %struct.virtblk_req, %struct.virtblk_req* %53, i32 0, i32 1
  %55 = load %struct.request*, %struct.request** %54, align 8
  %56 = call i64 @blk_rq_pos(%struct.request* %55)
  %57 = load %struct.virtblk_req*, %struct.virtblk_req** %11, align 8
  %58 = getelementptr inbounds %struct.virtblk_req, %struct.virtblk_req* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  store i64 %56, i64* %59, align 8
  %60 = load %struct.virtblk_req*, %struct.virtblk_req** %11, align 8
  %61 = getelementptr inbounds %struct.virtblk_req, %struct.virtblk_req* %60, i32 0, i32 1
  %62 = load %struct.request*, %struct.request** %61, align 8
  %63 = call i8* @req_get_ioprio(%struct.request* %62)
  %64 = load %struct.virtblk_req*, %struct.virtblk_req** %11, align 8
  %65 = getelementptr inbounds %struct.virtblk_req, %struct.virtblk_req* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  store i8* %63, i8** %66, align 8
  br label %99

67:                                               ; preds = %45
  %68 = load i32, i32* @VIRTIO_BLK_T_SCSI_CMD, align 4
  %69 = load %struct.virtblk_req*, %struct.virtblk_req** %11, align 8
  %70 = getelementptr inbounds %struct.virtblk_req, %struct.virtblk_req* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 8
  %72 = load %struct.virtblk_req*, %struct.virtblk_req** %11, align 8
  %73 = getelementptr inbounds %struct.virtblk_req, %struct.virtblk_req* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 2
  store i64 0, i64* %74, align 8
  %75 = load %struct.virtblk_req*, %struct.virtblk_req** %11, align 8
  %76 = getelementptr inbounds %struct.virtblk_req, %struct.virtblk_req* %75, i32 0, i32 1
  %77 = load %struct.request*, %struct.request** %76, align 8
  %78 = call i8* @req_get_ioprio(%struct.request* %77)
  %79 = load %struct.virtblk_req*, %struct.virtblk_req** %11, align 8
  %80 = getelementptr inbounds %struct.virtblk_req, %struct.virtblk_req* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  store i8* %78, i8** %81, align 8
  br label %99

82:                                               ; preds = %45
  %83 = load i32, i32* @VIRTIO_BLK_T_GET_ID, align 4
  %84 = load %struct.virtblk_req*, %struct.virtblk_req** %11, align 8
  %85 = getelementptr inbounds %struct.virtblk_req, %struct.virtblk_req* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  store i32 %83, i32* %86, align 8
  %87 = load %struct.virtblk_req*, %struct.virtblk_req** %11, align 8
  %88 = getelementptr inbounds %struct.virtblk_req, %struct.virtblk_req* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 2
  store i64 0, i64* %89, align 8
  %90 = load %struct.virtblk_req*, %struct.virtblk_req** %11, align 8
  %91 = getelementptr inbounds %struct.virtblk_req, %struct.virtblk_req* %90, i32 0, i32 1
  %92 = load %struct.request*, %struct.request** %91, align 8
  %93 = call i8* @req_get_ioprio(%struct.request* %92)
  %94 = load %struct.virtblk_req*, %struct.virtblk_req** %11, align 8
  %95 = getelementptr inbounds %struct.virtblk_req, %struct.virtblk_req* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  store i8* %93, i8** %96, align 8
  br label %99

97:                                               ; preds = %45
  %98 = call i32 (...) @BUG()
  br label %99

99:                                               ; preds = %97, %82, %67, %49
  br label %100

100:                                              ; preds = %99, %30
  %101 = load %struct.virtio_blk*, %struct.virtio_blk** %6, align 8
  %102 = getelementptr inbounds %struct.virtio_blk, %struct.virtio_blk* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = load i64, i64* %9, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %9, align 8
  %106 = getelementptr inbounds i32, i32* %103, i64 %104
  %107 = load %struct.virtblk_req*, %struct.virtblk_req** %11, align 8
  %108 = getelementptr inbounds %struct.virtblk_req, %struct.virtblk_req* %107, i32 0, i32 0
  %109 = call i32 @sg_set_buf(i32* %106, %struct.TYPE_2__* %108, i32 24)
  %110 = load %struct.virtblk_req*, %struct.virtblk_req** %11, align 8
  %111 = getelementptr inbounds %struct.virtblk_req, %struct.virtblk_req* %110, i32 0, i32 1
  %112 = load %struct.request*, %struct.request** %111, align 8
  %113 = getelementptr inbounds %struct.request, %struct.request* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = icmp eq i32 %114, 130
  br i1 %115, label %116, label %134

116:                                              ; preds = %100
  %117 = load %struct.virtio_blk*, %struct.virtio_blk** %6, align 8
  %118 = getelementptr inbounds %struct.virtio_blk, %struct.virtio_blk* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = load i64, i64* %9, align 8
  %121 = add i64 %120, 1
  store i64 %121, i64* %9, align 8
  %122 = getelementptr inbounds i32, i32* %119, i64 %120
  %123 = load %struct.virtblk_req*, %struct.virtblk_req** %11, align 8
  %124 = getelementptr inbounds %struct.virtblk_req, %struct.virtblk_req* %123, i32 0, i32 1
  %125 = load %struct.request*, %struct.request** %124, align 8
  %126 = getelementptr inbounds %struct.request, %struct.request* %125, i32 0, i32 4
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = load %struct.virtblk_req*, %struct.virtblk_req** %11, align 8
  %129 = getelementptr inbounds %struct.virtblk_req, %struct.virtblk_req* %128, i32 0, i32 1
  %130 = load %struct.request*, %struct.request** %129, align 8
  %131 = getelementptr inbounds %struct.request, %struct.request* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @sg_set_buf(i32* %122, %struct.TYPE_2__* %127, i32 %132)
  br label %134

134:                                              ; preds = %116, %100
  %135 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %136 = load %struct.virtblk_req*, %struct.virtblk_req** %11, align 8
  %137 = getelementptr inbounds %struct.virtblk_req, %struct.virtblk_req* %136, i32 0, i32 1
  %138 = load %struct.request*, %struct.request** %137, align 8
  %139 = load %struct.virtio_blk*, %struct.virtio_blk** %6, align 8
  %140 = getelementptr inbounds %struct.virtio_blk, %struct.virtio_blk* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = load i64, i64* %9, align 8
  %143 = getelementptr inbounds i32, i32* %141, i64 %142
  %144 = call i64 @blk_rq_map_sg(%struct.request_queue* %135, %struct.request* %138, i32* %143)
  store i64 %144, i64* %8, align 8
  %145 = load %struct.virtblk_req*, %struct.virtblk_req** %11, align 8
  %146 = getelementptr inbounds %struct.virtblk_req, %struct.virtblk_req* %145, i32 0, i32 1
  %147 = load %struct.request*, %struct.request** %146, align 8
  %148 = getelementptr inbounds %struct.request, %struct.request* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = icmp eq i32 %149, 130
  br i1 %150, label %151, label %182

151:                                              ; preds = %134
  %152 = load %struct.virtio_blk*, %struct.virtio_blk** %6, align 8
  %153 = getelementptr inbounds %struct.virtio_blk, %struct.virtio_blk* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = load i64, i64* %8, align 8
  %156 = load i64, i64* %9, align 8
  %157 = add i64 %155, %156
  %158 = load i64, i64* %10, align 8
  %159 = add i64 %158, 1
  store i64 %159, i64* %10, align 8
  %160 = add i64 %157, %158
  %161 = getelementptr inbounds i32, i32* %154, i64 %160
  %162 = load %struct.virtblk_req*, %struct.virtblk_req** %11, align 8
  %163 = getelementptr inbounds %struct.virtblk_req, %struct.virtblk_req* %162, i32 0, i32 1
  %164 = load %struct.request*, %struct.request** %163, align 8
  %165 = getelementptr inbounds %struct.request, %struct.request* %164, i32 0, i32 3
  %166 = load %struct.TYPE_2__*, %struct.TYPE_2__** %165, align 8
  %167 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %168 = call i32 @sg_set_buf(i32* %161, %struct.TYPE_2__* %166, i32 %167)
  %169 = load %struct.virtio_blk*, %struct.virtio_blk** %6, align 8
  %170 = getelementptr inbounds %struct.virtio_blk, %struct.virtio_blk* %169, i32 0, i32 1
  %171 = load i32*, i32** %170, align 8
  %172 = load i64, i64* %8, align 8
  %173 = load i64, i64* %9, align 8
  %174 = add i64 %172, %173
  %175 = load i64, i64* %10, align 8
  %176 = add i64 %175, 1
  store i64 %176, i64* %10, align 8
  %177 = add i64 %174, %175
  %178 = getelementptr inbounds i32, i32* %171, i64 %177
  %179 = load %struct.virtblk_req*, %struct.virtblk_req** %11, align 8
  %180 = getelementptr inbounds %struct.virtblk_req, %struct.virtblk_req* %179, i32 0, i32 3
  %181 = call i32 @sg_set_buf(i32* %178, %struct.TYPE_2__* %180, i32 24)
  br label %182

182:                                              ; preds = %151, %134
  %183 = load %struct.virtio_blk*, %struct.virtio_blk** %6, align 8
  %184 = getelementptr inbounds %struct.virtio_blk, %struct.virtio_blk* %183, i32 0, i32 1
  %185 = load i32*, i32** %184, align 8
  %186 = load i64, i64* %8, align 8
  %187 = load i64, i64* %9, align 8
  %188 = add i64 %186, %187
  %189 = load i64, i64* %10, align 8
  %190 = add i64 %189, 1
  store i64 %190, i64* %10, align 8
  %191 = add i64 %188, %189
  %192 = getelementptr inbounds i32, i32* %185, i64 %191
  %193 = load %struct.virtblk_req*, %struct.virtblk_req** %11, align 8
  %194 = getelementptr inbounds %struct.virtblk_req, %struct.virtblk_req* %193, i32 0, i32 2
  %195 = call i32 @sg_set_buf(i32* %192, %struct.TYPE_2__* %194, i32 24)
  %196 = load i64, i64* %8, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %226

198:                                              ; preds = %182
  %199 = load %struct.virtblk_req*, %struct.virtblk_req** %11, align 8
  %200 = getelementptr inbounds %struct.virtblk_req, %struct.virtblk_req* %199, i32 0, i32 1
  %201 = load %struct.request*, %struct.request** %200, align 8
  %202 = call i64 @rq_data_dir(%struct.request* %201)
  %203 = load i64, i64* @WRITE, align 8
  %204 = icmp eq i64 %202, %203
  br i1 %204, label %205, label %215

205:                                              ; preds = %198
  %206 = load i32, i32* @VIRTIO_BLK_T_OUT, align 4
  %207 = load %struct.virtblk_req*, %struct.virtblk_req** %11, align 8
  %208 = getelementptr inbounds %struct.virtblk_req, %struct.virtblk_req* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = or i32 %210, %206
  store i32 %211, i32* %209, align 8
  %212 = load i64, i64* %8, align 8
  %213 = load i64, i64* %9, align 8
  %214 = add i64 %213, %212
  store i64 %214, i64* %9, align 8
  br label %225

215:                                              ; preds = %198
  %216 = load i32, i32* @VIRTIO_BLK_T_IN, align 4
  %217 = load %struct.virtblk_req*, %struct.virtblk_req** %11, align 8
  %218 = getelementptr inbounds %struct.virtblk_req, %struct.virtblk_req* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = or i32 %220, %216
  store i32 %221, i32* %219, align 8
  %222 = load i64, i64* %8, align 8
  %223 = load i64, i64* %10, align 8
  %224 = add i64 %223, %222
  store i64 %224, i64* %10, align 8
  br label %225

225:                                              ; preds = %215, %205
  br label %226

226:                                              ; preds = %225, %182
  %227 = load %struct.virtio_blk*, %struct.virtio_blk** %6, align 8
  %228 = getelementptr inbounds %struct.virtio_blk, %struct.virtio_blk* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 8
  %230 = load %struct.virtio_blk*, %struct.virtio_blk** %6, align 8
  %231 = getelementptr inbounds %struct.virtio_blk, %struct.virtio_blk* %230, i32 0, i32 1
  %232 = load i32*, i32** %231, align 8
  %233 = load i64, i64* %9, align 8
  %234 = load i64, i64* %10, align 8
  %235 = load %struct.virtblk_req*, %struct.virtblk_req** %11, align 8
  %236 = call i64 @virtqueue_add_buf(i32 %229, i32* %232, i64 %233, i64 %234, %struct.virtblk_req* %235)
  %237 = icmp slt i64 %236, 0
  br i1 %237, label %238, label %244

238:                                              ; preds = %226
  %239 = load %struct.virtblk_req*, %struct.virtblk_req** %11, align 8
  %240 = load %struct.virtio_blk*, %struct.virtio_blk** %6, align 8
  %241 = getelementptr inbounds %struct.virtio_blk, %struct.virtio_blk* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = call i32 @mempool_free(%struct.virtblk_req* %239, i32 %242)
  store i32 0, i32* %4, align 4
  br label %245

244:                                              ; preds = %226
  store i32 1, i32* %4, align 4
  br label %245

245:                                              ; preds = %244, %238, %19
  %246 = load i32, i32* %4, align 4
  ret i32 %246
}

declare dso_local %struct.virtblk_req* @mempool_alloc(i32, i32) #1

declare dso_local i8* @req_get_ioprio(%struct.request*) #1

declare dso_local i64 @blk_rq_pos(%struct.request*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @sg_set_buf(i32*, %struct.TYPE_2__*, i32) #1

declare dso_local i64 @blk_rq_map_sg(%struct.request_queue*, %struct.request*, i32*) #1

declare dso_local i64 @rq_data_dir(%struct.request*) #1

declare dso_local i64 @virtqueue_add_buf(i32, i32*, i64, i64, %struct.virtblk_req*) #1

declare dso_local i32 @mempool_free(%struct.virtblk_req*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
