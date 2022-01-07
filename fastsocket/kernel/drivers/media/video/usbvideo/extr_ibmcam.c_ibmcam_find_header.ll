; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_ibmcam.c_ibmcam_find_header.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_ibmcam.c_ibmcam_find_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvd = type { i64, i32, %struct.TYPE_6__, %struct.TYPE_5__*, i32, i32, %struct.usbvideo_frame* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.usbvideo_frame = type { i32, i64, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@USBVIDEO_NUMFRAMES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"ibmcam_find_header: Illegal frame %d.\00", align 1
@scan_EndParse = common dso_local global i32 0, align 4
@HDRSIG_MODEL1_128x96 = common dso_local global i32 0, align 4
@HDRSIG_MODEL1_176x144 = common dso_local global i32 0, align 4
@HDRSIG_MODEL1_352x288 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Skipping frame, no header\0A\00", align 1
@ScanState_Lines = common dso_local global i32 0, align 4
@flags = common dso_local global i32 0, align 4
@FLAGS_FORCE_TESTPATTERN = common dso_local global i32 0, align 4
@scan_NextFrame = common dso_local global i32 0, align 4
@scan_Continue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvd*)* @ibmcam_find_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmcam_find_header(%struct.uvd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uvd*, align 8
  %4 = alloca %struct.usbvideo_frame*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.uvd* %0, %struct.uvd** %3, align 8
  %11 = load %struct.uvd*, %struct.uvd** %3, align 8
  %12 = getelementptr inbounds %struct.uvd, %struct.uvd* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load %struct.uvd*, %struct.uvd** %3, align 8
  %17 = getelementptr inbounds %struct.uvd, %struct.uvd* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @USBVIDEO_NUMFRAMES, align 8
  %20 = icmp sge i64 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %15, %1
  %22 = load %struct.uvd*, %struct.uvd** %3, align 8
  %23 = getelementptr inbounds %struct.uvd, %struct.uvd* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %24)
  %26 = load i32, i32* @scan_EndParse, align 4
  store i32 %26, i32* %2, align 4
  br label %229

27:                                               ; preds = %15
  %28 = load %struct.uvd*, %struct.uvd** %3, align 8
  %29 = call %struct.TYPE_7__* @IBMCAM_T(%struct.uvd* %28)
  store %struct.TYPE_7__* %29, %struct.TYPE_7__** %5, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %31 = icmp ne %struct.TYPE_7__* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load %struct.uvd*, %struct.uvd** %3, align 8
  %35 = getelementptr inbounds %struct.uvd, %struct.uvd* %34, i32 0, i32 6
  %36 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %35, align 8
  %37 = load %struct.uvd*, %struct.uvd** %3, align 8
  %38 = getelementptr inbounds %struct.uvd, %struct.uvd* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %36, i64 %39
  store %struct.usbvideo_frame* %40, %struct.usbvideo_frame** %4, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  store i32 0, i32* %42, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %187 [
    i32 132, label %46
    i32 131, label %102
    i32 129, label %102
    i32 130, label %140
  ]

46:                                               ; preds = %27
  store i32 4, i32* %6, align 4
  br label %47

47:                                               ; preds = %97, %46
  %48 = load %struct.uvd*, %struct.uvd** %3, align 8
  %49 = getelementptr inbounds %struct.uvd, %struct.uvd* %48, i32 0, i32 4
  %50 = call i32 @RingQueue_GetLength(i32* %49)
  %51 = icmp sge i32 %50, 4
  br i1 %51, label %52, label %101

52:                                               ; preds = %47
  %53 = load %struct.uvd*, %struct.uvd** %3, align 8
  %54 = getelementptr inbounds %struct.uvd, %struct.uvd* %53, i32 0, i32 4
  %55 = call i32 @RING_QUEUE_PEEK(i32* %54, i32 0)
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %97

57:                                               ; preds = %52
  %58 = load %struct.uvd*, %struct.uvd** %3, align 8
  %59 = getelementptr inbounds %struct.uvd, %struct.uvd* %58, i32 0, i32 4
  %60 = call i32 @RING_QUEUE_PEEK(i32* %59, i32 1)
  %61 = icmp eq i32 %60, 255
  br i1 %61, label %62, label %97

62:                                               ; preds = %57
  %63 = load %struct.uvd*, %struct.uvd** %3, align 8
  %64 = getelementptr inbounds %struct.uvd, %struct.uvd* %63, i32 0, i32 4
  %65 = call i32 @RING_QUEUE_PEEK(i32* %64, i32 2)
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %97

67:                                               ; preds = %62
  %68 = load %struct.uvd*, %struct.uvd** %3, align 8
  %69 = getelementptr inbounds %struct.uvd, %struct.uvd* %68, i32 0, i32 4
  %70 = call i32 @RING_QUEUE_PEEK(i32* %69, i32 3)
  %71 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %4, align 8
  %72 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %4, align 8
  %74 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @HDRSIG_MODEL1_128x96, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %90, label %78

78:                                               ; preds = %67
  %79 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %4, align 8
  %80 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @HDRSIG_MODEL1_176x144, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %90, label %84

84:                                               ; preds = %78
  %85 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %4, align 8
  %86 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @HDRSIG_MODEL1_352x288, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %84, %78, %67
  %91 = load %struct.uvd*, %struct.uvd** %3, align 8
  %92 = getelementptr inbounds %struct.uvd, %struct.uvd* %91, i32 0, i32 4
  %93 = call i32 @RING_QUEUE_DEQUEUE_BYTES(i32* %92, i32 4)
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  store i32 1, i32* %95, align 4
  br label %101

96:                                               ; preds = %84
  br label %97

97:                                               ; preds = %96, %62, %57, %52
  %98 = load %struct.uvd*, %struct.uvd** %3, align 8
  %99 = getelementptr inbounds %struct.uvd, %struct.uvd* %98, i32 0, i32 4
  %100 = call i32 @RING_QUEUE_DEQUEUE_BYTES(i32* %99, i32 1)
  br label %47

101:                                              ; preds = %90, %47
  br label %188

102:                                              ; preds = %27, %27
  store i32 0, i32* %7, align 4
  %103 = load %struct.uvd*, %struct.uvd** %3, align 8
  %104 = getelementptr inbounds %struct.uvd, %struct.uvd* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 4
  switch i32 %105, label %107 [
    i32 128, label %106
  ]

106:                                              ; preds = %102
  store i32 10, i32* %7, align 4
  br label %108

107:                                              ; preds = %102
  store i32 2, i32* %7, align 4
  br label %108

108:                                              ; preds = %107, %106
  br label %109

109:                                              ; preds = %135, %108
  %110 = load %struct.uvd*, %struct.uvd** %3, align 8
  %111 = getelementptr inbounds %struct.uvd, %struct.uvd* %110, i32 0, i32 4
  %112 = call i32 @RingQueue_GetLength(i32* %111)
  %113 = load i32, i32* %7, align 4
  %114 = icmp sge i32 %112, %113
  br i1 %114, label %115, label %139

115:                                              ; preds = %109
  %116 = load %struct.uvd*, %struct.uvd** %3, align 8
  %117 = getelementptr inbounds %struct.uvd, %struct.uvd* %116, i32 0, i32 4
  %118 = call i32 @RING_QUEUE_PEEK(i32* %117, i32 0)
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %135

120:                                              ; preds = %115
  %121 = load %struct.uvd*, %struct.uvd** %3, align 8
  %122 = getelementptr inbounds %struct.uvd, %struct.uvd* %121, i32 0, i32 4
  %123 = call i32 @RING_QUEUE_PEEK(i32* %122, i32 1)
  %124 = icmp eq i32 %123, 255
  br i1 %124, label %125, label %135

125:                                              ; preds = %120
  %126 = load %struct.uvd*, %struct.uvd** %3, align 8
  %127 = getelementptr inbounds %struct.uvd, %struct.uvd* %126, i32 0, i32 4
  %128 = load i32, i32* %7, align 4
  %129 = call i32 @RING_QUEUE_DEQUEUE_BYTES(i32* %127, i32 %128)
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  store i32 1, i32* %131, align 4
  %132 = load i32, i32* @HDRSIG_MODEL1_176x144, align 4
  %133 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %4, align 8
  %134 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 8
  br label %139

135:                                              ; preds = %120, %115
  %136 = load %struct.uvd*, %struct.uvd** %3, align 8
  %137 = getelementptr inbounds %struct.uvd, %struct.uvd* %136, i32 0, i32 4
  %138 = call i32 @RING_QUEUE_DEQUEUE_BYTES(i32* %137, i32 1)
  br label %109

139:                                              ; preds = %125, %109
  br label %188

140:                                              ; preds = %27
  store i32 4, i32* %8, align 4
  br label %141

141:                                              ; preds = %182, %140
  %142 = load %struct.uvd*, %struct.uvd** %3, align 8
  %143 = getelementptr inbounds %struct.uvd, %struct.uvd* %142, i32 0, i32 4
  %144 = call i32 @RingQueue_GetLength(i32* %143)
  %145 = icmp sge i32 %144, 4
  br i1 %145, label %146, label %186

146:                                              ; preds = %141
  %147 = load %struct.uvd*, %struct.uvd** %3, align 8
  %148 = getelementptr inbounds %struct.uvd, %struct.uvd* %147, i32 0, i32 4
  %149 = call i32 @RING_QUEUE_PEEK(i32* %148, i32 0)
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %182

151:                                              ; preds = %146
  %152 = load %struct.uvd*, %struct.uvd** %3, align 8
  %153 = getelementptr inbounds %struct.uvd, %struct.uvd* %152, i32 0, i32 4
  %154 = call i32 @RING_QUEUE_PEEK(i32* %153, i32 1)
  %155 = icmp eq i32 %154, 255
  br i1 %155, label %156, label %182

156:                                              ; preds = %151
  %157 = load %struct.uvd*, %struct.uvd** %3, align 8
  %158 = getelementptr inbounds %struct.uvd, %struct.uvd* %157, i32 0, i32 4
  %159 = call i32 @RING_QUEUE_PEEK(i32* %158, i32 2)
  %160 = icmp ne i32 %159, 255
  br i1 %160, label %161, label %182

161:                                              ; preds = %156
  %162 = load %struct.uvd*, %struct.uvd** %3, align 8
  %163 = getelementptr inbounds %struct.uvd, %struct.uvd* %162, i32 0, i32 4
  %164 = call i32 @RING_QUEUE_PEEK(i32* %163, i32 2)
  %165 = sext i32 %164 to i64
  store i64 %165, i64* %9, align 8
  %166 = load %struct.uvd*, %struct.uvd** %3, align 8
  %167 = getelementptr inbounds %struct.uvd, %struct.uvd* %166, i32 0, i32 4
  %168 = call i32 @RING_QUEUE_PEEK(i32* %167, i32 3)
  %169 = sext i32 %168 to i64
  store i64 %169, i64* %10, align 8
  %170 = load i64, i64* %9, align 8
  %171 = shl i64 %170, 8
  %172 = load i64, i64* %10, align 8
  %173 = or i64 %171, %172
  %174 = trunc i64 %173 to i32
  %175 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %4, align 8
  %176 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %175, i32 0, i32 0
  store i32 %174, i32* %176, align 8
  %177 = load %struct.uvd*, %struct.uvd** %3, align 8
  %178 = getelementptr inbounds %struct.uvd, %struct.uvd* %177, i32 0, i32 4
  %179 = call i32 @RING_QUEUE_DEQUEUE_BYTES(i32* %178, i32 4)
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 0
  store i32 1, i32* %181, align 4
  br label %186

182:                                              ; preds = %156, %151, %146
  %183 = load %struct.uvd*, %struct.uvd** %3, align 8
  %184 = getelementptr inbounds %struct.uvd, %struct.uvd* %183, i32 0, i32 4
  %185 = call i32 @RING_QUEUE_DEQUEUE_BYTES(i32* %184, i32 1)
  br label %141

186:                                              ; preds = %161, %141
  br label %188

187:                                              ; preds = %27
  br label %188

188:                                              ; preds = %187, %186, %139, %101
  %189 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %206, label %193

193:                                              ; preds = %188
  %194 = load %struct.uvd*, %struct.uvd** %3, align 8
  %195 = getelementptr inbounds %struct.uvd, %struct.uvd* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = icmp sgt i32 %196, 2
  br i1 %197, label %198, label %204

198:                                              ; preds = %193
  %199 = load %struct.uvd*, %struct.uvd** %3, align 8
  %200 = getelementptr inbounds %struct.uvd, %struct.uvd* %199, i32 0, i32 3
  %201 = load %struct.TYPE_5__*, %struct.TYPE_5__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 0
  %203 = call i32 (i32*, i8*, ...) @dev_info(i32* %202, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %204

204:                                              ; preds = %198, %193
  %205 = load i32, i32* @scan_EndParse, align 4
  store i32 %205, i32* %2, align 4
  br label %229

206:                                              ; preds = %188
  %207 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 0
  store i32 1, i32* %208, align 4
  %209 = load %struct.uvd*, %struct.uvd** %3, align 8
  %210 = getelementptr inbounds %struct.uvd, %struct.uvd* %209, i32 0, i32 2
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %211, align 4
  %214 = load i32, i32* @ScanState_Lines, align 4
  %215 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %4, align 8
  %216 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %215, i32 0, i32 2
  store i32 %214, i32* %216, align 8
  %217 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %4, align 8
  %218 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %217, i32 0, i32 1
  store i64 0, i64* %218, align 8
  %219 = load i32, i32* @flags, align 4
  %220 = load i32, i32* @FLAGS_FORCE_TESTPATTERN, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %227

223:                                              ; preds = %206
  %224 = load %struct.uvd*, %struct.uvd** %3, align 8
  %225 = call i32 @usbvideo_TestPattern(%struct.uvd* %224, i32 1, i32 1)
  %226 = load i32, i32* @scan_NextFrame, align 4
  store i32 %226, i32* %2, align 4
  br label %229

227:                                              ; preds = %206
  %228 = load i32, i32* @scan_Continue, align 4
  store i32 %228, i32* %2, align 4
  br label %229

229:                                              ; preds = %227, %223, %204, %21
  %230 = load i32, i32* %2, align 4
  ret i32 %230
}

declare dso_local i32 @err(i8*, i64) #1

declare dso_local %struct.TYPE_7__* @IBMCAM_T(%struct.uvd*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @RingQueue_GetLength(i32*) #1

declare dso_local i32 @RING_QUEUE_PEEK(i32*, i32) #1

declare dso_local i32 @RING_QUEUE_DEQUEUE_BYTES(i32*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @usbvideo_TestPattern(%struct.uvd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
