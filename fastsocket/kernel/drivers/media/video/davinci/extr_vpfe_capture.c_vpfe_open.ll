; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpfe_capture.c_vpfe_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpfe_capture.c_vpfe_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.vpfe_fh* }
%struct.vpfe_fh = type { i32, i64, %struct.vpfe_device* }
%struct.vpfe_device = type { i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"vpfe_open\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"No decoder registered\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"unable to allocate memory for file handle object\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@V4L2_PRIORITY_UNSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @vpfe_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpfe_open(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.vpfe_device*, align 8
  %5 = alloca %struct.vpfe_fh*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  %6 = load %struct.file*, %struct.file** %3, align 8
  %7 = call %struct.vpfe_device* @video_drvdata(%struct.file* %6)
  store %struct.vpfe_device* %7, %struct.vpfe_device** %4, align 8
  %8 = load i32, i32* @debug, align 4
  %9 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %10 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %9, i32 0, i32 4
  %11 = call i32 @v4l2_dbg(i32 1, i32 %8, i32* %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %13 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %12, i32 0, i32 5
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %1
  %19 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %20 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %19, i32 0, i32 4
  %21 = call i32 @v4l2_err(i32* %20, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %78

24:                                               ; preds = %1
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.vpfe_fh* @kmalloc(i32 24, i32 %25)
  store %struct.vpfe_fh* %26, %struct.vpfe_fh** %5, align 8
  %27 = load %struct.vpfe_fh*, %struct.vpfe_fh** %5, align 8
  %28 = icmp eq %struct.vpfe_fh* null, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %31 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %30, i32 0, i32 4
  %32 = call i32 @v4l2_err(i32* %31, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %78

35:                                               ; preds = %24
  %36 = load %struct.vpfe_fh*, %struct.vpfe_fh** %5, align 8
  %37 = load %struct.file*, %struct.file** %3, align 8
  %38 = getelementptr inbounds %struct.file, %struct.file* %37, i32 0, i32 0
  store %struct.vpfe_fh* %36, %struct.vpfe_fh** %38, align 8
  %39 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %40 = load %struct.vpfe_fh*, %struct.vpfe_fh** %5, align 8
  %41 = getelementptr inbounds %struct.vpfe_fh, %struct.vpfe_fh* %40, i32 0, i32 2
  store %struct.vpfe_device* %39, %struct.vpfe_device** %41, align 8
  %42 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %43 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %42, i32 0, i32 0
  %44 = call i32 @mutex_lock(i32* %43)
  %45 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %46 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %60, label %49

49:                                               ; preds = %35
  %50 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %51 = call i64 @vpfe_initialize_device(%struct.vpfe_device* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %55 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %54, i32 0, i32 0
  %56 = call i32 @mutex_unlock(i32* %55)
  %57 = load i32, i32* @ENODEV, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %78

59:                                               ; preds = %49
  br label %60

60:                                               ; preds = %59, %35
  %61 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %62 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 8
  %65 = load %struct.vpfe_fh*, %struct.vpfe_fh** %5, align 8
  %66 = getelementptr inbounds %struct.vpfe_fh, %struct.vpfe_fh* %65, i32 0, i32 1
  store i64 0, i64* %66, align 8
  %67 = load i32, i32* @V4L2_PRIORITY_UNSET, align 4
  %68 = load %struct.vpfe_fh*, %struct.vpfe_fh** %5, align 8
  %69 = getelementptr inbounds %struct.vpfe_fh, %struct.vpfe_fh* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %71 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %70, i32 0, i32 1
  %72 = load %struct.vpfe_fh*, %struct.vpfe_fh** %5, align 8
  %73 = getelementptr inbounds %struct.vpfe_fh, %struct.vpfe_fh* %72, i32 0, i32 0
  %74 = call i32 @v4l2_prio_open(i32* %71, i32* %73)
  %75 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %76 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %75, i32 0, i32 0
  %77 = call i32 @mutex_unlock(i32* %76)
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %60, %53, %29, %18
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local %struct.vpfe_device* @video_drvdata(%struct.file*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*) #1

declare dso_local i32 @v4l2_err(i32*, i8*) #1

declare dso_local %struct.vpfe_fh* @kmalloc(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @vpfe_initialize_device(%struct.vpfe_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @v4l2_prio_open(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
