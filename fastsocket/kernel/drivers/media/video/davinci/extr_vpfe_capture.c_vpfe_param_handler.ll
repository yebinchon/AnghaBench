; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpfe_capture.c_vpfe_param_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpfe_capture.c_vpfe_param_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (i8*)* }
%struct.file = type { i32 }
%struct.vpfe_device = type { i32, i32, i32, i64 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"vpfe_param_handler\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"device already started\0A\00", align 1
@EBUSY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [48 x i8] c"VPFE_CMD_S_CCDC_RAW_PARAMS: experimental ioctl\0A\00", align 1
@ccdc_dev = common dso_local global %struct.TYPE_4__* null, align 8
@.str.3 = private unnamed_addr constant [37 x i8] c"Error in setting parameters in CCDC\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Invalid image format at CCDC\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i8*, i32, i8*)* @vpfe_param_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vpfe_param_handler(%struct.file* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.vpfe_device*, align 8
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %12 = load %struct.file*, %struct.file** %6, align 8
  %13 = call %struct.vpfe_device* @video_drvdata(%struct.file* %12)
  store %struct.vpfe_device* %13, %struct.vpfe_device** %10, align 8
  store i32 0, i32* %11, align 4
  %14 = load i32, i32* @debug, align 4
  %15 = load %struct.vpfe_device*, %struct.vpfe_device** %10, align 8
  %16 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %15, i32 0, i32 1
  %17 = call i32 @v4l2_dbg(i32 1, i32 %14, i32* %16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.vpfe_device*, %struct.vpfe_device** %10, align 8
  %19 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %4
  %23 = load %struct.vpfe_device*, %struct.vpfe_device** %10, align 8
  %24 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %23, i32 0, i32 1
  %25 = call i32 @v4l2_err(i32* %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i64, i64* @EBUSY, align 8
  %27 = sub nsw i64 0, %26
  store i64 %27, i64* %5, align 8
  br label %76

28:                                               ; preds = %4
  %29 = load %struct.vpfe_device*, %struct.vpfe_device** %10, align 8
  %30 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %29, i32 0, i32 0
  %31 = call i32 @mutex_lock_interruptible(i32* %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %5, align 8
  br label %76

37:                                               ; preds = %28
  %38 = load i32, i32* %8, align 4
  switch i32 %38, label %66 [
    i32 128, label %39
  ]

39:                                               ; preds = %37
  %40 = load %struct.vpfe_device*, %struct.vpfe_device** %10, align 8
  %41 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %40, i32 0, i32 1
  %42 = call i32 @v4l2_warn(i32* %41, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ccdc_dev, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32 (i8*)*, i32 (i8*)** %45, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = call i32 %46(i8* %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %39
  %52 = load %struct.vpfe_device*, %struct.vpfe_device** %10, align 8
  %53 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %52, i32 0, i32 1
  %54 = call i32 @v4l2_err(i32* %53, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %70

55:                                               ; preds = %39
  %56 = load %struct.vpfe_device*, %struct.vpfe_device** %10, align 8
  %57 = load %struct.vpfe_device*, %struct.vpfe_device** %10, align 8
  %58 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %57, i32 0, i32 2
  %59 = call i32 @vpfe_get_ccdc_image_format(%struct.vpfe_device* %56, i32* %58)
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load %struct.vpfe_device*, %struct.vpfe_device** %10, align 8
  %63 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %62, i32 0, i32 1
  %64 = call i32 @v4l2_err(i32* %63, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %70

65:                                               ; preds = %55
  br label %69

66:                                               ; preds = %37
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %11, align 4
  br label %69

69:                                               ; preds = %66, %65
  br label %70

70:                                               ; preds = %69, %61, %51
  %71 = load %struct.vpfe_device*, %struct.vpfe_device** %10, align 8
  %72 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %71, i32 0, i32 0
  %73 = call i32 @mutex_unlock(i32* %72)
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  store i64 %75, i64* %5, align 8
  br label %76

76:                                               ; preds = %70, %34, %22
  %77 = load i64, i64* %5, align 8
  ret i64 %77
}

declare dso_local %struct.vpfe_device* @video_drvdata(%struct.file*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*) #1

declare dso_local i32 @v4l2_err(i32*, i8*) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @v4l2_warn(i32*, i8*) #1

declare dso_local i32 @vpfe_get_ccdc_image_format(%struct.vpfe_device*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
