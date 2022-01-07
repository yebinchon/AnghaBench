; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_sx8.c_carm_rq_fn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_sx8.c_carm_rq_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { %struct.carm_port* }
%struct.carm_port = type { i32, %struct.carm_host* }
%struct.carm_host = type { i32, i32 }
%struct.carm_msg_rw = type { i32, %struct.carm_msg_sg*, i8*, i8*, i8*, i8*, i32, i32, i8* }
%struct.carm_msg_sg = type { i8*, i8* }
%struct.carm_request = type { i32, i32, i32, %struct.scatterlist*, i8*, %struct.carm_port*, %struct.request* }
%struct.scatterlist = type { i32 }
%struct.request = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"get req\0A\00", align 1
@WRITE = common dso_local global i64 0, align 8
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"build msg\0A\00", align 1
@CARM_MSG_WRITE = common dso_local global i8* null, align 8
@CARM_MSG_READ = common dso_local global i8* null, align 8
@SGT_32BIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"send msg, tag == %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request_queue*)* @carm_rq_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @carm_rq_fn(%struct.request_queue* %0) #0 {
  %2 = alloca %struct.request_queue*, align 8
  %3 = alloca %struct.carm_port*, align 8
  %4 = alloca %struct.carm_host*, align 8
  %5 = alloca %struct.carm_msg_rw*, align 8
  %6 = alloca %struct.carm_request*, align 8
  %7 = alloca %struct.request*, align 8
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.carm_msg_sg*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %2, align 8
  %17 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %18 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %17, i32 0, i32 0
  %19 = load %struct.carm_port*, %struct.carm_port** %18, align 8
  store %struct.carm_port* %19, %struct.carm_port** %3, align 8
  %20 = load %struct.carm_port*, %struct.carm_port** %3, align 8
  %21 = getelementptr inbounds %struct.carm_port, %struct.carm_port* %20, i32 0, i32 1
  %22 = load %struct.carm_host*, %struct.carm_host** %21, align 8
  store %struct.carm_host* %22, %struct.carm_host** %4, align 8
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %225, %1
  %24 = call i32 (i8*, ...) @VPRINTK(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %26 = call %struct.request* @blk_peek_request(%struct.request_queue* %25)
  store %struct.request* %26, %struct.request** %7, align 8
  %27 = load %struct.request*, %struct.request** %7, align 8
  %28 = icmp ne %struct.request* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  br label %226

30:                                               ; preds = %23
  %31 = load %struct.carm_host*, %struct.carm_host** %4, align 8
  %32 = call %struct.carm_request* @carm_get_request(%struct.carm_host* %31)
  store %struct.carm_request* %32, %struct.carm_request** %6, align 8
  %33 = load %struct.carm_request*, %struct.carm_request** %6, align 8
  %34 = icmp ne %struct.carm_request* %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %30
  %36 = load %struct.carm_host*, %struct.carm_host** %4, align 8
  %37 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %38 = call i32 @carm_push_q(%struct.carm_host* %36, %struct.request_queue* %37)
  br label %226

39:                                               ; preds = %30
  %40 = load %struct.request*, %struct.request** %7, align 8
  %41 = load %struct.carm_request*, %struct.carm_request** %6, align 8
  %42 = getelementptr inbounds %struct.carm_request, %struct.carm_request* %41, i32 0, i32 6
  store %struct.request* %40, %struct.request** %42, align 8
  %43 = load %struct.request*, %struct.request** %7, align 8
  %44 = call i32 @blk_start_request(%struct.request* %43)
  %45 = load %struct.request*, %struct.request** %7, align 8
  %46 = call i64 @rq_data_dir(%struct.request* %45)
  %47 = load i64, i64* @WRITE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %39
  store i32 1, i32* %9, align 4
  %50 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  store i32 %50, i32* %10, align 4
  br label %53

51:                                               ; preds = %39
  %52 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %51, %49
  %54 = load %struct.carm_request*, %struct.carm_request** %6, align 8
  %55 = getelementptr inbounds %struct.carm_request, %struct.carm_request* %54, i32 0, i32 3
  %56 = load %struct.scatterlist*, %struct.scatterlist** %55, align 8
  %57 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %56, i64 0
  store %struct.scatterlist* %57, %struct.scatterlist** %8, align 8
  %58 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %59 = load %struct.request*, %struct.request** %7, align 8
  %60 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %61 = call i32 @blk_rq_map_sg(%struct.request_queue* %58, %struct.request* %59, %struct.scatterlist* %60)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp sle i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %53
  %65 = load %struct.carm_host*, %struct.carm_host** %4, align 8
  %66 = load %struct.carm_request*, %struct.carm_request** %6, align 8
  %67 = load i32, i32* @EIO, align 4
  %68 = sub nsw i32 0, %67
  %69 = call i32 @carm_end_rq(%struct.carm_host* %65, %struct.carm_request* %66, i32 %68)
  br label %226

70:                                               ; preds = %53
  %71 = load %struct.carm_host*, %struct.carm_host** %4, align 8
  %72 = getelementptr inbounds %struct.carm_host, %struct.carm_host* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @pci_map_sg(i32 %73, %struct.scatterlist* %74, i32 %75, i32 %76)
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp sle i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %70
  %81 = load %struct.carm_host*, %struct.carm_host** %4, align 8
  %82 = load %struct.carm_request*, %struct.carm_request** %6, align 8
  %83 = load i32, i32* @EIO, align 4
  %84 = sub nsw i32 0, %83
  %85 = call i32 @carm_end_rq(%struct.carm_host* %81, %struct.carm_request* %82, i32 %84)
  br label %226

86:                                               ; preds = %70
  %87 = load i32, i32* %12, align 4
  %88 = load %struct.carm_request*, %struct.carm_request** %6, align 8
  %89 = getelementptr inbounds %struct.carm_request, %struct.carm_request* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load %struct.carm_port*, %struct.carm_port** %3, align 8
  %91 = load %struct.carm_request*, %struct.carm_request** %6, align 8
  %92 = getelementptr inbounds %struct.carm_request, %struct.carm_request* %91, i32 0, i32 5
  store %struct.carm_port* %90, %struct.carm_port** %92, align 8
  %93 = load i32, i32* %12, align 4
  %94 = load %struct.carm_host*, %struct.carm_host** %4, align 8
  %95 = getelementptr inbounds %struct.carm_host, %struct.carm_host* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, %93
  store i32 %97, i32* %95, align 4
  %98 = call i32 (i8*, ...) @VPRINTK(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %99 = load %struct.carm_host*, %struct.carm_host** %4, align 8
  %100 = load %struct.carm_request*, %struct.carm_request** %6, align 8
  %101 = getelementptr inbounds %struct.carm_request, %struct.carm_request* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = call i64 @carm_ref_msg(%struct.carm_host* %99, i32 %102)
  %104 = inttoptr i64 %103 to %struct.carm_msg_rw*
  store %struct.carm_msg_rw* %104, %struct.carm_msg_rw** %5, align 8
  %105 = load i32, i32* %9, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %86
  %108 = load i8*, i8** @CARM_MSG_WRITE, align 8
  %109 = load %struct.carm_msg_rw*, %struct.carm_msg_rw** %5, align 8
  %110 = getelementptr inbounds %struct.carm_msg_rw, %struct.carm_msg_rw* %109, i32 0, i32 8
  store i8* %108, i8** %110, align 8
  %111 = load i8*, i8** @CARM_MSG_WRITE, align 8
  %112 = load %struct.carm_request*, %struct.carm_request** %6, align 8
  %113 = getelementptr inbounds %struct.carm_request, %struct.carm_request* %112, i32 0, i32 4
  store i8* %111, i8** %113, align 8
  br label %121

114:                                              ; preds = %86
  %115 = load i8*, i8** @CARM_MSG_READ, align 8
  %116 = load %struct.carm_msg_rw*, %struct.carm_msg_rw** %5, align 8
  %117 = getelementptr inbounds %struct.carm_msg_rw, %struct.carm_msg_rw* %116, i32 0, i32 8
  store i8* %115, i8** %117, align 8
  %118 = load i8*, i8** @CARM_MSG_READ, align 8
  %119 = load %struct.carm_request*, %struct.carm_request** %6, align 8
  %120 = getelementptr inbounds %struct.carm_request, %struct.carm_request* %119, i32 0, i32 4
  store i8* %118, i8** %120, align 8
  br label %121

121:                                              ; preds = %114, %107
  %122 = load %struct.carm_port*, %struct.carm_port** %3, align 8
  %123 = getelementptr inbounds %struct.carm_port, %struct.carm_port* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.carm_msg_rw*, %struct.carm_msg_rw** %5, align 8
  %126 = getelementptr inbounds %struct.carm_msg_rw, %struct.carm_msg_rw* %125, i32 0, i32 7
  store i32 %124, i32* %126, align 4
  %127 = load i32, i32* %12, align 4
  %128 = load %struct.carm_msg_rw*, %struct.carm_msg_rw** %5, align 8
  %129 = getelementptr inbounds %struct.carm_msg_rw, %struct.carm_msg_rw* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 8
  %130 = load i32, i32* @SGT_32BIT, align 4
  %131 = load %struct.carm_msg_rw*, %struct.carm_msg_rw** %5, align 8
  %132 = getelementptr inbounds %struct.carm_msg_rw, %struct.carm_msg_rw* %131, i32 0, i32 6
  store i32 %130, i32* %132, align 8
  %133 = load %struct.carm_request*, %struct.carm_request** %6, align 8
  %134 = getelementptr inbounds %struct.carm_request, %struct.carm_request* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @TAG_ENCODE(i32 %135)
  %137 = call i8* @cpu_to_le32(i32 %136)
  %138 = load %struct.carm_msg_rw*, %struct.carm_msg_rw** %5, align 8
  %139 = getelementptr inbounds %struct.carm_msg_rw, %struct.carm_msg_rw* %138, i32 0, i32 5
  store i8* %137, i8** %139, align 8
  %140 = load %struct.request*, %struct.request** %7, align 8
  %141 = call i32 @blk_rq_pos(%struct.request* %140)
  %142 = call i8* @cpu_to_le32(i32 %141)
  %143 = load %struct.carm_msg_rw*, %struct.carm_msg_rw** %5, align 8
  %144 = getelementptr inbounds %struct.carm_msg_rw, %struct.carm_msg_rw* %143, i32 0, i32 4
  store i8* %142, i8** %144, align 8
  %145 = load %struct.request*, %struct.request** %7, align 8
  %146 = call i32 @blk_rq_pos(%struct.request* %145)
  %147 = ashr i32 %146, 16
  %148 = ashr i32 %147, 16
  store i32 %148, i32* %14, align 4
  %149 = load i32, i32* %14, align 4
  %150 = call i8* @cpu_to_le16(i32 %149)
  %151 = load %struct.carm_msg_rw*, %struct.carm_msg_rw** %5, align 8
  %152 = getelementptr inbounds %struct.carm_msg_rw, %struct.carm_msg_rw* %151, i32 0, i32 3
  store i8* %150, i8** %152, align 8
  %153 = load %struct.request*, %struct.request** %7, align 8
  %154 = call i32 @blk_rq_sectors(%struct.request* %153)
  %155 = call i8* @cpu_to_le16(i32 %154)
  %156 = load %struct.carm_msg_rw*, %struct.carm_msg_rw** %5, align 8
  %157 = getelementptr inbounds %struct.carm_msg_rw, %struct.carm_msg_rw* %156, i32 0, i32 2
  store i8* %155, i8** %157, align 8
  store i32 56, i32* %15, align 4
  store i32 0, i32* %11, align 4
  br label %158

158:                                              ; preds = %193, %121
  %159 = load i32, i32* %11, align 4
  %160 = load i32, i32* %12, align 4
  %161 = icmp slt i32 %159, %160
  br i1 %161, label %162, label %196

162:                                              ; preds = %158
  %163 = load %struct.carm_msg_rw*, %struct.carm_msg_rw** %5, align 8
  %164 = getelementptr inbounds %struct.carm_msg_rw, %struct.carm_msg_rw* %163, i32 0, i32 1
  %165 = load %struct.carm_msg_sg*, %struct.carm_msg_sg** %164, align 8
  %166 = load i32, i32* %11, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.carm_msg_sg, %struct.carm_msg_sg* %165, i64 %167
  store %struct.carm_msg_sg* %168, %struct.carm_msg_sg** %16, align 8
  %169 = load %struct.carm_request*, %struct.carm_request** %6, align 8
  %170 = getelementptr inbounds %struct.carm_request, %struct.carm_request* %169, i32 0, i32 3
  %171 = load %struct.scatterlist*, %struct.scatterlist** %170, align 8
  %172 = load i32, i32* %11, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %171, i64 %173
  %175 = call i32 @sg_dma_address(%struct.scatterlist* %174)
  %176 = call i8* @cpu_to_le32(i32 %175)
  %177 = load %struct.carm_msg_sg*, %struct.carm_msg_sg** %16, align 8
  %178 = getelementptr inbounds %struct.carm_msg_sg, %struct.carm_msg_sg* %177, i32 0, i32 1
  store i8* %176, i8** %178, align 8
  %179 = load %struct.carm_request*, %struct.carm_request** %6, align 8
  %180 = getelementptr inbounds %struct.carm_request, %struct.carm_request* %179, i32 0, i32 3
  %181 = load %struct.scatterlist*, %struct.scatterlist** %180, align 8
  %182 = load i32, i32* %11, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %181, i64 %183
  %185 = call i32 @sg_dma_len(%struct.scatterlist* %184)
  %186 = call i8* @cpu_to_le32(i32 %185)
  %187 = load %struct.carm_msg_sg*, %struct.carm_msg_sg** %16, align 8
  %188 = getelementptr inbounds %struct.carm_msg_sg, %struct.carm_msg_sg* %187, i32 0, i32 0
  store i8* %186, i8** %188, align 8
  %189 = load i32, i32* %15, align 4
  %190 = zext i32 %189 to i64
  %191 = add i64 %190, 16
  %192 = trunc i64 %191 to i32
  store i32 %192, i32* %15, align 4
  br label %193

193:                                              ; preds = %162
  %194 = load i32, i32* %11, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %11, align 4
  br label %158

196:                                              ; preds = %158
  %197 = load i32, i32* %15, align 4
  %198 = call i32 @carm_lookup_bucket(i32 %197)
  store i32 %198, i32* %13, align 4
  %199 = load i32, i32* %13, align 4
  %200 = icmp slt i32 %199, 0
  %201 = zext i1 %200 to i32
  %202 = call i32 @BUG_ON(i32 %201)
  %203 = load i32, i32* %13, align 4
  %204 = load %struct.carm_request*, %struct.carm_request** %6, align 8
  %205 = getelementptr inbounds %struct.carm_request, %struct.carm_request* %204, i32 0, i32 1
  store i32 %203, i32* %205, align 4
  %206 = load %struct.carm_request*, %struct.carm_request** %6, align 8
  %207 = getelementptr inbounds %struct.carm_request, %struct.carm_request* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = call i32 (i8*, ...) @VPRINTK(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %208)
  %210 = load %struct.carm_host*, %struct.carm_host** %4, align 8
  %211 = load %struct.carm_request*, %struct.carm_request** %6, align 8
  %212 = call i32 @carm_send_msg(%struct.carm_host* %210, %struct.carm_request* %211)
  store i32 %212, i32* %13, align 4
  %213 = load i32, i32* %13, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %225

215:                                              ; preds = %196
  %216 = load %struct.carm_host*, %struct.carm_host** %4, align 8
  %217 = load %struct.carm_request*, %struct.carm_request** %6, align 8
  %218 = call i32 @carm_put_request(%struct.carm_host* %216, %struct.carm_request* %217)
  %219 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %220 = load %struct.request*, %struct.request** %7, align 8
  %221 = call i32 @blk_requeue_request(%struct.request_queue* %219, %struct.request* %220)
  %222 = load %struct.carm_host*, %struct.carm_host** %4, align 8
  %223 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %224 = call i32 @carm_push_q(%struct.carm_host* %222, %struct.request_queue* %223)
  br label %226

225:                                              ; preds = %196
  br label %23

226:                                              ; preds = %215, %80, %64, %35, %29
  ret void
}

declare dso_local i32 @VPRINTK(i8*, ...) #1

declare dso_local %struct.request* @blk_peek_request(%struct.request_queue*) #1

declare dso_local %struct.carm_request* @carm_get_request(%struct.carm_host*) #1

declare dso_local i32 @carm_push_q(%struct.carm_host*, %struct.request_queue*) #1

declare dso_local i32 @blk_start_request(%struct.request*) #1

declare dso_local i64 @rq_data_dir(%struct.request*) #1

declare dso_local i32 @blk_rq_map_sg(%struct.request_queue*, %struct.request*, %struct.scatterlist*) #1

declare dso_local i32 @carm_end_rq(%struct.carm_host*, %struct.carm_request*, i32) #1

declare dso_local i32 @pci_map_sg(i32, %struct.scatterlist*, i32, i32) #1

declare dso_local i64 @carm_ref_msg(%struct.carm_host*, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @TAG_ENCODE(i32) #1

declare dso_local i32 @blk_rq_pos(%struct.request*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @blk_rq_sectors(%struct.request*) #1

declare dso_local i32 @sg_dma_address(%struct.scatterlist*) #1

declare dso_local i32 @sg_dma_len(%struct.scatterlist*) #1

declare dso_local i32 @carm_lookup_bucket(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @carm_send_msg(%struct.carm_host*, %struct.carm_request*) #1

declare dso_local i32 @carm_put_request(%struct.carm_host*, %struct.carm_request*) #1

declare dso_local i32 @blk_requeue_request(%struct.request_queue*, %struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
