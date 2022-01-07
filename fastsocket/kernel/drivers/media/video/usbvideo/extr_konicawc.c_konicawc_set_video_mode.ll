; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_konicawc.c_konicawc_set_video_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_konicawc.c_konicawc_set_video_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.uvd = type { i32, i32, %struct.TYPE_3__*, i32, i64 }
%struct.TYPE_3__ = type { i64, i64, i64 }
%struct.video_window = type { i32, i32, i32 }
%struct.konicawc = type { i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"trying to find size %d,%d\00", align 1
@MAX_FRAME_SIZE = common dso_local global i32 0, align 4
@camera_sizes = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"couldn't find size %d,%d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"trying to set fps to %d\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"find_fps returned %d (%d)\00", align 1
@spd_to_fps = common dso_local global i32** null, align 8
@MAX_SPEED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"setting size to %d speed to %d\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Nothing to do\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"setting to  %dx%d @ %d fps\00", align 1
@spd_to_iface = common dso_local global i32* null, align 8
@.str.7 = private unnamed_addr constant [19 x i8] c"new interface = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvd*, %struct.video_window*)* @konicawc_set_video_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @konicawc_set_video_mode(%struct.uvd* %0, %struct.video_window* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uvd*, align 8
  %5 = alloca %struct.video_window*, align 8
  %6 = alloca %struct.konicawc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.uvd* %0, %struct.uvd** %4, align 8
  store %struct.video_window* %1, %struct.video_window** %5, align 8
  %12 = load %struct.uvd*, %struct.uvd** %4, align 8
  %13 = getelementptr inbounds %struct.uvd, %struct.uvd* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.konicawc*
  store %struct.konicawc* %15, %struct.konicawc** %6, align 8
  %16 = load %struct.konicawc*, %struct.konicawc** %6, align 8
  %17 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load %struct.video_window*, %struct.video_window** %5, align 8
  %20 = getelementptr inbounds %struct.video_window, %struct.video_window* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %9, align 4
  %22 = load %struct.video_window*, %struct.video_window** %5, align 8
  %23 = getelementptr inbounds %struct.video_window, %struct.video_window* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %10, align 4
  %25 = load %struct.video_window*, %struct.video_window** %5, align 8
  %26 = getelementptr inbounds %struct.video_window, %struct.video_window* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %65

30:                                               ; preds = %2
  %31 = load i32, i32* %10, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %65

33:                                               ; preds = %30
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %10, align 4
  %36 = call i32 (i32, i8*, ...) @DEBUG(i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35)
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %61, %33
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @MAX_FRAME_SIZE, align 4
  %40 = icmp sle i32 %38, %39
  br i1 %40, label %41, label %64

41:                                               ; preds = %37
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** @camera_sizes, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %41
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** @camera_sizes, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %50
  br label %64

60:                                               ; preds = %50, %41
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %8, align 4
  br label %37

64:                                               ; preds = %59, %37
  br label %69

65:                                               ; preds = %30, %2
  %66 = load %struct.konicawc*, %struct.konicawc** %6, align 8
  %67 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %8, align 4
  br label %69

69:                                               ; preds = %65, %64
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @MAX_FRAME_SIZE, align 4
  %72 = icmp sgt i32 %70, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %69
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %10, align 4
  %76 = call i32 (i32, i8*, ...) @DEBUG(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %74, i32 %75)
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %215

79:                                               ; preds = %69
  %80 = load i32, i32* %11, align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %99

82:                                               ; preds = %79
  %83 = load i32, i32* %11, align 4
  %84 = call i32 (i32, i8*, ...) @DEBUG(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @konicawc_find_fps(i32 %85, i32 %86)
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = load i32**, i32*** @spd_to_fps, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32*, i32** %89, i64 %91
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = call i32 (i32, i8*, ...) @DEBUG(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %88, i32 %97)
  br label %99

99:                                               ; preds = %82, %79
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* @MAX_SPEED, align 4
  %102 = icmp sgt i32 %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %3, align 4
  br label %215

106:                                              ; preds = %99
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* %7, align 4
  %109 = call i32 (i32, i8*, ...) @DEBUG(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %107, i32 %108)
  %110 = load i32, i32* %8, align 4
  %111 = load %struct.konicawc*, %struct.konicawc** %6, align 8
  %112 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = icmp eq i32 %110, %113
  br i1 %114, label %115, label %123

115:                                              ; preds = %106
  %116 = load i32, i32* %7, align 4
  %117 = load %struct.konicawc*, %struct.konicawc** %6, align 8
  %118 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = icmp eq i32 %116, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %115
  %122 = call i32 (i32, i8*, ...) @DEBUG(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %215

123:                                              ; preds = %115, %106
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** @camera_sizes, align 8
  %125 = load i32, i32* %8, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** @camera_sizes, align 8
  %131 = load i32, i32* %8, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32**, i32*** @spd_to_fps, align 8
  %137 = load i32, i32* %8, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32*, i32** %136, i64 %138
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %7, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = sdiv i32 %144, 3
  %146 = call i32 (i32, i8*, ...) @DEBUG(i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %129, i32 %135, i32 %145)
  %147 = load %struct.uvd*, %struct.uvd** %4, align 8
  %148 = call i32 @konicawc_stop_data(%struct.uvd* %147)
  %149 = load i32*, i32** @spd_to_iface, align 8
  %150 = load i32, i32* %7, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.uvd*, %struct.uvd** %4, align 8
  %155 = getelementptr inbounds %struct.uvd, %struct.uvd* %154, i32 0, i32 0
  store i32 %153, i32* %155, align 8
  %156 = load %struct.uvd*, %struct.uvd** %4, align 8
  %157 = getelementptr inbounds %struct.uvd, %struct.uvd* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = call i32 (i32, i8*, ...) @DEBUG(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 %158)
  %160 = load i32, i32* %7, align 4
  %161 = load %struct.konicawc*, %struct.konicawc** %6, align 8
  %162 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %161, i32 0, i32 0
  store i32 %160, i32* %162, align 4
  %163 = load %struct.konicawc*, %struct.konicawc** %6, align 8
  %164 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* %8, align 4
  %167 = icmp ne i32 %165, %166
  br i1 %167, label %168, label %174

168:                                              ; preds = %123
  %169 = load i32, i32* %8, align 4
  %170 = load %struct.konicawc*, %struct.konicawc** %6, align 8
  %171 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %170, i32 0, i32 1
  store i32 %169, i32* %171, align 4
  %172 = load %struct.uvd*, %struct.uvd** %4, align 8
  %173 = call i32 @konicawc_set_camera_size(%struct.uvd* %172)
  br label %174

174:                                              ; preds = %168, %123
  %175 = load %struct.uvd*, %struct.uvd** %4, align 8
  %176 = getelementptr inbounds %struct.uvd, %struct.uvd* %175, i32 0, i32 3
  %177 = call i32 @RingQueue_Flush(i32* %176)
  %178 = load %struct.konicawc*, %struct.konicawc** %6, align 8
  %179 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %178, i32 0, i32 2
  store i32 -2, i32* %179, align 4
  %180 = load %struct.uvd*, %struct.uvd** %4, align 8
  %181 = getelementptr inbounds %struct.uvd, %struct.uvd* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = icmp ne i32 %182, -1
  br i1 %183, label %184, label %212

184:                                              ; preds = %174
  %185 = load %struct.uvd*, %struct.uvd** %4, align 8
  %186 = getelementptr inbounds %struct.uvd, %struct.uvd* %185, i32 0, i32 2
  %187 = load %struct.TYPE_3__*, %struct.TYPE_3__** %186, align 8
  %188 = load %struct.uvd*, %struct.uvd** %4, align 8
  %189 = getelementptr inbounds %struct.uvd, %struct.uvd* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 2
  store i64 0, i64* %193, align 8
  %194 = load %struct.uvd*, %struct.uvd** %4, align 8
  %195 = getelementptr inbounds %struct.uvd, %struct.uvd* %194, i32 0, i32 2
  %196 = load %struct.TYPE_3__*, %struct.TYPE_3__** %195, align 8
  %197 = load %struct.uvd*, %struct.uvd** %4, align 8
  %198 = getelementptr inbounds %struct.uvd, %struct.uvd* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 1
  store i64 0, i64* %202, align 8
  %203 = load %struct.uvd*, %struct.uvd** %4, align 8
  %204 = getelementptr inbounds %struct.uvd, %struct.uvd* %203, i32 0, i32 2
  %205 = load %struct.TYPE_3__*, %struct.TYPE_3__** %204, align 8
  %206 = load %struct.uvd*, %struct.uvd** %4, align 8
  %207 = getelementptr inbounds %struct.uvd, %struct.uvd* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i32 0, i32 0
  store i64 0, i64* %211, align 8
  br label %212

212:                                              ; preds = %184, %174
  %213 = load %struct.uvd*, %struct.uvd** %4, align 8
  %214 = call i32 @konicawc_start_data(%struct.uvd* %213)
  store i32 0, i32* %3, align 4
  br label %215

215:                                              ; preds = %212, %121, %103, %73
  %216 = load i32, i32* %3, align 4
  ret i32 %216
}

declare dso_local i32 @DEBUG(i32, i8*, ...) #1

declare dso_local i32 @konicawc_find_fps(i32, i32) #1

declare dso_local i32 @konicawc_stop_data(%struct.uvd*) #1

declare dso_local i32 @konicawc_set_camera_size(%struct.uvd*) #1

declare dso_local i32 @RingQueue_Flush(i32*) #1

declare dso_local i32 @konicawc_start_data(%struct.uvd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
