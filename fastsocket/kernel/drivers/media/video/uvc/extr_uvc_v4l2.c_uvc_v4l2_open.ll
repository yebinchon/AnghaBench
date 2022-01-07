; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_v4l2.c_uvc_v4l2_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_v4l2.c_uvc_v4l2_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.uvc_fh* }
%struct.uvc_fh = type { i32, %struct.uvc_streaming*, i32 }
%struct.uvc_streaming = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@UVC_TRACE_CALLS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"uvc_v4l2_open\0A\00", align 1
@UVC_DEV_DISCONNECTED = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UVC_HANDLE_PASSIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @uvc_v4l2_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_v4l2_open(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.uvc_streaming*, align 8
  %5 = alloca %struct.uvc_fh*, align 8
  %6 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* @UVC_TRACE_CALLS, align 4
  %8 = call i32 @uvc_trace(i32 %7, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.file*, %struct.file** %3, align 8
  %10 = call %struct.uvc_streaming* @video_drvdata(%struct.file* %9)
  store %struct.uvc_streaming* %10, %struct.uvc_streaming** %4, align 8
  %11 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %12 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @UVC_DEV_DISCONNECTED, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %92

22:                                               ; preds = %1
  %23 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %24 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @usb_autopm_get_interface(i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %2, align 4
  br label %92

33:                                               ; preds = %22
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.uvc_fh* @kzalloc(i32 24, i32 %34)
  store %struct.uvc_fh* %35, %struct.uvc_fh** %5, align 8
  %36 = load %struct.uvc_fh*, %struct.uvc_fh** %5, align 8
  %37 = icmp eq %struct.uvc_fh* %36, null
  br i1 %37, label %38, label %47

38:                                               ; preds = %33
  %39 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %40 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @usb_autopm_put_interface(i32 %43)
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %92

47:                                               ; preds = %33
  %48 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %49 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = call i32 @atomic_inc_return(i32* %51)
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %77

54:                                               ; preds = %47
  %55 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %56 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = call i32 @uvc_status_start(%struct.TYPE_2__* %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %76

61:                                               ; preds = %54
  %62 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %63 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @usb_autopm_put_interface(i32 %66)
  %68 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %69 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %68, i32 0, i32 1
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = call i32 @atomic_dec(i32* %71)
  %73 = load %struct.uvc_fh*, %struct.uvc_fh** %5, align 8
  %74 = call i32 @kfree(%struct.uvc_fh* %73)
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %2, align 4
  br label %92

76:                                               ; preds = %54
  br label %77

77:                                               ; preds = %76, %47
  %78 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %79 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.uvc_fh*, %struct.uvc_fh** %5, align 8
  %82 = getelementptr inbounds %struct.uvc_fh, %struct.uvc_fh* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  %83 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %84 = load %struct.uvc_fh*, %struct.uvc_fh** %5, align 8
  %85 = getelementptr inbounds %struct.uvc_fh, %struct.uvc_fh* %84, i32 0, i32 1
  store %struct.uvc_streaming* %83, %struct.uvc_streaming** %85, align 8
  %86 = load i32, i32* @UVC_HANDLE_PASSIVE, align 4
  %87 = load %struct.uvc_fh*, %struct.uvc_fh** %5, align 8
  %88 = getelementptr inbounds %struct.uvc_fh, %struct.uvc_fh* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  %89 = load %struct.uvc_fh*, %struct.uvc_fh** %5, align 8
  %90 = load %struct.file*, %struct.file** %3, align 8
  %91 = getelementptr inbounds %struct.file, %struct.file* %90, i32 0, i32 0
  store %struct.uvc_fh* %89, %struct.uvc_fh** %91, align 8
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %77, %61, %38, %31, %19
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @uvc_trace(i32, i8*) #1

declare dso_local %struct.uvc_streaming* @video_drvdata(%struct.file*) #1

declare dso_local i32 @usb_autopm_get_interface(i32) #1

declare dso_local %struct.uvc_fh* @kzalloc(i32, i32) #1

declare dso_local i32 @usb_autopm_put_interface(i32) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @uvc_status_start(%struct.TYPE_2__*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @kfree(%struct.uvc_fh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
