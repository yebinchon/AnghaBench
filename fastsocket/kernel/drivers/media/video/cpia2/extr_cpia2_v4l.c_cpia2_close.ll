; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_v4l.c_cpia2_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_v4l.c_cpia2_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.cpia2_fh* }
%struct.cpia2_fh = type { i32, i64, i32, i64, i64 }
%struct.video_device = type { i32 }
%struct.camera_data = type { i32, i64, i32, i64, i64 }

@V4L2_PRIORITY_RECORD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @cpia2_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpia2_close(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.video_device*, align 8
  %5 = alloca %struct.camera_data*, align 8
  %6 = alloca %struct.cpia2_fh*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  %7 = load %struct.file*, %struct.file** %3, align 8
  %8 = call %struct.video_device* @video_devdata(%struct.file* %7)
  store %struct.video_device* %8, %struct.video_device** %4, align 8
  %9 = load %struct.video_device*, %struct.video_device** %4, align 8
  %10 = call %struct.cpia2_fh* @video_get_drvdata(%struct.video_device* %9)
  %11 = bitcast %struct.cpia2_fh* %10 to %struct.camera_data*
  store %struct.camera_data* %11, %struct.camera_data** %5, align 8
  %12 = load %struct.file*, %struct.file** %3, align 8
  %13 = getelementptr inbounds %struct.file, %struct.file* %12, i32 0, i32 0
  %14 = load %struct.cpia2_fh*, %struct.cpia2_fh** %13, align 8
  store %struct.cpia2_fh* %14, %struct.cpia2_fh** %6, align 8
  %15 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %16 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %15, i32 0, i32 2
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %19 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %52

22:                                               ; preds = %1
  %23 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %24 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %33, label %27

27:                                               ; preds = %22
  %28 = load %struct.cpia2_fh*, %struct.cpia2_fh** %6, align 8
  %29 = getelementptr inbounds %struct.cpia2_fh, %struct.cpia2_fh* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @V4L2_PRIORITY_RECORD, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %52

33:                                               ; preds = %27, %22
  %34 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %35 = bitcast %struct.camera_data* %34 to %struct.cpia2_fh*
  %36 = call i32 @cpia2_usb_stream_stop(%struct.cpia2_fh* %35)
  %37 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %38 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %51

41:                                               ; preds = %33
  %42 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %43 = bitcast %struct.camera_data* %42 to %struct.cpia2_fh*
  %44 = call i32 @cpia2_save_camera_state(%struct.cpia2_fh* %43)
  %45 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %46 = bitcast %struct.camera_data* %45 to %struct.cpia2_fh*
  %47 = call i32 @cpia2_set_low_power(%struct.cpia2_fh* %46)
  %48 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %49 = bitcast %struct.camera_data* %48 to %struct.cpia2_fh*
  %50 = call i32 @cpia2_free_buffers(%struct.cpia2_fh* %49)
  br label %51

51:                                               ; preds = %41, %33
  br label %52

52:                                               ; preds = %51, %27, %1
  %53 = load %struct.cpia2_fh*, %struct.cpia2_fh** %6, align 8
  %54 = getelementptr inbounds %struct.cpia2_fh, %struct.cpia2_fh* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %59 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %58, i32 0, i32 4
  store i64 0, i64* %59, align 8
  br label %60

60:                                               ; preds = %57, %52
  %61 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %62 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %61, i32 0, i32 1
  %63 = load %struct.cpia2_fh*, %struct.cpia2_fh** %6, align 8
  %64 = getelementptr inbounds %struct.cpia2_fh, %struct.cpia2_fh* %63, i32 0, i32 1
  %65 = call i32 @v4l2_prio_close(i64* %62, i64* %64)
  %66 = load %struct.file*, %struct.file** %3, align 8
  %67 = getelementptr inbounds %struct.file, %struct.file* %66, i32 0, i32 0
  store %struct.cpia2_fh* null, %struct.cpia2_fh** %67, align 8
  %68 = load %struct.cpia2_fh*, %struct.cpia2_fh** %6, align 8
  %69 = call i32 @kfree(%struct.cpia2_fh* %68)
  %70 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %71 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %71, align 8
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %93

75:                                               ; preds = %60
  %76 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %77 = bitcast %struct.camera_data* %76 to %struct.cpia2_fh*
  %78 = call i32 @cpia2_free_buffers(%struct.cpia2_fh* %77)
  %79 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %80 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %92, label %83

83:                                               ; preds = %75
  %84 = load %struct.video_device*, %struct.video_device** %4, align 8
  %85 = call i32 @video_unregister_device(%struct.video_device* %84)
  %86 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %87 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %86, i32 0, i32 2
  %88 = call i32 @mutex_unlock(i32* %87)
  %89 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %90 = bitcast %struct.camera_data* %89 to %struct.cpia2_fh*
  %91 = call i32 @kfree(%struct.cpia2_fh* %90)
  store i32 0, i32* %2, align 4
  br label %97

92:                                               ; preds = %75
  br label %93

93:                                               ; preds = %92, %60
  %94 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %95 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %94, i32 0, i32 2
  %96 = call i32 @mutex_unlock(i32* %95)
  store i32 0, i32* %2, align 4
  br label %97

97:                                               ; preds = %93, %83
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local %struct.cpia2_fh* @video_get_drvdata(%struct.video_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cpia2_usb_stream_stop(%struct.cpia2_fh*) #1

declare dso_local i32 @cpia2_save_camera_state(%struct.cpia2_fh*) #1

declare dso_local i32 @cpia2_set_low_power(%struct.cpia2_fh*) #1

declare dso_local i32 @cpia2_free_buffers(%struct.cpia2_fh*) #1

declare dso_local i32 @v4l2_prio_close(i64*, i64*) #1

declare dso_local i32 @kfree(%struct.cpia2_fh*) #1

declare dso_local i32 @video_unregister_device(%struct.video_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
