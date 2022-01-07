; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_v4l.c_cpia2_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_v4l.c_cpia2_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.cpia2_fh* }
%struct.cpia2_fh = type { i64, i32 }
%struct.camera_data = type { i64, i32, i32, i64, i64, i32 }

@.str = private unnamed_addr constant [40 x i8] c"Internal error, camera_data not found!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@V4L2_PRIORITY_UNSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @cpia2_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpia2_open(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.camera_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cpia2_fh*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  %7 = load %struct.file*, %struct.file** %3, align 8
  %8 = call %struct.camera_data* @video_drvdata(%struct.file* %7)
  store %struct.camera_data* %8, %struct.camera_data** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %10 = icmp ne %struct.camera_data* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = call i32 @ERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %89

15:                                               ; preds = %1
  %16 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %17 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %16, i32 0, i32 1
  %18 = call i64 @mutex_lock_interruptible(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* @ERESTARTSYS, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %89

23:                                               ; preds = %15
  %24 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %25 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %84

31:                                               ; preds = %23
  %32 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %33 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %56

37:                                               ; preds = %31
  %38 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %39 = call i64 @cpia2_allocate_buffers(%struct.camera_data* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %84

44:                                               ; preds = %37
  %45 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %46 = call i64 @cpia2_reset_camera(%struct.camera_data* %45)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i32, i32* @EIO, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %84

51:                                               ; preds = %44
  %52 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %53 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %52, i32 0, i32 4
  store i64 0, i64* %53, align 8
  %54 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %55 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %54, i32 0, i32 3
  store i64 0, i64* %55, align 8
  br label %56

56:                                               ; preds = %51, %36
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call %struct.cpia2_fh* @kmalloc(i32 16, i32 %57)
  store %struct.cpia2_fh* %58, %struct.cpia2_fh** %6, align 8
  %59 = load %struct.cpia2_fh*, %struct.cpia2_fh** %6, align 8
  %60 = icmp ne %struct.cpia2_fh* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %5, align 4
  br label %84

64:                                               ; preds = %56
  %65 = load %struct.cpia2_fh*, %struct.cpia2_fh** %6, align 8
  %66 = load %struct.file*, %struct.file** %3, align 8
  %67 = getelementptr inbounds %struct.file, %struct.file* %66, i32 0, i32 0
  store %struct.cpia2_fh* %65, %struct.cpia2_fh** %67, align 8
  %68 = load i32, i32* @V4L2_PRIORITY_UNSET, align 4
  %69 = load %struct.cpia2_fh*, %struct.cpia2_fh** %6, align 8
  %70 = getelementptr inbounds %struct.cpia2_fh, %struct.cpia2_fh* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 8
  %71 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %72 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %71, i32 0, i32 2
  %73 = load %struct.cpia2_fh*, %struct.cpia2_fh** %6, align 8
  %74 = getelementptr inbounds %struct.cpia2_fh, %struct.cpia2_fh* %73, i32 0, i32 1
  %75 = call i32 @v4l2_prio_open(i32* %72, i32* %74)
  %76 = load %struct.cpia2_fh*, %struct.cpia2_fh** %6, align 8
  %77 = getelementptr inbounds %struct.cpia2_fh, %struct.cpia2_fh* %76, i32 0, i32 0
  store i64 0, i64* %77, align 8
  %78 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %79 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %80, 1
  store i64 %81, i64* %79, align 8
  %82 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %83 = call i32 @cpia2_dbg_dump_registers(%struct.camera_data* %82)
  br label %84

84:                                               ; preds = %64, %61, %48, %41, %28
  %85 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %86 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %85, i32 0, i32 1
  %87 = call i32 @mutex_unlock(i32* %86)
  %88 = load i32, i32* %5, align 4
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %84, %20, %11
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local %struct.camera_data* @video_drvdata(%struct.file*) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i64 @cpia2_allocate_buffers(%struct.camera_data*) #1

declare dso_local i64 @cpia2_reset_camera(%struct.camera_data*) #1

declare dso_local %struct.cpia2_fh* @kmalloc(i32, i32) #1

declare dso_local i32 @v4l2_prio_open(i32*, i32*) #1

declare dso_local i32 @cpia2_dbg_dump_registers(%struct.camera_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
