; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_konicawc.c_konicawc_configure_video.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_konicawc.c_konicawc_configure_video.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.uvd = type { %struct.TYPE_3__, %struct.TYPE_3__, %struct.TYPE_3__, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i64, i32 }
%struct.konicawc = type { i32, i32, i32, i32, i32 }

@brightness = common dso_local global i32 0, align 4
@MAX_BRIGHTNESS = common dso_local global i32 0, align 4
@contrast = common dso_local global i32 0, align 4
@MAX_CONTRAST = common dso_local global i32 0, align 4
@saturation = common dso_local global i32 0, align 4
@MAX_SATURATION = common dso_local global i32 0, align 4
@sharpness = common dso_local global i32 0, align 4
@MAX_SHARPNESS = common dso_local global i32 0, align 4
@whitebal = common dso_local global i32 0, align 4
@MAX_WHITEBAL = common dso_local global i32 0, align 4
@VIDEO_PALETTE_YUV420P = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Konica Webcam\00", align 1
@VID_TYPE_CAPTURE = common dso_local global i32 0, align 4
@camera_sizes = common dso_local global %struct.TYPE_4__* null, align 8
@SIZE_160X120 = common dso_local global i64 0, align 8
@SIZE_320X240 = common dso_local global i64 0, align 8
@VIDEO_TYPE_CAMERA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"Camera\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"device init\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"3,10 -> %2.2x %2.2x\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"2,0,d failed\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"setting initial values\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uvd*)* @konicawc_configure_video to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @konicawc_configure_video(%struct.uvd* %0) #0 {
  %2 = alloca %struct.uvd*, align 8
  %3 = alloca %struct.konicawc*, align 8
  %4 = alloca [2 x i32], align 4
  store %struct.uvd* %0, %struct.uvd** %2, align 8
  %5 = load %struct.uvd*, %struct.uvd** %2, align 8
  %6 = getelementptr inbounds %struct.uvd, %struct.uvd* %5, i32 0, i32 4
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.konicawc*
  store %struct.konicawc* %8, %struct.konicawc** %3, align 8
  %9 = load %struct.uvd*, %struct.uvd** %2, align 8
  %10 = getelementptr inbounds %struct.uvd, %struct.uvd* %9, i32 0, i32 2
  %11 = call i32 @memset(%struct.TYPE_3__* %10, i32 0, i32 96)
  %12 = load %struct.uvd*, %struct.uvd** %2, align 8
  %13 = getelementptr inbounds %struct.uvd, %struct.uvd* %12, i32 0, i32 3
  %14 = call i32 @memset(%struct.TYPE_3__* %13, i32 85, i32 96)
  %15 = load i32, i32* @brightness, align 4
  %16 = load i32, i32* @MAX_BRIGHTNESS, align 4
  %17 = call i32 @RESTRICT_TO_RANGE(i32 %15, i32 0, i32 %16)
  %18 = load i32, i32* @contrast, align 4
  %19 = load i32, i32* @MAX_CONTRAST, align 4
  %20 = call i32 @RESTRICT_TO_RANGE(i32 %18, i32 0, i32 %19)
  %21 = load i32, i32* @saturation, align 4
  %22 = load i32, i32* @MAX_SATURATION, align 4
  %23 = call i32 @RESTRICT_TO_RANGE(i32 %21, i32 0, i32 %22)
  %24 = load i32, i32* @sharpness, align 4
  %25 = load i32, i32* @MAX_SHARPNESS, align 4
  %26 = call i32 @RESTRICT_TO_RANGE(i32 %24, i32 0, i32 %25)
  %27 = load i32, i32* @whitebal, align 4
  %28 = load i32, i32* @MAX_WHITEBAL, align 4
  %29 = call i32 @RESTRICT_TO_RANGE(i32 %27, i32 0, i32 %28)
  %30 = load i32, i32* @brightness, align 4
  %31 = sdiv i32 %30, 11
  %32 = load %struct.konicawc*, %struct.konicawc** %3, align 8
  %33 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @contrast, align 4
  %35 = sdiv i32 %34, 11
  %36 = load %struct.konicawc*, %struct.konicawc** %3, align 8
  %37 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @saturation, align 4
  %39 = sdiv i32 %38, 11
  %40 = load %struct.konicawc*, %struct.konicawc** %3, align 8
  %41 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @sharpness, align 4
  %43 = sdiv i32 %42, 11
  %44 = load %struct.konicawc*, %struct.konicawc** %3, align 8
  %45 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @whitebal, align 4
  %47 = sdiv i32 %46, 11
  %48 = load %struct.konicawc*, %struct.konicawc** %3, align 8
  %49 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 4
  %50 = load %struct.uvd*, %struct.uvd** %2, align 8
  %51 = getelementptr inbounds %struct.uvd, %struct.uvd* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store i32 108, i32* %52, align 8
  %53 = load %struct.uvd*, %struct.uvd** %2, align 8
  %54 = getelementptr inbounds %struct.uvd, %struct.uvd* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  store i32 108, i32* %55, align 4
  %56 = load i32, i32* @brightness, align 4
  %57 = load %struct.uvd*, %struct.uvd** %2, align 8
  %58 = getelementptr inbounds %struct.uvd, %struct.uvd* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 2
  store i32 %56, i32* %59, align 8
  %60 = load i32, i32* @contrast, align 4
  %61 = load %struct.uvd*, %struct.uvd** %2, align 8
  %62 = getelementptr inbounds %struct.uvd, %struct.uvd* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 3
  store i32 %60, i32* %63, align 4
  %64 = load i32, i32* @whitebal, align 4
  %65 = load %struct.uvd*, %struct.uvd** %2, align 8
  %66 = getelementptr inbounds %struct.uvd, %struct.uvd* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 4
  store i32 %64, i32* %67, align 8
  %68 = load %struct.uvd*, %struct.uvd** %2, align 8
  %69 = getelementptr inbounds %struct.uvd, %struct.uvd* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 5
  store i32 6, i32* %70, align 4
  %71 = load i32, i32* @VIDEO_PALETTE_YUV420P, align 4
  %72 = load %struct.uvd*, %struct.uvd** %2, align 8
  %73 = getelementptr inbounds %struct.uvd, %struct.uvd* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 17
  store i32 %71, i32* %74, align 8
  %75 = load %struct.uvd*, %struct.uvd** %2, align 8
  %76 = getelementptr inbounds %struct.uvd, %struct.uvd* %75, i32 0, i32 1
  %77 = call i32 @memset(%struct.TYPE_3__* %76, i32 0, i32 96)
  %78 = load %struct.uvd*, %struct.uvd** %2, align 8
  %79 = getelementptr inbounds %struct.uvd, %struct.uvd* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 7
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @strcpy(i32 %81, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %83 = load i32, i32* @VID_TYPE_CAPTURE, align 4
  %84 = load %struct.uvd*, %struct.uvd** %2, align 8
  %85 = getelementptr inbounds %struct.uvd, %struct.uvd* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 8
  store i32 %83, i32* %86, align 8
  %87 = load %struct.uvd*, %struct.uvd** %2, align 8
  %88 = getelementptr inbounds %struct.uvd, %struct.uvd* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 6
  store i32 1, i32* %89, align 8
  %90 = load %struct.uvd*, %struct.uvd** %2, align 8
  %91 = getelementptr inbounds %struct.uvd, %struct.uvd* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 16
  store i64 0, i64* %92, align 8
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** @camera_sizes, align 8
  %94 = load i64, i64* @SIZE_160X120, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.uvd*, %struct.uvd** %2, align 8
  %99 = getelementptr inbounds %struct.uvd, %struct.uvd* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 15
  store i32 %97, i32* %100, align 4
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** @camera_sizes, align 8
  %102 = load i64, i64* @SIZE_160X120, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.uvd*, %struct.uvd** %2, align 8
  %107 = getelementptr inbounds %struct.uvd, %struct.uvd* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 14
  store i32 %105, i32* %108, align 8
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** @camera_sizes, align 8
  %110 = load i64, i64* @SIZE_320X240, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.uvd*, %struct.uvd** %2, align 8
  %115 = getelementptr inbounds %struct.uvd, %struct.uvd* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 13
  store i32 %113, i32* %116, align 4
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** @camera_sizes, align 8
  %118 = load i64, i64* @SIZE_320X240, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.uvd*, %struct.uvd** %2, align 8
  %123 = getelementptr inbounds %struct.uvd, %struct.uvd* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 12
  store i32 %121, i32* %124, align 8
  %125 = load %struct.uvd*, %struct.uvd** %2, align 8
  %126 = getelementptr inbounds %struct.uvd, %struct.uvd* %125, i32 0, i32 0
  %127 = call i32 @memset(%struct.TYPE_3__* %126, i32 0, i32 96)
  %128 = load %struct.uvd*, %struct.uvd** %2, align 8
  %129 = getelementptr inbounds %struct.uvd, %struct.uvd* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 11
  store i64 0, i64* %130, align 8
  %131 = load %struct.uvd*, %struct.uvd** %2, align 8
  %132 = getelementptr inbounds %struct.uvd, %struct.uvd* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 10
  store i64 0, i64* %133, align 8
  %134 = load %struct.uvd*, %struct.uvd** %2, align 8
  %135 = getelementptr inbounds %struct.uvd, %struct.uvd* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 9
  store i64 0, i64* %136, align 8
  %137 = load i32, i32* @VIDEO_TYPE_CAMERA, align 4
  %138 = load %struct.uvd*, %struct.uvd** %2, align 8
  %139 = getelementptr inbounds %struct.uvd, %struct.uvd* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 8
  store i32 %137, i32* %140, align 8
  %141 = load %struct.uvd*, %struct.uvd** %2, align 8
  %142 = getelementptr inbounds %struct.uvd, %struct.uvd* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 7
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @strcpy(i32 %144, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %146 = call i32 (i32, i8*, ...) @DEBUG(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %147 = load %struct.uvd*, %struct.uvd** %2, align 8
  %148 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %149 = call i32 @konicawc_get_misc(%struct.uvd* %147, i32 3, i32 0, i32 16, i32* %148, i32 2)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %157, label %151

151:                                              ; preds = %1
  %152 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %153 = load i32, i32* %152, align 4
  %154 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %155 = load i32, i32* %154, align 4
  %156 = call i32 (i32, i8*, ...) @DEBUG(i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %153, i32 %155)
  br label %157

157:                                              ; preds = %151, %1
  %158 = load %struct.uvd*, %struct.uvd** %2, align 8
  %159 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %160 = call i32 @konicawc_get_misc(%struct.uvd* %158, i32 3, i32 0, i32 16, i32* %159, i32 2)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %168, label %162

162:                                              ; preds = %157
  %163 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %164 = load i32, i32* %163, align 4
  %165 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %166 = load i32, i32* %165, align 4
  %167 = call i32 (i32, i8*, ...) @DEBUG(i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %164, i32 %166)
  br label %168

168:                                              ; preds = %162, %157
  %169 = load %struct.uvd*, %struct.uvd** %2, align 8
  %170 = call i64 @konicawc_set_misc(%struct.uvd* %169, i32 2, i32 0, i32 13)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %168
  %173 = call i32 (i32, i8*, ...) @DEBUG(i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %174

174:                                              ; preds = %172, %168
  %175 = call i32 (i32, i8*, ...) @DEBUG(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @RESTRICT_TO_RANGE(i32, i32, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @DEBUG(i32, i8*, ...) #1

declare dso_local i32 @konicawc_get_misc(%struct.uvd*, i32, i32, i32, i32*, i32) #1

declare dso_local i64 @konicawc_set_misc(%struct.uvd*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
