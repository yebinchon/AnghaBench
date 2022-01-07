; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-cards.c_cx231xx_usb_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-cards.c_cx231xx_usb_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.cx231xx = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__, i64, i32, i32, i32, i32, i64, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.cx231xx* }
%struct.TYPE_7__ = type { %struct.cx231xx* }
%struct.TYPE_6__ = type { %struct.cx231xx* }
%struct.TYPE_5__ = type { %struct.cx231xx* }

@.str = private unnamed_addr constant [82 x i8] c"device %s is open! Deregistration and memory deallocation are deferred on close.\0A\00", align 1
@DEV_MISCONFIGURED = common dso_local global i32 0, align 4
@DEV_DISCONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @cx231xx_usb_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx231xx_usb_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.cx231xx*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %4 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %5 = call %struct.cx231xx* @usb_get_intfdata(%struct.usb_interface* %4)
  store %struct.cx231xx* %5, %struct.cx231xx** %3, align 8
  %6 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %7 = call i32 @usb_set_intfdata(%struct.usb_interface* %6, i32* null)
  %8 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %9 = icmp ne %struct.cx231xx* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %105

11:                                               ; preds = %1
  %12 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %13 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %12, i32 0, i32 13
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  br label %105

17:                                               ; preds = %11
  %18 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %19 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %18, i32 0, i32 12
  %20 = call i32 @v4l2_device_unregister(i32* %19)
  %21 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %22 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %21, i32 0, i32 5
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %25 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %24, i32 0, i32 11
  %26 = call i32 @wake_up_interruptible_all(i32* %25)
  %27 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %28 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %64

31:                                               ; preds = %17
  %32 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %33 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %32, i32 0, i32 10
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @video_device_node_name(i32 %34)
  %36 = call i32 @cx231xx_warn(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @DEV_MISCONFIGURED, align 4
  %38 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %39 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %43 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %42, i32 0, i32 9
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %31
  %47 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %48 = call i32 @cx231xx_uninit_isoc(%struct.cx231xx* %47)
  br label %52

49:                                               ; preds = %31
  %50 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %51 = call i32 @cx231xx_uninit_bulk(%struct.cx231xx* %50)
  br label %52

52:                                               ; preds = %49, %46
  %53 = load i32, i32* @DEV_DISCONNECTED, align 4
  %54 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %55 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  %58 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %59 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %58, i32 0, i32 8
  %60 = call i32 @wake_up_interruptible(i32* %59)
  %61 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %62 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %61, i32 0, i32 7
  %63 = call i32 @wake_up_interruptible(i32* %62)
  br label %72

64:                                               ; preds = %17
  %65 = load i32, i32* @DEV_DISCONNECTED, align 4
  %66 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %67 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 4
  %70 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %71 = call i32 @cx231xx_release_resources(%struct.cx231xx* %70)
  br label %72

72:                                               ; preds = %64, %52
  %73 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %74 = call i32 @cx231xx_close_extension(%struct.cx231xx* %73)
  %75 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %76 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %75, i32 0, i32 5
  %77 = call i32 @mutex_unlock(i32* %76)
  %78 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %79 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %78, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %105, label %82

82:                                               ; preds = %72
  %83 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %84 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load %struct.cx231xx*, %struct.cx231xx** %85, align 8
  %87 = call i32 @kfree(%struct.cx231xx* %86)
  %88 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %89 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load %struct.cx231xx*, %struct.cx231xx** %90, align 8
  %92 = call i32 @kfree(%struct.cx231xx* %91)
  %93 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %94 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load %struct.cx231xx*, %struct.cx231xx** %95, align 8
  %97 = call i32 @kfree(%struct.cx231xx* %96)
  %98 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %99 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load %struct.cx231xx*, %struct.cx231xx** %100, align 8
  %102 = call i32 @kfree(%struct.cx231xx* %101)
  %103 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %104 = call i32 @kfree(%struct.cx231xx* %103)
  store %struct.cx231xx* null, %struct.cx231xx** %3, align 8
  br label %105

105:                                              ; preds = %10, %16, %82, %72
  ret void
}

declare dso_local %struct.cx231xx* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @v4l2_device_unregister(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wake_up_interruptible_all(i32*) #1

declare dso_local i32 @cx231xx_warn(i8*, i32) #1

declare dso_local i32 @video_device_node_name(i32) #1

declare dso_local i32 @cx231xx_uninit_isoc(%struct.cx231xx*) #1

declare dso_local i32 @cx231xx_uninit_bulk(%struct.cx231xx*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @cx231xx_release_resources(%struct.cx231xx*) #1

declare dso_local i32 @cx231xx_close_extension(%struct.cx231xx*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.cx231xx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
