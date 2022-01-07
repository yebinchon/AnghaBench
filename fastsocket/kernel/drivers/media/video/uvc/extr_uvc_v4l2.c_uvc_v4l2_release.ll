; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_v4l2.c_uvc_v4l2_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_v4l2.c_uvc_v4l2_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.uvc_fh* }
%struct.uvc_fh = type { %struct.uvc_streaming* }
%struct.uvc_streaming = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@UVC_TRACE_CALLS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"uvc_v4l2_release\0A\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"uvc_v4l2_release: Unable to free buffers.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @uvc_v4l2_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_v4l2_release(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.uvc_fh*, align 8
  %4 = alloca %struct.uvc_streaming*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %5 = load %struct.file*, %struct.file** %2, align 8
  %6 = getelementptr inbounds %struct.file, %struct.file* %5, i32 0, i32 0
  %7 = load %struct.uvc_fh*, %struct.uvc_fh** %6, align 8
  store %struct.uvc_fh* %7, %struct.uvc_fh** %3, align 8
  %8 = load %struct.uvc_fh*, %struct.uvc_fh** %3, align 8
  %9 = getelementptr inbounds %struct.uvc_fh, %struct.uvc_fh* %8, i32 0, i32 0
  %10 = load %struct.uvc_streaming*, %struct.uvc_streaming** %9, align 8
  store %struct.uvc_streaming* %10, %struct.uvc_streaming** %4, align 8
  %11 = load i32, i32* @UVC_TRACE_CALLS, align 4
  %12 = call i32 @uvc_trace(i32 %11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.uvc_fh*, %struct.uvc_fh** %3, align 8
  %14 = call i64 @uvc_has_privileges(%struct.uvc_fh* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %1
  %17 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %18 = call i32 @uvc_video_enable(%struct.uvc_streaming* %17, i32 0)
  %19 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %20 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %19, i32 0, i32 1
  %21 = call i64 @uvc_free_buffers(i32* %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load i32, i32* @KERN_ERR, align 4
  %25 = call i32 @uvc_printk(i32 %24, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %23, %16
  br label %27

27:                                               ; preds = %26, %1
  %28 = load %struct.uvc_fh*, %struct.uvc_fh** %3, align 8
  %29 = call i32 @uvc_dismiss_privileges(%struct.uvc_fh* %28)
  %30 = load %struct.uvc_fh*, %struct.uvc_fh** %3, align 8
  %31 = call i32 @kfree(%struct.uvc_fh* %30)
  %32 = load %struct.file*, %struct.file** %2, align 8
  %33 = getelementptr inbounds %struct.file, %struct.file* %32, i32 0, i32 0
  store %struct.uvc_fh* null, %struct.uvc_fh** %33, align 8
  %34 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %35 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = call i64 @atomic_dec_return(i32* %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %27
  %41 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %42 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = call i32 @uvc_status_stop(%struct.TYPE_2__* %43)
  br label %45

45:                                               ; preds = %40, %27
  %46 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %47 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @usb_autopm_put_interface(i32 %50)
  ret i32 0
}

declare dso_local i32 @uvc_trace(i32, i8*) #1

declare dso_local i64 @uvc_has_privileges(%struct.uvc_fh*) #1

declare dso_local i32 @uvc_video_enable(%struct.uvc_streaming*, i32) #1

declare dso_local i64 @uvc_free_buffers(i32*) #1

declare dso_local i32 @uvc_printk(i32, i8*) #1

declare dso_local i32 @uvc_dismiss_privileges(%struct.uvc_fh*) #1

declare dso_local i32 @kfree(%struct.uvc_fh*) #1

declare dso_local i64 @atomic_dec_return(i32*) #1

declare dso_local i32 @uvc_status_stop(%struct.TYPE_2__*) #1

declare dso_local i32 @usb_autopm_put_interface(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
