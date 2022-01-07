; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_ctrl.c_uvc_ctrl_add_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_ctrl.c_uvc_ctrl_add_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.uvc_control = type { i32, i32*, %struct.TYPE_5__*, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.uvc_control_info = type { i32 }

@UVC_CTRL_DATA_LAST = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UVC_TRACE_CONTROL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Added control %pUl/%u to device %s entity %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvc_device*, %struct.uvc_control*, %struct.uvc_control_info*)* @uvc_ctrl_add_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_ctrl_add_info(%struct.uvc_device* %0, %struct.uvc_control* %1, %struct.uvc_control_info* %2) #0 {
  %4 = alloca %struct.uvc_device*, align 8
  %5 = alloca %struct.uvc_control*, align 8
  %6 = alloca %struct.uvc_control_info*, align 8
  %7 = alloca i32, align 4
  store %struct.uvc_device* %0, %struct.uvc_device** %4, align 8
  store %struct.uvc_control* %1, %struct.uvc_control** %5, align 8
  store %struct.uvc_control_info* %2, %struct.uvc_control_info** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.uvc_control*, %struct.uvc_control** %5, align 8
  %9 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %8, i32 0, i32 3
  %10 = load %struct.uvc_control_info*, %struct.uvc_control_info** %6, align 8
  %11 = call i32 @memcpy(%struct.TYPE_6__* %9, %struct.uvc_control_info* %10, i32 4)
  %12 = load %struct.uvc_control*, %struct.uvc_control** %5, align 8
  %13 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 3
  %15 = call i32 @INIT_LIST_HEAD(i32* %14)
  %16 = load %struct.uvc_control*, %struct.uvc_control** %5, align 8
  %17 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @UVC_CTRL_DATA_LAST, align 4
  %21 = mul nsw i32 %19, %20
  %22 = add nsw i32 %21, 1
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i32* @kzalloc(i32 %22, i32 %23)
  %25 = load %struct.uvc_control*, %struct.uvc_control** %5, align 8
  %26 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %25, i32 0, i32 1
  store i32* %24, i32** %26, align 8
  %27 = load %struct.uvc_control*, %struct.uvc_control** %5, align 8
  %28 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %3
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %7, align 4
  br label %57

34:                                               ; preds = %3
  %35 = load %struct.uvc_control*, %struct.uvc_control** %5, align 8
  %36 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  %37 = load i32, i32* @UVC_TRACE_CONTROL, align 4
  %38 = load %struct.uvc_control*, %struct.uvc_control** %5, align 8
  %39 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.uvc_control*, %struct.uvc_control** %5, align 8
  %43 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.uvc_device*, %struct.uvc_device** %4, align 8
  %47 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.uvc_control*, %struct.uvc_control** %5, align 8
  %52 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %51, i32 0, i32 2
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @uvc_trace(i32 %37, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %45, i32 %50, i32 %55)
  br label %57

57:                                               ; preds = %34, %31
  %58 = load i32, i32* %7, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load %struct.uvc_control*, %struct.uvc_control** %5, align 8
  %62 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @kfree(i32* %63)
  br label %65

65:                                               ; preds = %60, %57
  %66 = load i32, i32* %7, align 4
  ret i32 %66
}

declare dso_local i32 @memcpy(%struct.TYPE_6__*, %struct.uvc_control_info*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @uvc_trace(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
