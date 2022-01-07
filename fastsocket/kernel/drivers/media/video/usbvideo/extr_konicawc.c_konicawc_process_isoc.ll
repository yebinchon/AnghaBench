; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_konicawc.c_konicawc_process_isoc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_konicawc.c_konicawc_process_isoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvd = type { i32, %struct.TYPE_4__, i32, %struct.TYPE_3__*, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.usbvideo_frame = type { i32, i32, i32, i64, i32 }
%struct.konicawc = type { i32, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"maxline = %d yplanesz = %d\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Frame state = %d\00", align 1
@ScanState_Scanning = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Searching for marker, queue len = %d\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Dropped %d frames (%d -> %d)\0A\00", align 1
@ScanState_Lines = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"dropped %d bytes looking for new frame\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"got whole frame\00", align 1
@FrameState_Done_Hold = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uvd*, %struct.usbvideo_frame*)* @konicawc_process_isoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @konicawc_process_isoc(%struct.uvd* %0, %struct.usbvideo_frame* %1) #0 {
  %3 = alloca %struct.uvd*, align 8
  %4 = alloca %struct.usbvideo_frame*, align 8
  %5 = alloca %struct.konicawc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.uvd* %0, %struct.uvd** %3, align 8
  store %struct.usbvideo_frame* %1, %struct.usbvideo_frame** %4, align 8
  %11 = load %struct.uvd*, %struct.uvd** %3, align 8
  %12 = getelementptr inbounds %struct.uvd, %struct.uvd* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.konicawc*
  store %struct.konicawc* %14, %struct.konicawc** %5, align 8
  %15 = load %struct.konicawc*, %struct.konicawc** %5, align 8
  %16 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %6, align 4
  %18 = load %struct.konicawc*, %struct.konicawc** %5, align 8
  %19 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %7, align 4
  %21 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %4, align 8
  %22 = icmp ne %struct.usbvideo_frame* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 (i32, i8*, ...) @DEBUG(i32 5, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26)
  %28 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %4, align 8
  %29 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = call i32 (i32, i8*, ...) @DEBUG(i32 3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %4, align 8
  %33 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @ScanState_Scanning, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %124

37:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %38 = load %struct.uvd*, %struct.uvd** %3, align 8
  %39 = getelementptr inbounds %struct.uvd, %struct.uvd* %38, i32 0, i32 2
  %40 = call i32 @RingQueue_GetLength(i32* %39)
  %41 = call i32 (i32, i8*, ...) @DEBUG(i32 3, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %111, %37
  %43 = load %struct.uvd*, %struct.uvd** %3, align 8
  %44 = getelementptr inbounds %struct.uvd, %struct.uvd* %43, i32 0, i32 2
  %45 = call i32 @RingQueue_GetLength(i32* %44)
  %46 = icmp sge i32 %45, 4
  br i1 %46, label %47, label %117

47:                                               ; preds = %42
  %48 = load %struct.uvd*, %struct.uvd** %3, align 8
  %49 = getelementptr inbounds %struct.uvd, %struct.uvd* %48, i32 0, i32 2
  %50 = call i32 @RING_QUEUE_PEEK(i32* %49, i32 0)
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %111

52:                                               ; preds = %47
  %53 = load %struct.uvd*, %struct.uvd** %3, align 8
  %54 = getelementptr inbounds %struct.uvd, %struct.uvd* %53, i32 0, i32 2
  %55 = call i32 @RING_QUEUE_PEEK(i32* %54, i32 1)
  %56 = icmp eq i32 %55, 255
  br i1 %56, label %57, label %111

57:                                               ; preds = %52
  %58 = load %struct.uvd*, %struct.uvd** %3, align 8
  %59 = getelementptr inbounds %struct.uvd, %struct.uvd* %58, i32 0, i32 2
  %60 = call i32 @RING_QUEUE_PEEK(i32* %59, i32 2)
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %111

62:                                               ; preds = %57
  %63 = load %struct.uvd*, %struct.uvd** %3, align 8
  %64 = getelementptr inbounds %struct.uvd, %struct.uvd* %63, i32 0, i32 2
  %65 = call i32 @RING_QUEUE_PEEK(i32* %64, i32 3)
  %66 = icmp slt i32 %65, 128
  br i1 %66, label %67, label %111

67:                                               ; preds = %62
  %68 = load %struct.uvd*, %struct.uvd** %3, align 8
  %69 = getelementptr inbounds %struct.uvd, %struct.uvd* %68, i32 0, i32 2
  %70 = call i32 @RING_QUEUE_PEEK(i32* %69, i32 3)
  store i32 %70, i32* %9, align 4
  %71 = load %struct.konicawc*, %struct.konicawc** %5, align 8
  %72 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = icmp sge i32 %73, 0
  br i1 %74, label %75, label %99

75:                                               ; preds = %67
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 128, %76
  %78 = load %struct.konicawc*, %struct.konicawc** %5, align 8
  %79 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = sub nsw i32 %77, %80
  %82 = and i32 %81, 127
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %75
  %88 = load %struct.uvd*, %struct.uvd** %3, align 8
  %89 = getelementptr inbounds %struct.uvd, %struct.uvd* %88, i32 0, i32 3
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32, i32* %10, align 4
  %93 = load %struct.konicawc*, %struct.konicawc** %5, align 8
  %94 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @dev_info(i32* %91, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %92, i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %87, %75
  br label %99

99:                                               ; preds = %98, %67
  %100 = load i32, i32* %9, align 4
  %101 = load %struct.konicawc*, %struct.konicawc** %5, align 8
  %102 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 4
  %103 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %4, align 8
  %104 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %103, i32 0, i32 0
  store i32 0, i32* %104, align 8
  %105 = load i32, i32* @ScanState_Lines, align 4
  %106 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %4, align 8
  %107 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %106, i32 0, i32 4
  store i32 %105, i32* %107, align 8
  %108 = load %struct.uvd*, %struct.uvd** %3, align 8
  %109 = getelementptr inbounds %struct.uvd, %struct.uvd* %108, i32 0, i32 2
  %110 = call i32 @RING_QUEUE_DEQUEUE_BYTES(i32* %109, i32 4)
  br label %117

111:                                              ; preds = %62, %57, %52, %47
  %112 = load %struct.uvd*, %struct.uvd** %3, align 8
  %113 = getelementptr inbounds %struct.uvd, %struct.uvd* %112, i32 0, i32 2
  %114 = call i32 @RING_QUEUE_DEQUEUE_BYTES(i32* %113, i32 1)
  %115 = load i32, i32* %8, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %8, align 4
  br label %42

117:                                              ; preds = %99, %42
  %118 = load i32, i32* %8, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = load i32, i32* %8, align 4
  %122 = call i32 (i32, i8*, ...) @DEBUG(i32 2, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %121)
  br label %123

123:                                              ; preds = %120, %117
  br label %124

124:                                              ; preds = %123, %2
  %125 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %4, align 8
  %126 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @ScanState_Scanning, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %124
  br label %218

131:                                              ; preds = %124
  br label %132

132:                                              ; preds = %145, %131
  %133 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %4, align 8
  %134 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* %6, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %143

138:                                              ; preds = %132
  %139 = load %struct.uvd*, %struct.uvd** %3, align 8
  %140 = getelementptr inbounds %struct.uvd, %struct.uvd* %139, i32 0, i32 2
  %141 = call i32 @RingQueue_GetLength(i32* %140)
  %142 = icmp sge i32 %141, 384
  br label %143

143:                                              ; preds = %138, %132
  %144 = phi i1 [ false, %132 ], [ %142, %138 ]
  br i1 %144, label %145, label %198

145:                                              ; preds = %143
  %146 = load %struct.uvd*, %struct.uvd** %3, align 8
  %147 = getelementptr inbounds %struct.uvd, %struct.uvd* %146, i32 0, i32 2
  %148 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %4, align 8
  %149 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %148, i32 0, i32 3
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %4, align 8
  %152 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = mul nsw i32 %153, 256
  %155 = sext i32 %154 to i64
  %156 = add nsw i64 %150, %155
  %157 = call i32 @RingQueue_Dequeue(i32* %147, i64 %156, i32 256)
  %158 = load %struct.uvd*, %struct.uvd** %3, align 8
  %159 = getelementptr inbounds %struct.uvd, %struct.uvd* %158, i32 0, i32 2
  %160 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %4, align 8
  %161 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %160, i32 0, i32 3
  %162 = load i64, i64* %161, align 8
  %163 = load i32, i32* %7, align 4
  %164 = sext i32 %163 to i64
  %165 = add nsw i64 %162, %164
  %166 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %4, align 8
  %167 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = mul nsw i32 %168, 64
  %170 = sext i32 %169 to i64
  %171 = add nsw i64 %165, %170
  %172 = call i32 @RingQueue_Dequeue(i32* %159, i64 %171, i32 64)
  %173 = load %struct.uvd*, %struct.uvd** %3, align 8
  %174 = getelementptr inbounds %struct.uvd, %struct.uvd* %173, i32 0, i32 2
  %175 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %4, align 8
  %176 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %175, i32 0, i32 3
  %177 = load i64, i64* %176, align 8
  %178 = load i32, i32* %7, align 4
  %179 = mul nsw i32 5, %178
  %180 = sdiv i32 %179, 4
  %181 = sext i32 %180 to i64
  %182 = add nsw i64 %177, %181
  %183 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %4, align 8
  %184 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = mul nsw i32 %185, 64
  %187 = sext i32 %186 to i64
  %188 = add nsw i64 %182, %187
  %189 = call i32 @RingQueue_Dequeue(i32* %174, i64 %188, i32 64)
  %190 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %4, align 8
  %191 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = add nsw i32 %192, 384
  store i32 %193, i32* %191, align 4
  %194 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %4, align 8
  %195 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %195, align 8
  br label %132

198:                                              ; preds = %143
  %199 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %4, align 8
  %200 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* %6, align 4
  %203 = icmp eq i32 %201, %202
  br i1 %203, label %204, label %218

204:                                              ; preds = %198
  %205 = call i32 (i32, i8*, ...) @DEBUG(i32 5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %206 = load i32, i32* @FrameState_Done_Hold, align 4
  %207 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %4, align 8
  %208 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %207, i32 0, i32 2
  store i32 %206, i32* %208, align 8
  %209 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %4, align 8
  %210 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %209, i32 0, i32 0
  store i32 0, i32* %210, align 8
  %211 = load %struct.uvd*, %struct.uvd** %3, align 8
  %212 = getelementptr inbounds %struct.uvd, %struct.uvd* %211, i32 0, i32 0
  store i32 -1, i32* %212, align 8
  %213 = load %struct.uvd*, %struct.uvd** %3, align 8
  %214 = getelementptr inbounds %struct.uvd, %struct.uvd* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %215, align 4
  br label %218

218:                                              ; preds = %130, %204, %198
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @DEBUG(i32, i8*, ...) #1

declare dso_local i32 @RingQueue_GetLength(i32*) #1

declare dso_local i32 @RING_QUEUE_PEEK(i32*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @RING_QUEUE_DEQUEUE_BYTES(i32*, i32) #1

declare dso_local i32 @RingQueue_Dequeue(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
