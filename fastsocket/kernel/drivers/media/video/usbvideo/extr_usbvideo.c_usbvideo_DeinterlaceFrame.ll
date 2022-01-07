; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_usbvideo.c_usbvideo_DeinterlaceFrame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_usbvideo.c_usbvideo_DeinterlaceFrame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvd = type { i32 }
%struct.usbvideo_frame = type { i64, i8*, i32 }

@Deinterlace_FillEvenLines = common dso_local global i64 0, align 8
@Deinterlace_FillOddLines = common dso_local global i64 0, align 8
@V4L_BYTES_PER_PIXEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Error: ip=%d. in=%d. req.height=%ld.\00", align 1
@FLAGS_OVERLAY_STATS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usbvideo_DeinterlaceFrame(%struct.uvd* %0, %struct.usbvideo_frame* %1) #0 {
  %3 = alloca %struct.uvd*, align 8
  %4 = alloca %struct.usbvideo_frame*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.uvd* %0, %struct.uvd** %3, align 8
  store %struct.usbvideo_frame* %1, %struct.usbvideo_frame** %4, align 8
  %13 = load %struct.uvd*, %struct.uvd** %3, align 8
  %14 = icmp eq %struct.uvd* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %4, align 8
  %17 = icmp eq %struct.usbvideo_frame* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %2
  br label %166

19:                                               ; preds = %15
  %20 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %4, align 8
  %21 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @Deinterlace_FillEvenLines, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %4, align 8
  %27 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @Deinterlace_FillOddLines, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %155

31:                                               ; preds = %25, %19
  %32 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %4, align 8
  %33 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @VIDEOSIZE_X(i32 %34)
  %36 = load i32, i32* @V4L_BYTES_PER_PIXEL, align 4
  %37 = mul nsw i32 %35, %36
  store i32 %37, i32* %5, align 4
  %38 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %4, align 8
  %39 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @Deinterlace_FillEvenLines, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 0, i32 1
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %151, %31
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %4, align 8
  %48 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @VIDEOSIZE_Y(i32 %49)
  %51 = icmp slt i32 %46, %50
  br i1 %51, label %52, label %154

52:                                               ; preds = %45
  %53 = load i32, i32* %6, align 4
  %54 = sub nsw i32 %53, 1
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load i32, i32* %11, align 4
  store i32 %60, i32* %10, align 4
  br label %61

61:                                               ; preds = %59, %52
  %62 = load i32, i32* %11, align 4
  %63 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %4, align 8
  %64 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @VIDEOSIZE_Y(i32 %65)
  %67 = icmp sge i32 %62, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = load i32, i32* %10, align 4
  store i32 %69, i32* %11, align 4
  br label %70

70:                                               ; preds = %68, %61
  %71 = load i32, i32* %10, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %90, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* %11, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %90, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %10, align 4
  %78 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %4, align 8
  %79 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @VIDEOSIZE_Y(i32 %80)
  %82 = icmp sge i32 %77, %81
  br i1 %82, label %90, label %83

83:                                               ; preds = %76
  %84 = load i32, i32* %11, align 4
  %85 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %4, align 8
  %86 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @VIDEOSIZE_Y(i32 %87)
  %89 = icmp sge i32 %84, %88
  br i1 %89, label %90, label %98

90:                                               ; preds = %83, %76, %73, %70
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %11, align 4
  %93 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %4, align 8
  %94 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @VIDEOSIZE_Y(i32 %95)
  %97 = call i32 @err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %91, i32 %92, i32 %96)
  br label %154

98:                                               ; preds = %83
  %99 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %4, align 8
  %100 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* %10, align 4
  %104 = mul nsw i32 %102, %103
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %101, i64 %105
  store i8* %106, i8** %7, align 8
  %107 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %4, align 8
  %108 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %107, i32 0, i32 1
  %109 = load i8*, i8** %108, align 8
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* %11, align 4
  %112 = mul nsw i32 %110, %111
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %109, i64 %113
  store i8* %114, i8** %8, align 8
  %115 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %4, align 8
  %116 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %115, i32 0, i32 1
  %117 = load i8*, i8** %116, align 8
  %118 = load i32, i32* %5, align 4
  %119 = load i32, i32* %6, align 4
  %120 = mul nsw i32 %118, %119
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %117, i64 %121
  store i8* %122, i8** %9, align 8
  store i32 0, i32* %12, align 4
  br label %123

123:                                              ; preds = %147, %98
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* %5, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %150

127:                                              ; preds = %123
  %128 = load i8*, i8** %7, align 8
  %129 = load i32, i32* %12, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %128, i64 %130
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i32
  %134 = load i8*, i8** %8, align 8
  %135 = load i32, i32* %12, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %134, i64 %136
  %138 = load i8, i8* %137, align 1
  %139 = zext i8 %138 to i32
  %140 = add i32 %133, %139
  %141 = lshr i32 %140, 1
  %142 = trunc i32 %141 to i8
  %143 = load i8*, i8** %9, align 8
  %144 = load i32, i32* %12, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %143, i64 %145
  store i8 %142, i8* %146, align 1
  br label %147

147:                                              ; preds = %127
  %148 = load i32, i32* %12, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %12, align 4
  br label %123

150:                                              ; preds = %123
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %6, align 4
  %153 = add nsw i32 %152, 2
  store i32 %153, i32* %6, align 4
  br label %45

154:                                              ; preds = %90, %45
  br label %155

155:                                              ; preds = %154, %25
  %156 = load %struct.uvd*, %struct.uvd** %3, align 8
  %157 = getelementptr inbounds %struct.uvd, %struct.uvd* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @FLAGS_OVERLAY_STATS, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %155
  %163 = load %struct.uvd*, %struct.uvd** %3, align 8
  %164 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %4, align 8
  %165 = call i32 @usbvideo_OverlayStats(%struct.uvd* %163, %struct.usbvideo_frame* %164)
  br label %166

166:                                              ; preds = %18, %162, %155
  ret void
}

declare dso_local i32 @VIDEOSIZE_X(i32) #1

declare dso_local i32 @VIDEOSIZE_Y(i32) #1

declare dso_local i32 @err(i8*, i32, i32, i32) #1

declare dso_local i32 @usbvideo_OverlayStats(%struct.uvd*, %struct.usbvideo_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
