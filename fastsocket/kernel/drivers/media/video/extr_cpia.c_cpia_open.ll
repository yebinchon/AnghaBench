; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cpia.c_cpia_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cpia.c_cpia_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.video_device* }
%struct.video_device = type { i32 }
%struct.cam_data = type { i64, i32, %struct.TYPE_6__*, i32, i32*, %struct.TYPE_5__, i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_6__ = type { i32 (i32)*, i64 (i32)*, i32 }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"Internal error, cam_data not found!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Camera already open\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CPIA_MAX_IMAGE_SIZE = common dso_local global i32 0, align 4
@CPIA_MAX_FRAME_SIZE = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @cpia_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpia_open(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.video_device*, align 8
  %5 = alloca %struct.cam_data*, align 8
  %6 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  %7 = load %struct.file*, %struct.file** %3, align 8
  %8 = call %struct.video_device* @video_devdata(%struct.file* %7)
  store %struct.video_device* %8, %struct.video_device** %4, align 8
  %9 = load %struct.video_device*, %struct.video_device** %4, align 8
  %10 = call %struct.cam_data* @video_get_drvdata(%struct.video_device* %9)
  store %struct.cam_data* %10, %struct.cam_data** %5, align 8
  %11 = load %struct.cam_data*, %struct.cam_data** %5, align 8
  %12 = icmp ne %struct.cam_data* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = call i32 @DBG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %178

17:                                               ; preds = %1
  %18 = load %struct.cam_data*, %struct.cam_data** %5, align 8
  %19 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = call i32 @DBG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @EBUSY, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %178

26:                                               ; preds = %17
  %27 = load %struct.cam_data*, %struct.cam_data** %5, align 8
  %28 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %27, i32 0, i32 2
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @try_module_get(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %26
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %178

37:                                               ; preds = %26
  %38 = load %struct.cam_data*, %struct.cam_data** %5, align 8
  %39 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %38, i32 0, i32 3
  %40 = call i32 @mutex_lock(i32* %39)
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %6, align 4
  %43 = load %struct.cam_data*, %struct.cam_data** %5, align 8
  %44 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %43, i32 0, i32 4
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %59, label %47

47:                                               ; preds = %37
  %48 = load i32, i32* @CPIA_MAX_IMAGE_SIZE, align 4
  %49 = call i8* @rvmalloc(i32 %48)
  %50 = bitcast i8* %49 to i32*
  %51 = load %struct.cam_data*, %struct.cam_data** %5, align 8
  %52 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %51, i32 0, i32 4
  store i32* %50, i32** %52, align 8
  %53 = load %struct.cam_data*, %struct.cam_data** %5, align 8
  %54 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %53, i32 0, i32 4
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %47
  br label %140

58:                                               ; preds = %47
  br label %59

59:                                               ; preds = %58, %37
  %60 = load %struct.cam_data*, %struct.cam_data** %5, align 8
  %61 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %60, i32 0, i32 5
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %79, label %65

65:                                               ; preds = %59
  %66 = load i32, i32* @CPIA_MAX_FRAME_SIZE, align 4
  %67 = call i8* @rvmalloc(i32 %66)
  %68 = bitcast i8* %67 to i32*
  %69 = load %struct.cam_data*, %struct.cam_data** %5, align 8
  %70 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %69, i32 0, i32 5
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  store i32* %68, i32** %71, align 8
  %72 = load %struct.cam_data*, %struct.cam_data** %5, align 8
  %73 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %72, i32 0, i32 5
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %65
  br label %140

78:                                               ; preds = %65
  br label %79

79:                                               ; preds = %78, %59
  %80 = load i32, i32* @ENODEV, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %6, align 4
  %82 = load %struct.cam_data*, %struct.cam_data** %5, align 8
  %83 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %82, i32 0, i32 2
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load i64 (i32)*, i64 (i32)** %85, align 8
  %87 = load %struct.cam_data*, %struct.cam_data** %5, align 8
  %88 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %87, i32 0, i32 8
  %89 = load i32, i32* %88, align 8
  %90 = call i64 %86(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %79
  br label %140

93:                                               ; preds = %79
  %94 = load %struct.cam_data*, %struct.cam_data** %5, align 8
  %95 = call i32 @reset_camera(%struct.cam_data* %94)
  store i32 %95, i32* %6, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %93
  %98 = load %struct.cam_data*, %struct.cam_data** %5, align 8
  %99 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %98, i32 0, i32 2
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32 (i32)*, i32 (i32)** %101, align 8
  %103 = load %struct.cam_data*, %struct.cam_data** %5, align 8
  %104 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %103, i32 0, i32 8
  %105 = load i32, i32* %104, align 8
  %106 = call i32 %102(i32 %105)
  br label %140

107:                                              ; preds = %93
  %108 = load i32, i32* @EINTR, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* @current, align 4
  %111 = call i64 @signal_pending(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %107
  br label %140

114:                                              ; preds = %107
  %115 = load %struct.cam_data*, %struct.cam_data** %5, align 8
  %116 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %115, i32 0, i32 7
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = icmp ne %struct.TYPE_4__* %117, null
  br i1 %118, label %119, label %125

119:                                              ; preds = %114
  %120 = call i32 (...) @current_uid()
  %121 = load %struct.cam_data*, %struct.cam_data** %5, align 8
  %122 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %121, i32 0, i32 7
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  store i32 %120, i32* %124, align 4
  br label %125

125:                                              ; preds = %119, %114
  %126 = load %struct.cam_data*, %struct.cam_data** %5, align 8
  %127 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %126, i32 0, i32 1
  store i32 1, i32* %127, align 8
  %128 = load %struct.cam_data*, %struct.cam_data** %5, align 8
  %129 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %128, i32 0, i32 6
  store i64 0, i64* %129, align 8
  %130 = load %struct.cam_data*, %struct.cam_data** %5, align 8
  %131 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = add nsw i64 %132, 1
  store i64 %133, i64* %131, align 8
  %134 = load %struct.video_device*, %struct.video_device** %4, align 8
  %135 = load %struct.file*, %struct.file** %3, align 8
  %136 = getelementptr inbounds %struct.file, %struct.file* %135, i32 0, i32 0
  store %struct.video_device* %134, %struct.video_device** %136, align 8
  %137 = load %struct.cam_data*, %struct.cam_data** %5, align 8
  %138 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %137, i32 0, i32 3
  %139 = call i32 @mutex_unlock(i32* %138)
  store i32 0, i32* %2, align 4
  br label %178

140:                                              ; preds = %113, %97, %92, %77, %57
  %141 = load %struct.cam_data*, %struct.cam_data** %5, align 8
  %142 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %141, i32 0, i32 5
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = icmp ne i32* %144, null
  br i1 %145, label %146, label %156

146:                                              ; preds = %140
  %147 = load %struct.cam_data*, %struct.cam_data** %5, align 8
  %148 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %147, i32 0, i32 5
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* @CPIA_MAX_FRAME_SIZE, align 4
  %152 = call i32 @rvfree(i32* %150, i32 %151)
  %153 = load %struct.cam_data*, %struct.cam_data** %5, align 8
  %154 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %153, i32 0, i32 5
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 0
  store i32* null, i32** %155, align 8
  br label %156

156:                                              ; preds = %146, %140
  %157 = load %struct.cam_data*, %struct.cam_data** %5, align 8
  %158 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %157, i32 0, i32 4
  %159 = load i32*, i32** %158, align 8
  %160 = icmp ne i32* %159, null
  br i1 %160, label %161, label %169

161:                                              ; preds = %156
  %162 = load %struct.cam_data*, %struct.cam_data** %5, align 8
  %163 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %162, i32 0, i32 4
  %164 = load i32*, i32** %163, align 8
  %165 = load i32, i32* @CPIA_MAX_IMAGE_SIZE, align 4
  %166 = call i32 @rvfree(i32* %164, i32 %165)
  %167 = load %struct.cam_data*, %struct.cam_data** %5, align 8
  %168 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %167, i32 0, i32 4
  store i32* null, i32** %168, align 8
  br label %169

169:                                              ; preds = %161, %156
  %170 = load %struct.cam_data*, %struct.cam_data** %5, align 8
  %171 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %170, i32 0, i32 3
  %172 = call i32 @mutex_unlock(i32* %171)
  %173 = load %struct.cam_data*, %struct.cam_data** %5, align 8
  %174 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %173, i32 0, i32 2
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %174, align 8
  %176 = call i32 @put_cam(%struct.TYPE_6__* %175)
  %177 = load i32, i32* %6, align 4
  store i32 %177, i32* %2, align 4
  br label %178

178:                                              ; preds = %169, %125, %34, %22, %13
  %179 = load i32, i32* %2, align 4
  ret i32 %179
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local %struct.cam_data* @video_get_drvdata(%struct.video_device*) #1

declare dso_local i32 @DBG(i8*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @rvmalloc(i32) #1

declare dso_local i32 @reset_camera(%struct.cam_data*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @current_uid(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @rvfree(i32*, i32) #1

declare dso_local i32 @put_cam(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
