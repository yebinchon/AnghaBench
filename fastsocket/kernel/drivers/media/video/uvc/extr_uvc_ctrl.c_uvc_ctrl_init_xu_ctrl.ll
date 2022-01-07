; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_ctrl.c_uvc_ctrl_init_xu_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_ctrl.c_uvc_ctrl_init_xu_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.uvc_control = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.uvc_control_info = type { i32, i32 }

@UVC_TRACE_CONTROL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"Failed to initialize control %pUl/%u on device %s entity %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvc_device*, %struct.uvc_control*)* @uvc_ctrl_init_xu_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_ctrl_init_xu_ctrl(%struct.uvc_device* %0, %struct.uvc_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uvc_device*, align 8
  %5 = alloca %struct.uvc_control*, align 8
  %6 = alloca %struct.uvc_control_info, align 4
  %7 = alloca i32, align 4
  store %struct.uvc_device* %0, %struct.uvc_device** %4, align 8
  store %struct.uvc_control* %1, %struct.uvc_control** %5, align 8
  %8 = load %struct.uvc_control*, %struct.uvc_control** %5, align 8
  %9 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %46

13:                                               ; preds = %2
  %14 = load %struct.uvc_device*, %struct.uvc_device** %4, align 8
  %15 = load %struct.uvc_control*, %struct.uvc_control** %5, align 8
  %16 = call i32 @uvc_ctrl_fill_xu_info(%struct.uvc_device* %14, %struct.uvc_control* %15, %struct.uvc_control_info* %6)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %3, align 4
  br label %46

21:                                               ; preds = %13
  %22 = load %struct.uvc_device*, %struct.uvc_device** %4, align 8
  %23 = load %struct.uvc_control*, %struct.uvc_control** %5, align 8
  %24 = call i32 @uvc_ctrl_add_info(%struct.uvc_device* %22, %struct.uvc_control* %23, %struct.uvc_control_info* %6)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %21
  %28 = load i32, i32* @UVC_TRACE_CONTROL, align 4
  %29 = getelementptr inbounds %struct.uvc_control_info, %struct.uvc_control_info* %6, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.uvc_control_info, %struct.uvc_control_info* %6, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.uvc_device*, %struct.uvc_device** %4, align 8
  %34 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.uvc_control*, %struct.uvc_control** %5, align 8
  %39 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @uvc_trace(i32 %28, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %32, i32 %37, i32 %42)
  br label %44

44:                                               ; preds = %27, %21
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %19, %12
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @uvc_ctrl_fill_xu_info(%struct.uvc_device*, %struct.uvc_control*, %struct.uvc_control_info*) #1

declare dso_local i32 @uvc_ctrl_add_info(%struct.uvc_device*, %struct.uvc_control*, %struct.uvc_control_info*) #1

declare dso_local i32 @uvc_trace(i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
