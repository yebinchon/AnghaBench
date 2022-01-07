; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpfe_capture.c_vpfe_streamoff.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpfe_capture.c_vpfe_streamoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.vpfe_fh* }
%struct.vpfe_fh = type { i32 }
%struct.vpfe_device = type { i32, i32, i32, %struct.vpfe_subdev_info*, i32 }
%struct.vpfe_subdev_info = type { i32 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"vpfe_streamoff\0A\00", align 1
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Invalid buf type\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"fh->io_allowed\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"device started\0A\00", align 1
@video = common dso_local global i32 0, align 4
@s_stream = common dso_local global i32 0, align 4
@ENOIOCTLCMD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"stream off failed in subdev\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @vpfe_streamoff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpfe_streamoff(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vpfe_device*, align 8
  %9 = alloca %struct.vpfe_fh*, align 8
  %10 = alloca %struct.vpfe_subdev_info*, align 8
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = call %struct.vpfe_device* @video_drvdata(%struct.file* %12)
  store %struct.vpfe_device* %13, %struct.vpfe_device** %8, align 8
  %14 = load %struct.file*, %struct.file** %5, align 8
  %15 = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 0
  %16 = load %struct.vpfe_fh*, %struct.vpfe_fh** %15, align 8
  store %struct.vpfe_fh* %16, %struct.vpfe_fh** %9, align 8
  store i32 0, i32* %11, align 4
  %17 = load i32, i32* @debug, align 4
  %18 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %19 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %18, i32 0, i32 2
  %20 = call i32 @v4l2_dbg(i32 1, i32 %17, i32* %19, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %3
  %25 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %26 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %25, i32 0, i32 2
  %27 = call i32 @v4l2_err(i32* %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %95

30:                                               ; preds = %3
  %31 = load %struct.vpfe_fh*, %struct.vpfe_fh** %9, align 8
  %32 = getelementptr inbounds %struct.vpfe_fh, %struct.vpfe_fh* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %30
  %36 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %37 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %36, i32 0, i32 2
  %38 = call i32 @v4l2_err(i32* %37, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %39 = load i32, i32* @EACCES, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %95

41:                                               ; preds = %30
  %42 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %43 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %41
  %47 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %48 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %47, i32 0, i32 2
  %49 = call i32 @v4l2_err(i32* %48, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %95

52:                                               ; preds = %41
  %53 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %54 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %53, i32 0, i32 0
  %55 = call i32 @mutex_lock_interruptible(i32* %54)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i32, i32* %11, align 4
  store i32 %59, i32* %4, align 4
  br label %95

60:                                               ; preds = %52
  %61 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %62 = call i32 @vpfe_stop_ccdc_capture(%struct.vpfe_device* %61)
  %63 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %64 = call i32 @vpfe_detach_irq(%struct.vpfe_device* %63)
  %65 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %66 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %65, i32 0, i32 3
  %67 = load %struct.vpfe_subdev_info*, %struct.vpfe_subdev_info** %66, align 8
  store %struct.vpfe_subdev_info* %67, %struct.vpfe_subdev_info** %10, align 8
  %68 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %69 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %68, i32 0, i32 2
  %70 = load %struct.vpfe_subdev_info*, %struct.vpfe_subdev_info** %10, align 8
  %71 = getelementptr inbounds %struct.vpfe_subdev_info, %struct.vpfe_subdev_info* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @video, align 4
  %74 = load i32, i32* @s_stream, align 4
  %75 = call i32 @v4l2_device_call_until_err(i32* %69, i32 %72, i32 %73, i32 %74, i32 0)
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %60
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* @ENOIOCTLCMD, align 4
  %81 = sub nsw i32 0, %80
  %82 = icmp ne i32 %79, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %85 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %84, i32 0, i32 2
  %86 = call i32 @v4l2_err(i32* %85, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %87

87:                                               ; preds = %83, %78, %60
  %88 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %89 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %88, i32 0, i32 1
  %90 = call i32 @videobuf_streamoff(i32* %89)
  store i32 %90, i32* %11, align 4
  %91 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %92 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %91, i32 0, i32 0
  %93 = call i32 @mutex_unlock(i32* %92)
  %94 = load i32, i32* %11, align 4
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %87, %58, %46, %35, %24
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local %struct.vpfe_device* @video_drvdata(%struct.file*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*) #1

declare dso_local i32 @v4l2_err(i32*, i8*) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @vpfe_stop_ccdc_capture(%struct.vpfe_device*) #1

declare dso_local i32 @vpfe_detach_irq(%struct.vpfe_device*) #1

declare dso_local i32 @v4l2_device_call_until_err(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @videobuf_streamoff(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
