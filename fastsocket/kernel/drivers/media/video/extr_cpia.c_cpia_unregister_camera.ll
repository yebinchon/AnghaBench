; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cpia.c_cpia_unregister_camera.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cpia.c_cpia_unregister_camera.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_data = type { i64, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"unregistering video\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"camera open -- setting ops to NULL\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"freeing camera\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpia_unregister_camera(%struct.cam_data* %0) #0 {
  %2 = alloca %struct.cam_data*, align 8
  store %struct.cam_data* %0, %struct.cam_data** %2, align 8
  %3 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %5 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %4, i32 0, i32 1
  %6 = call i32 @video_unregister_device(%struct.TYPE_2__* %5)
  %7 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %8 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %13 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @put_cam(i32* %14)
  %16 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %17 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %18 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %17, i32 0, i32 2
  store i32* null, i32** %18, align 8
  br label %19

19:                                               ; preds = %11, %1
  %20 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %21 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %26 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %27 = call i32 @kfree(%struct.cam_data* %26)
  br label %28

28:                                               ; preds = %24, %19
  ret void
}

declare dso_local i32 @DBG(i8*, ...) #1

declare dso_local i32 @video_unregister_device(%struct.TYPE_2__*) #1

declare dso_local i32 @put_cam(i32*) #1

declare dso_local i32 @kfree(%struct.cam_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
