; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_video.c_uvc_query_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_video.c_uvc_query_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_device = type { i32 }

@UVC_CTRL_CONTROL_TIMEOUT = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"Failed to query (%s) UVC control %u on unit %u: %d (exp. %u).\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uvc_query_ctrl(%struct.uvc_device* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.uvc_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.uvc_device* %0, %struct.uvc_device** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  %17 = load %struct.uvc_device*, %struct.uvc_device** %9, align 8
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* %13, align 4
  %22 = load i8*, i8** %14, align 8
  %23 = load i32, i32* %15, align 4
  %24 = load i32, i32* @UVC_CTRL_CONTROL_TIMEOUT, align 4
  %25 = call i32 @__uvc_query_ctrl(%struct.uvc_device* %17, i32 %18, i32 %19, i32 %20, i32 %21, i8* %22, i32 %23, i32 %24)
  store i32 %25, i32* %16, align 4
  %26 = load i32, i32* %16, align 4
  %27 = load i32, i32* %15, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %7
  %30 = load i32, i32* @KERN_ERR, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @uvc_query_name(i32 %31)
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %16, align 4
  %36 = load i32, i32* %15, align 4
  %37 = call i32 @uvc_printk(i32 %30, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33, i32 %34, i32 %35, i32 %36)
  %38 = load i32, i32* @EIO, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %8, align 4
  br label %41

40:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %41

41:                                               ; preds = %40, %29
  %42 = load i32, i32* %8, align 4
  ret i32 %42
}

declare dso_local i32 @__uvc_query_ctrl(%struct.uvc_device*, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @uvc_printk(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @uvc_query_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
