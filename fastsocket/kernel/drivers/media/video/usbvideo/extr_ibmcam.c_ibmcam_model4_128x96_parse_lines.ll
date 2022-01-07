; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_ibmcam.c_ibmcam_model4_128x96_parse_lines.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_ibmcam.c_ibmcam_model4_128x96_parse_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvd = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.usbvideo_frame = type { i32, i32, i32 }

@ibmcam_model4_128x96_parse_lines.lineBuffer = internal global [640 x i8] zeroinitializer, align 16
@V4L_BYTES_PER_PIXEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Reached line %d. (frame is done)\0A\00", align 1
@scan_NextFrame = common dso_local global i32 0, align 4
@scan_Out = common dso_local global i32 0, align 4
@flags = common dso_local global i32 0, align 4
@FLAGS_MONOCHROME = common dso_local global i32 0, align 4
@Deinterlace_None = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"All requested lines (%ld.) done.\0A\00", align 1
@scan_Continue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvd*, %struct.usbvideo_frame*, i64*)* @ibmcam_model4_128x96_parse_lines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmcam_model4_128x96_parse_lines(%struct.uvd* %0, %struct.usbvideo_frame* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uvd*, align 8
  %6 = alloca %struct.usbvideo_frame*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store %struct.uvd* %0, %struct.uvd** %5, align 8
  store %struct.usbvideo_frame* %1, %struct.usbvideo_frame** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 128, i32* %14, align 4
  store i32 96, i32* %15, align 4
  %21 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %6, align 8
  %22 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @VIDEOSIZE_X(i32 %23)
  %25 = load i32, i32* @V4L_BYTES_PER_PIXEL, align 4
  %26 = mul nsw i32 %24, %25
  store i32 %26, i32* %13, align 4
  %27 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %6, align 8
  %28 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  %31 = icmp sge i32 %30, 96
  br i1 %31, label %32, label %48

32:                                               ; preds = %3
  %33 = load %struct.uvd*, %struct.uvd** %5, align 8
  %34 = getelementptr inbounds %struct.uvd, %struct.uvd* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp sge i32 %35, 3
  br i1 %36, label %37, label %46

37:                                               ; preds = %32
  %38 = load %struct.uvd*, %struct.uvd** %5, align 8
  %39 = getelementptr inbounds %struct.uvd, %struct.uvd* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %6, align 8
  %43 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @dev_info(i32* %41, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %37, %32
  %47 = load i32, i32* @scan_NextFrame, align 4
  store i32 %47, i32* %4, align 4
  br label %172

48:                                               ; preds = %3
  store i32 640, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = zext i32 %49 to i64
  %51 = icmp ule i64 %50, 640
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load %struct.uvd*, %struct.uvd** %5, align 8
  %55 = getelementptr inbounds %struct.uvd, %struct.uvd* %54, i32 0, i32 2
  %56 = call i32 @RingQueue_GetLength(i32* %55)
  %57 = load i32, i32* %11, align 4
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %48
  %60 = load i32, i32* @scan_Out, align 4
  store i32 %60, i32* %4, align 4
  br label %172

61:                                               ; preds = %48
  %62 = load %struct.uvd*, %struct.uvd** %5, align 8
  %63 = getelementptr inbounds %struct.uvd, %struct.uvd* %62, i32 0, i32 2
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @RingQueue_Dequeue(i32* %63, i8* getelementptr inbounds ([640 x i8], [640 x i8]* @ibmcam_model4_128x96_parse_lines.lineBuffer, i64 0, i64 0), i32 %64)
  store i8* getelementptr inbounds ([640 x i8], [640 x i8]* @ibmcam_model4_128x96_parse_lines.lineBuffer, i64 0, i64 0), i8** %8, align 8
  store i8* getelementptr inbounds ([640 x i8], [640 x i8]* @ibmcam_model4_128x96_parse_lines.lineBuffer, i64 0, i64 1), i8** %9, align 8
  store i8* getelementptr inbounds ([640 x i8], [640 x i8]* @ibmcam_model4_128x96_parse_lines.lineBuffer, i64 0, i64 320), i8** %10, align 8
  store i32 0, i32* %12, align 4
  br label %66

66:                                               ; preds = %129, %61
  %67 = load i32, i32* %12, align 4
  %68 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %6, align 8
  %69 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @VIDEOSIZE_X(i32 %70)
  %72 = icmp slt i32 %67, %71
  br i1 %72, label %73, label %132

73:                                               ; preds = %66
  %74 = load i32, i32* %12, align 4
  %75 = icmp slt i32 %74, 128
  br i1 %75, label %76, label %118

76:                                               ; preds = %73
  %77 = load i32, i32* %12, align 4
  %78 = mul nsw i32 %77, 2
  store i32 %78, i32* %19, align 4
  %79 = load i8*, i8** %8, align 8
  %80 = load i32, i32* %19, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  store i32 %84, i32* %17, align 4
  %85 = load i8*, i8** %9, align 8
  %86 = load i32, i32* %19, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  store i32 %90, i32* %16, align 4
  %91 = load i8*, i8** %10, align 8
  %92 = load i32, i32* %19, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %91, i64 %93
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  store i32 %96, i32* %18, align 4
  %97 = load i32, i32* @flags, align 4
  %98 = load i32, i32* @FLAGS_MONOCHROME, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %117

101:                                              ; preds = %76
  %102 = load i32, i32* %16, align 4
  %103 = load i32, i32* %17, align 4
  %104 = add nsw i32 %102, %103
  %105 = load i32, i32* %18, align 4
  %106 = add nsw i32 %104, %105
  %107 = sext i32 %106 to i64
  store i64 %107, i64* %20, align 8
  %108 = load i64, i64* %20, align 8
  %109 = udiv i64 %108, 3
  store i64 %109, i64* %20, align 8
  %110 = load i64, i64* %20, align 8
  %111 = icmp ugt i64 %110, 255
  br i1 %111, label %112, label %113

112:                                              ; preds = %101
  store i64 255, i64* %20, align 8
  br label %113

113:                                              ; preds = %112, %101
  %114 = load i64, i64* %20, align 8
  %115 = trunc i64 %114 to i8
  %116 = zext i8 %115 to i32
  store i32 %116, i32* %18, align 4
  store i32 %116, i32* %17, align 4
  store i32 %116, i32* %16, align 4
  br label %117

117:                                              ; preds = %113, %76
  br label %119

118:                                              ; preds = %73
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %119

119:                                              ; preds = %118, %117
  %120 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %6, align 8
  %121 = load i32, i32* %12, align 4
  %122 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %6, align 8
  %123 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %16, align 4
  %126 = load i32, i32* %17, align 4
  %127 = load i32, i32* %18, align 4
  %128 = call i32 @RGB24_PUTPIXEL(%struct.usbvideo_frame* %120, i32 %121, i32 %124, i32 %125, i32 %126, i32 %127)
  br label %129

129:                                              ; preds = %119
  %130 = load i32, i32* %12, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %12, align 4
  br label %66

132:                                              ; preds = %66
  %133 = load i32, i32* @Deinterlace_None, align 4
  %134 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %6, align 8
  %135 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %134, i32 0, i32 2
  store i32 %133, i32* %135, align 4
  %136 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %6, align 8
  %137 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %137, align 4
  %140 = load i32, i32* %13, align 4
  %141 = sext i32 %140 to i64
  %142 = load i64*, i64** %7, align 8
  %143 = load i64, i64* %142, align 8
  %144 = add nsw i64 %143, %141
  store i64 %144, i64* %142, align 8
  %145 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %6, align 8
  %146 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %6, align 8
  %149 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @VIDEOSIZE_Y(i32 %150)
  %152 = icmp sge i32 %147, %151
  br i1 %152, label %153, label %170

153:                                              ; preds = %132
  %154 = load %struct.uvd*, %struct.uvd** %5, align 8
  %155 = getelementptr inbounds %struct.uvd, %struct.uvd* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = icmp sge i32 %156, 3
  br i1 %157, label %158, label %168

158:                                              ; preds = %153
  %159 = load %struct.uvd*, %struct.uvd** %5, align 8
  %160 = getelementptr inbounds %struct.uvd, %struct.uvd* %159, i32 0, i32 1
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 0
  %163 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %6, align 8
  %164 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @VIDEOSIZE_Y(i32 %165)
  %167 = call i32 @dev_info(i32* %162, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %166)
  br label %168

168:                                              ; preds = %158, %153
  %169 = load i32, i32* @scan_NextFrame, align 4
  store i32 %169, i32* %4, align 4
  br label %172

170:                                              ; preds = %132
  %171 = load i32, i32* @scan_Continue, align 4
  store i32 %171, i32* %4, align 4
  br label %172

172:                                              ; preds = %170, %168, %59, %46
  %173 = load i32, i32* %4, align 4
  ret i32 %173
}

declare dso_local i32 @VIDEOSIZE_X(i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @RingQueue_GetLength(i32*) #1

declare dso_local i32 @RingQueue_Dequeue(i32*, i8*, i32) #1

declare dso_local i32 @RGB24_PUTPIXEL(%struct.usbvideo_frame*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @VIDEOSIZE_Y(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
