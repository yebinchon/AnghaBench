; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_quickcam_messenger.c_qcm_set_video_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_quickcam_messenger.c_qcm_set_video_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.uvd = type { i32, %struct.TYPE_3__*, i32, i64 }
%struct.TYPE_3__ = type { i64, i64, i64 }
%struct.video_window = type { i32, i32 }
%struct.qcm = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"trying to find size %d,%d\00", align 1
@MAX_FRAME_SIZE = common dso_local global i32 0, align 4
@camera_sizes = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"couldn't find size %d,%d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"Nothing to do\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Couldn't set camera size, err=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvd*, %struct.video_window*)* @qcm_set_video_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcm_set_video_mode(%struct.uvd* %0, %struct.video_window* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uvd*, align 8
  %5 = alloca %struct.video_window*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.qcm*, align 8
  store %struct.uvd* %0, %struct.uvd** %4, align 8
  store %struct.video_window* %1, %struct.video_window** %5, align 8
  %12 = load %struct.video_window*, %struct.video_window** %5, align 8
  %13 = getelementptr inbounds %struct.video_window, %struct.video_window* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %9, align 4
  %15 = load %struct.video_window*, %struct.video_window** %5, align 8
  %16 = getelementptr inbounds %struct.video_window, %struct.video_window* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %10, align 4
  %18 = load %struct.uvd*, %struct.uvd** %4, align 8
  %19 = getelementptr inbounds %struct.uvd, %struct.uvd* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.qcm*
  store %struct.qcm* %21, %struct.qcm** %11, align 8
  %22 = load i32, i32* %9, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %59

24:                                               ; preds = %2
  %25 = load i32, i32* %10, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %59

27:                                               ; preds = %24
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 (i32, i8*, ...) @DEBUG(i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29)
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %55, %27
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @MAX_FRAME_SIZE, align 4
  %34 = icmp sle i32 %32, %33
  br i1 %34, label %35, label %58

35:                                               ; preds = %31
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** @camera_sizes, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %35
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @camera_sizes, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  br label %58

54:                                               ; preds = %44, %35
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %31

58:                                               ; preds = %53, %31
  br label %63

59:                                               ; preds = %24, %2
  %60 = load %struct.qcm*, %struct.qcm** %11, align 8
  %61 = getelementptr inbounds %struct.qcm, %struct.qcm* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %7, align 4
  br label %63

63:                                               ; preds = %59, %58
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @MAX_FRAME_SIZE, align 4
  %66 = icmp sgt i32 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %63
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %10, align 4
  %70 = call i32 (i32, i8*, ...) @DEBUG(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %68, i32 %69)
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %149

73:                                               ; preds = %63
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.qcm*, %struct.qcm** %11, align 8
  %76 = getelementptr inbounds %struct.qcm, %struct.qcm* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %74, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = call i32 (i32, i8*, ...) @DEBUG(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %149

81:                                               ; preds = %73
  %82 = load %struct.uvd*, %struct.uvd** %4, align 8
  %83 = call i32 @qcm_stop_data(%struct.uvd* %82)
  %84 = load %struct.qcm*, %struct.qcm** %11, align 8
  %85 = getelementptr inbounds %struct.qcm, %struct.qcm* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %108

89:                                               ; preds = %81
  %90 = load %struct.qcm*, %struct.qcm** %11, align 8
  %91 = getelementptr inbounds %struct.qcm, %struct.qcm* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %7, align 4
  %94 = load %struct.qcm*, %struct.qcm** %11, align 8
  %95 = getelementptr inbounds %struct.qcm, %struct.qcm* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 4
  %96 = load %struct.uvd*, %struct.uvd** %4, align 8
  %97 = call i32 @qcm_set_camera_size(%struct.uvd* %96)
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %6, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %89
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* %8, align 4
  %104 = load %struct.qcm*, %struct.qcm** %11, align 8
  %105 = getelementptr inbounds %struct.qcm, %struct.qcm* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* %6, align 4
  store i32 %106, i32* %3, align 4
  br label %149

107:                                              ; preds = %89
  br label %108

108:                                              ; preds = %107, %81
  %109 = load %struct.uvd*, %struct.uvd** %4, align 8
  %110 = getelementptr inbounds %struct.uvd, %struct.uvd* %109, i32 0, i32 2
  %111 = call i32 @RingQueue_Flush(i32* %110)
  %112 = load %struct.uvd*, %struct.uvd** %4, align 8
  %113 = getelementptr inbounds %struct.uvd, %struct.uvd* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %114, -1
  br i1 %115, label %116, label %144

116:                                              ; preds = %108
  %117 = load %struct.uvd*, %struct.uvd** %4, align 8
  %118 = getelementptr inbounds %struct.uvd, %struct.uvd* %117, i32 0, i32 1
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %118, align 8
  %120 = load %struct.uvd*, %struct.uvd** %4, align 8
  %121 = getelementptr inbounds %struct.uvd, %struct.uvd* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 2
  store i64 0, i64* %125, align 8
  %126 = load %struct.uvd*, %struct.uvd** %4, align 8
  %127 = getelementptr inbounds %struct.uvd, %struct.uvd* %126, i32 0, i32 1
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %127, align 8
  %129 = load %struct.uvd*, %struct.uvd** %4, align 8
  %130 = getelementptr inbounds %struct.uvd, %struct.uvd* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 1
  store i64 0, i64* %134, align 8
  %135 = load %struct.uvd*, %struct.uvd** %4, align 8
  %136 = getelementptr inbounds %struct.uvd, %struct.uvd* %135, i32 0, i32 1
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %136, align 8
  %138 = load %struct.uvd*, %struct.uvd** %4, align 8
  %139 = getelementptr inbounds %struct.uvd, %struct.uvd* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  store i64 0, i64* %143, align 8
  br label %144

144:                                              ; preds = %116, %108
  %145 = load i32, i32* %6, align 4
  %146 = load %struct.uvd*, %struct.uvd** %4, align 8
  %147 = call i32 @qcm_start_data(%struct.uvd* %146)
  %148 = call i32 @CHECK_RET(i32 %145, i32 %147)
  store i32 0, i32* %3, align 4
  br label %149

149:                                              ; preds = %144, %100, %79, %67
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local i32 @DEBUG(i32, i8*, ...) #1

declare dso_local i32 @qcm_stop_data(%struct.uvd*) #1

declare dso_local i32 @qcm_set_camera_size(%struct.uvd*) #1

declare dso_local i32 @err(i8*, i32) #1

declare dso_local i32 @RingQueue_Flush(i32*) #1

declare dso_local i32 @CHECK_RET(i32, i32) #1

declare dso_local i32 @qcm_start_data(%struct.uvd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
