; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_ctrl.c___uvc_ctrl_add_mapping.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_ctrl.c___uvc_ctrl_add_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_device = type { i32 }
%struct.uvc_control = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.uvc_control_mapping = type { i32, i32, i32, %struct.TYPE_2__*, i32*, i32*, %struct.uvc_control_mapping* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@uvc_get_le_value = common dso_local global i32* null, align 8
@uvc_set_le_value = common dso_local global i32* null, align 8
@UVC_TRACE_CONTROL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Adding mapping '%s' to control %pUl/%u.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvc_device*, %struct.uvc_control*, %struct.uvc_control_mapping*)* @__uvc_ctrl_add_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__uvc_ctrl_add_mapping(%struct.uvc_device* %0, %struct.uvc_control* %1, %struct.uvc_control_mapping* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uvc_device*, align 8
  %6 = alloca %struct.uvc_control*, align 8
  %7 = alloca %struct.uvc_control_mapping*, align 8
  %8 = alloca %struct.uvc_control_mapping*, align 8
  %9 = alloca i32, align 4
  store %struct.uvc_device* %0, %struct.uvc_device** %5, align 8
  store %struct.uvc_control* %1, %struct.uvc_control** %6, align 8
  store %struct.uvc_control_mapping* %2, %struct.uvc_control_mapping** %7, align 8
  %10 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %7, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i8* @kmemdup(%struct.uvc_control_mapping* %10, i32 48, i32 %11)
  %13 = bitcast i8* %12 to %struct.uvc_control_mapping*
  store %struct.uvc_control_mapping* %13, %struct.uvc_control_mapping** %8, align 8
  %14 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %8, align 8
  %15 = icmp eq %struct.uvc_control_mapping* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %86

19:                                               ; preds = %3
  %20 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %7, align 8
  %21 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = mul i64 48, %23
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %9, align 4
  %26 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %7, align 8
  %27 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %26, i32 0, i32 6
  %28 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %27, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i8* @kmemdup(%struct.uvc_control_mapping* %28, i32 %29, i32 %30)
  %32 = bitcast i8* %31 to %struct.uvc_control_mapping*
  %33 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %8, align 8
  %34 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %33, i32 0, i32 6
  store %struct.uvc_control_mapping* %32, %struct.uvc_control_mapping** %34, align 8
  %35 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %8, align 8
  %36 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %35, i32 0, i32 6
  %37 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %36, align 8
  %38 = icmp eq %struct.uvc_control_mapping* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %19
  %40 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %8, align 8
  %41 = call i32 @kfree(%struct.uvc_control_mapping* %40)
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %86

44:                                               ; preds = %19
  %45 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %8, align 8
  %46 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %45, i32 0, i32 5
  %47 = load i32*, i32** %46, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load i32*, i32** @uvc_get_le_value, align 8
  %51 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %8, align 8
  %52 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %51, i32 0, i32 5
  store i32* %50, i32** %52, align 8
  br label %53

53:                                               ; preds = %49, %44
  %54 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %8, align 8
  %55 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %54, i32 0, i32 4
  %56 = load i32*, i32** %55, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load i32*, i32** @uvc_set_le_value, align 8
  %60 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %8, align 8
  %61 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %60, i32 0, i32 4
  store i32* %59, i32** %61, align 8
  br label %62

62:                                               ; preds = %58, %53
  %63 = load %struct.uvc_control*, %struct.uvc_control** %6, align 8
  %64 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %63, i32 0, i32 0
  %65 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %8, align 8
  %66 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %65, i32 0, i32 3
  store %struct.TYPE_2__* %64, %struct.TYPE_2__** %66, align 8
  %67 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %8, align 8
  %68 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %67, i32 0, i32 2
  %69 = load %struct.uvc_control*, %struct.uvc_control** %6, align 8
  %70 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  %72 = call i32 @list_add_tail(i32* %68, i32* %71)
  %73 = load i32, i32* @UVC_TRACE_CONTROL, align 4
  %74 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %8, align 8
  %75 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.uvc_control*, %struct.uvc_control** %6, align 8
  %78 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.uvc_control*, %struct.uvc_control** %6, align 8
  %82 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @uvc_trace(i32 %73, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %76, i32 %80, i32 %84)
  store i32 0, i32* %4, align 4
  br label %86

86:                                               ; preds = %62, %39, %16
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i8* @kmemdup(%struct.uvc_control_mapping*, i32, i32) #1

declare dso_local i32 @kfree(%struct.uvc_control_mapping*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @uvc_trace(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
