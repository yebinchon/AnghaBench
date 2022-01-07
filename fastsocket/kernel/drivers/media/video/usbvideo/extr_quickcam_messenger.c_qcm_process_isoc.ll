; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_quickcam_messenger.c_qcm_process_isoc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_quickcam_messenger.c_qcm_process_isoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvd = type { i32, %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.usbvideo_frame = type { i64, i32, i32, i32, i64 }
%struct.qcm = type { i32, i32, i32, i64 }
%struct.rgb = type { i32, i32, i32, i32, i32, i32 }
%struct.bayL0 = type { i32, i32 }
%struct.bayL1 = type { i32, i32 }

@ScanState_Scanning = common dso_local global i64 0, align 8
@ScanState_Lines = common dso_local global i64 0, align 8
@FrameState_Grabbing = common dso_local global i32 0, align 4
@FrameState_Done_Hold = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uvd*, %struct.usbvideo_frame*)* @qcm_process_isoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qcm_process_isoc(%struct.uvd* %0, %struct.usbvideo_frame* %1) #0 {
  %3 = alloca %struct.uvd*, align 8
  %4 = alloca %struct.usbvideo_frame*, align 8
  %5 = alloca %struct.qcm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rgb*, align 8
  %8 = alloca %struct.rgb*, align 8
  %9 = alloca %struct.bayL0*, align 8
  %10 = alloca %struct.bayL1*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.uvd* %0, %struct.uvd** %3, align 8
  store %struct.usbvideo_frame* %1, %struct.usbvideo_frame** %4, align 8
  %15 = load %struct.uvd*, %struct.uvd** %3, align 8
  %16 = getelementptr inbounds %struct.uvd, %struct.uvd* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.qcm*
  store %struct.qcm* %18, %struct.qcm** %5, align 8
  %19 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %4, align 8
  %20 = icmp ne %struct.usbvideo_frame* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.qcm*, %struct.qcm** %5, align 8
  %24 = getelementptr inbounds %struct.qcm, %struct.qcm* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %28 [
    i32 129, label %26
    i32 128, label %27
  ]

26:                                               ; preds = %2
  store i32 162, i32* %11, align 4
  store i32 124, i32* %12, align 4
  store i32 1, i32* %13, align 4
  store i32 2, i32* %14, align 4
  br label %29

27:                                               ; preds = %2
  br label %28

28:                                               ; preds = %2, %27
  store i32 324, i32* %11, align 4
  store i32 248, i32* %12, align 4
  store i32 2, i32* %13, align 4
  store i32 4, i32* %14, align 4
  br label %29

29:                                               ; preds = %28, %26
  %30 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %4, align 8
  %31 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ScanState_Scanning, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %92

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %87, %35
  %37 = load %struct.uvd*, %struct.uvd** %3, align 8
  %38 = getelementptr inbounds %struct.uvd, %struct.uvd* %37, i32 0, i32 2
  %39 = call i32 @RingQueue_GetLength(i32* %38)
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %14, align 4
  %42 = mul nsw i32 %40, %41
  %43 = load i32, i32* %13, align 4
  %44 = add nsw i32 %42, %43
  %45 = add nsw i32 4, %44
  %46 = icmp sge i32 %39, %45
  br i1 %46, label %47, label %91

47:                                               ; preds = %36
  %48 = load %struct.uvd*, %struct.uvd** %3, align 8
  %49 = getelementptr inbounds %struct.uvd, %struct.uvd* %48, i32 0, i32 2
  %50 = call i32 @RING_QUEUE_PEEK(i32* %49, i32 0)
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %87

52:                                               ; preds = %47
  %53 = load %struct.uvd*, %struct.uvd** %3, align 8
  %54 = getelementptr inbounds %struct.uvd, %struct.uvd* %53, i32 0, i32 2
  %55 = call i32 @RING_QUEUE_PEEK(i32* %54, i32 1)
  %56 = icmp eq i32 %55, 255
  br i1 %56, label %57, label %87

57:                                               ; preds = %52
  %58 = load %struct.uvd*, %struct.uvd** %3, align 8
  %59 = getelementptr inbounds %struct.uvd, %struct.uvd* %58, i32 0, i32 2
  %60 = call i32 @RING_QUEUE_PEEK(i32* %59, i32 2)
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %87

62:                                               ; preds = %57
  %63 = load %struct.uvd*, %struct.uvd** %3, align 8
  %64 = getelementptr inbounds %struct.uvd, %struct.uvd* %63, i32 0, i32 2
  %65 = call i32 @RING_QUEUE_PEEK(i32* %64, i32 3)
  %66 = icmp eq i32 %65, 255
  br i1 %66, label %67, label %87

67:                                               ; preds = %62
  %68 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %4, align 8
  %69 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %68, i32 0, i32 1
  store i32 0, i32* %69, align 8
  %70 = load i64, i64* @ScanState_Lines, align 8
  %71 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %4, align 8
  %72 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  %73 = load i32, i32* @FrameState_Grabbing, align 4
  %74 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %4, align 8
  %75 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 8
  %76 = load %struct.uvd*, %struct.uvd** %3, align 8
  %77 = getelementptr inbounds %struct.uvd, %struct.uvd* %76, i32 0, i32 2
  %78 = call i32 @RING_QUEUE_DEQUEUE_BYTES(i32* %77, i32 4)
  %79 = load %struct.uvd*, %struct.uvd** %3, align 8
  %80 = getelementptr inbounds %struct.uvd, %struct.uvd* %79, i32 0, i32 2
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %14, align 4
  %83 = mul nsw i32 %81, %82
  %84 = load i32, i32* %13, align 4
  %85 = add nsw i32 %83, %84
  %86 = call i32 @RING_QUEUE_DEQUEUE_BYTES(i32* %80, i32 %85)
  br label %91

87:                                               ; preds = %62, %57, %52, %47
  %88 = load %struct.uvd*, %struct.uvd** %3, align 8
  %89 = getelementptr inbounds %struct.uvd, %struct.uvd* %88, i32 0, i32 2
  %90 = call i32 @RING_QUEUE_DEQUEUE_BYTES(i32* %89, i32 1)
  br label %36

91:                                               ; preds = %67, %36
  br label %92

92:                                               ; preds = %91, %29
  %93 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %4, align 8
  %94 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @ScanState_Scanning, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  br label %271

99:                                               ; preds = %92
  br label %100

100:                                              ; preds = %236, %99
  %101 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %4, align 8
  %102 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.qcm*, %struct.qcm** %5, align 8
  %105 = getelementptr inbounds %struct.qcm, %struct.qcm* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp slt i32 %103, %106
  br i1 %107, label %108, label %115

108:                                              ; preds = %100
  %109 = load %struct.uvd*, %struct.uvd** %3, align 8
  %110 = getelementptr inbounds %struct.uvd, %struct.uvd* %109, i32 0, i32 2
  %111 = call i32 @RingQueue_GetLength(i32* %110)
  %112 = load i32, i32* %11, align 4
  %113 = mul nsw i32 %112, 2
  %114 = icmp sge i32 %111, %113
  br label %115

115:                                              ; preds = %108, %100
  %116 = phi i1 [ false, %100 ], [ %114, %108 ]
  br i1 %116, label %117, label %250

117:                                              ; preds = %115
  %118 = load %struct.uvd*, %struct.uvd** %3, align 8
  %119 = getelementptr inbounds %struct.uvd, %struct.uvd* %118, i32 0, i32 2
  %120 = load %struct.qcm*, %struct.qcm** %5, align 8
  %121 = getelementptr inbounds %struct.qcm, %struct.qcm* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = load i32, i32* %11, align 4
  %124 = mul nsw i32 %123, 2
  %125 = call i32 @RingQueue_Dequeue(i32* %119, i64 %122, i32 %124)
  %126 = load %struct.qcm*, %struct.qcm** %5, align 8
  %127 = getelementptr inbounds %struct.qcm, %struct.qcm* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = inttoptr i64 %128 to %struct.bayL0*
  store %struct.bayL0* %129, %struct.bayL0** %9, align 8
  %130 = load %struct.qcm*, %struct.qcm** %5, align 8
  %131 = getelementptr inbounds %struct.qcm, %struct.qcm* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = load i32, i32* %11, align 4
  %134 = sext i32 %133 to i64
  %135 = add nsw i64 %132, %134
  %136 = inttoptr i64 %135 to %struct.bayL1*
  store %struct.bayL1* %136, %struct.bayL1** %10, align 8
  %137 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %4, align 8
  %138 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %137, i32 0, i32 4
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.qcm*, %struct.qcm** %5, align 8
  %141 = getelementptr inbounds %struct.qcm, %struct.qcm* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = mul nsw i32 %142, 3
  %144 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %4, align 8
  %145 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = mul nsw i32 %143, %146
  %148 = sext i32 %147 to i64
  %149 = add nsw i64 %139, %148
  %150 = inttoptr i64 %149 to %struct.rgb*
  store %struct.rgb* %150, %struct.rgb** %7, align 8
  %151 = load %struct.rgb*, %struct.rgb** %7, align 8
  %152 = load %struct.qcm*, %struct.qcm** %5, align 8
  %153 = getelementptr inbounds %struct.qcm, %struct.qcm* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = sdiv i32 %154, 2
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.rgb, %struct.rgb* %151, i64 %156
  store %struct.rgb* %157, %struct.rgb** %8, align 8
  store i32 0, i32* %6, align 4
  br label %158

158:                                              ; preds = %233, %117
  %159 = load i32, i32* %6, align 4
  %160 = load %struct.qcm*, %struct.qcm** %5, align 8
  %161 = getelementptr inbounds %struct.qcm, %struct.qcm* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = icmp slt i32 %159, %162
  br i1 %163, label %164, label %236

164:                                              ; preds = %158
  %165 = load %struct.bayL0*, %struct.bayL0** %9, align 8
  %166 = getelementptr inbounds %struct.bayL0, %struct.bayL0* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.rgb*, %struct.rgb** %7, align 8
  %169 = getelementptr inbounds %struct.rgb, %struct.rgb* %168, i32 0, i32 5
  store i32 %167, i32* %169, align 4
  %170 = load %struct.bayL0*, %struct.bayL0** %9, align 8
  %171 = getelementptr inbounds %struct.bayL0, %struct.bayL0* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.rgb*, %struct.rgb** %7, align 8
  %174 = getelementptr inbounds %struct.rgb, %struct.rgb* %173, i32 0, i32 4
  store i32 %172, i32* %174, align 4
  %175 = load %struct.bayL1*, %struct.bayL1** %10, align 8
  %176 = getelementptr inbounds %struct.bayL1, %struct.bayL1* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.rgb*, %struct.rgb** %7, align 8
  %179 = getelementptr inbounds %struct.rgb, %struct.rgb* %178, i32 0, i32 3
  store i32 %177, i32* %179, align 4
  %180 = load %struct.bayL0*, %struct.bayL0** %9, align 8
  %181 = getelementptr inbounds %struct.bayL0, %struct.bayL0* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.rgb*, %struct.rgb** %7, align 8
  %184 = getelementptr inbounds %struct.rgb, %struct.rgb* %183, i32 0, i32 2
  store i32 %182, i32* %184, align 4
  %185 = load %struct.bayL1*, %struct.bayL1** %10, align 8
  %186 = getelementptr inbounds %struct.bayL1, %struct.bayL1* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.rgb*, %struct.rgb** %7, align 8
  %189 = getelementptr inbounds %struct.rgb, %struct.rgb* %188, i32 0, i32 1
  store i32 %187, i32* %189, align 4
  %190 = load %struct.bayL1*, %struct.bayL1** %10, align 8
  %191 = getelementptr inbounds %struct.bayL1, %struct.bayL1* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.rgb*, %struct.rgb** %7, align 8
  %194 = getelementptr inbounds %struct.rgb, %struct.rgb* %193, i32 0, i32 0
  store i32 %192, i32* %194, align 4
  %195 = load %struct.bayL0*, %struct.bayL0** %9, align 8
  %196 = getelementptr inbounds %struct.bayL0, %struct.bayL0* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.rgb*, %struct.rgb** %8, align 8
  %199 = getelementptr inbounds %struct.rgb, %struct.rgb* %198, i32 0, i32 5
  store i32 %197, i32* %199, align 4
  %200 = load %struct.bayL1*, %struct.bayL1** %10, align 8
  %201 = getelementptr inbounds %struct.bayL1, %struct.bayL1* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.rgb*, %struct.rgb** %8, align 8
  %204 = getelementptr inbounds %struct.rgb, %struct.rgb* %203, i32 0, i32 4
  store i32 %202, i32* %204, align 4
  %205 = load %struct.bayL1*, %struct.bayL1** %10, align 8
  %206 = getelementptr inbounds %struct.bayL1, %struct.bayL1* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.rgb*, %struct.rgb** %8, align 8
  %209 = getelementptr inbounds %struct.rgb, %struct.rgb* %208, i32 0, i32 3
  store i32 %207, i32* %209, align 4
  %210 = load %struct.bayL0*, %struct.bayL0** %9, align 8
  %211 = getelementptr inbounds %struct.bayL0, %struct.bayL0* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.rgb*, %struct.rgb** %8, align 8
  %214 = getelementptr inbounds %struct.rgb, %struct.rgb* %213, i32 0, i32 2
  store i32 %212, i32* %214, align 4
  %215 = load %struct.bayL1*, %struct.bayL1** %10, align 8
  %216 = getelementptr inbounds %struct.bayL1, %struct.bayL1* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.rgb*, %struct.rgb** %8, align 8
  %219 = getelementptr inbounds %struct.rgb, %struct.rgb* %218, i32 0, i32 1
  store i32 %217, i32* %219, align 4
  %220 = load %struct.bayL1*, %struct.bayL1** %10, align 8
  %221 = getelementptr inbounds %struct.bayL1, %struct.bayL1* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.rgb*, %struct.rgb** %8, align 8
  %224 = getelementptr inbounds %struct.rgb, %struct.rgb* %223, i32 0, i32 0
  store i32 %222, i32* %224, align 4
  %225 = load %struct.rgb*, %struct.rgb** %7, align 8
  %226 = getelementptr inbounds %struct.rgb, %struct.rgb* %225, i32 1
  store %struct.rgb* %226, %struct.rgb** %7, align 8
  %227 = load %struct.rgb*, %struct.rgb** %8, align 8
  %228 = getelementptr inbounds %struct.rgb, %struct.rgb* %227, i32 1
  store %struct.rgb* %228, %struct.rgb** %8, align 8
  %229 = load %struct.bayL0*, %struct.bayL0** %9, align 8
  %230 = getelementptr inbounds %struct.bayL0, %struct.bayL0* %229, i32 1
  store %struct.bayL0* %230, %struct.bayL0** %9, align 8
  %231 = load %struct.bayL1*, %struct.bayL1** %10, align 8
  %232 = getelementptr inbounds %struct.bayL1, %struct.bayL1* %231, i32 1
  store %struct.bayL1* %232, %struct.bayL1** %10, align 8
  br label %233

233:                                              ; preds = %164
  %234 = load i32, i32* %6, align 4
  %235 = add nsw i32 %234, 2
  store i32 %235, i32* %6, align 4
  br label %158

236:                                              ; preds = %158
  %237 = load %struct.qcm*, %struct.qcm** %5, align 8
  %238 = getelementptr inbounds %struct.qcm, %struct.qcm* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 8
  %240 = mul nsw i32 %239, 3
  %241 = mul nsw i32 %240, 2
  %242 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %4, align 8
  %243 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 4
  %245 = add nsw i32 %244, %241
  store i32 %245, i32* %243, align 4
  %246 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %4, align 8
  %247 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 8
  %249 = add nsw i32 %248, 2
  store i32 %249, i32* %247, align 8
  br label %100

250:                                              ; preds = %115
  %251 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %4, align 8
  %252 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 8
  %254 = load %struct.qcm*, %struct.qcm** %5, align 8
  %255 = getelementptr inbounds %struct.qcm, %struct.qcm* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = icmp eq i32 %253, %256
  br i1 %257, label %258, label %271

258:                                              ; preds = %250
  %259 = load i32, i32* @FrameState_Done_Hold, align 4
  %260 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %4, align 8
  %261 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %260, i32 0, i32 3
  store i32 %259, i32* %261, align 8
  %262 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %4, align 8
  %263 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %262, i32 0, i32 1
  store i32 0, i32* %263, align 8
  %264 = load %struct.uvd*, %struct.uvd** %3, align 8
  %265 = getelementptr inbounds %struct.uvd, %struct.uvd* %264, i32 0, i32 0
  store i32 -1, i32* %265, align 8
  %266 = load %struct.uvd*, %struct.uvd** %3, align 8
  %267 = getelementptr inbounds %struct.uvd, %struct.uvd* %266, i32 0, i32 1
  %268 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %268, align 4
  br label %271

271:                                              ; preds = %98, %258, %250
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @RingQueue_GetLength(i32*) #1

declare dso_local i32 @RING_QUEUE_PEEK(i32*, i32) #1

declare dso_local i32 @RING_QUEUE_DEQUEUE_BYTES(i32*, i32) #1

declare dso_local i32 @RingQueue_Dequeue(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
