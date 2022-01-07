; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-cards.c_em28xx_usb_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-cards.c_em28xx_usb_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.em28xx = type { %struct.em28xx*, i64, i32, i32, i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"disconnecting %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [82 x i8] c"device %s is open! Deregistration and memory deallocation are deferred on close.\0A\00", align 1
@DEV_MISCONFIGURED = common dso_local global i32 0, align 4
@DEV_DISCONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @em28xx_usb_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @em28xx_usb_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.em28xx*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %4 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %5 = call %struct.em28xx* @usb_get_intfdata(%struct.usb_interface* %4)
  store %struct.em28xx* %5, %struct.em28xx** %3, align 8
  %6 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %7 = call i32 @usb_set_intfdata(%struct.usb_interface* %6, i32* null)
  %8 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %9 = icmp ne %struct.em28xx* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %80

11:                                               ; preds = %1
  %12 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %13 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %12, i32 0, i32 6
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @em28xx_info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %19 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %18, i32 0, i32 2
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %22 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %21, i32 0, i32 8
  %23 = call i32 @wake_up_interruptible_all(i32* %22)
  %24 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %25 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %24, i32 0, i32 7
  %26 = call i32 @v4l2_device_disconnect(i32* %25)
  %27 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %28 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %55

31:                                               ; preds = %11
  %32 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %33 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %32, i32 0, i32 6
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = call i32 @video_device_node_name(%struct.TYPE_2__* %34)
  %36 = call i32 @em28xx_warn(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @DEV_MISCONFIGURED, align 4
  %38 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %39 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %43 = call i32 @em28xx_uninit_isoc(%struct.em28xx* %42)
  %44 = load i32, i32* @DEV_DISCONNECTED, align 4
  %45 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %46 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  %49 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %50 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %49, i32 0, i32 5
  %51 = call i32 @wake_up_interruptible(i32* %50)
  %52 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %53 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %52, i32 0, i32 4
  %54 = call i32 @wake_up_interruptible(i32* %53)
  br label %63

55:                                               ; preds = %11
  %56 = load i32, i32* @DEV_DISCONNECTED, align 4
  %57 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %58 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  %61 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %62 = call i32 @em28xx_release_resources(%struct.em28xx* %61)
  br label %63

63:                                               ; preds = %55, %31
  %64 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %65 = call i32 @em28xx_close_extension(%struct.em28xx* %64)
  %66 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %67 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %66, i32 0, i32 2
  %68 = call i32 @mutex_unlock(i32* %67)
  %69 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %70 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %63
  %74 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %75 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %74, i32 0, i32 0
  %76 = load %struct.em28xx*, %struct.em28xx** %75, align 8
  %77 = call i32 @kfree(%struct.em28xx* %76)
  %78 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %79 = call i32 @kfree(%struct.em28xx* %78)
  br label %80

80:                                               ; preds = %10, %73, %63
  ret void
}

declare dso_local %struct.em28xx* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @em28xx_info(i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wake_up_interruptible_all(i32*) #1

declare dso_local i32 @v4l2_device_disconnect(i32*) #1

declare dso_local i32 @em28xx_warn(i8*, i32) #1

declare dso_local i32 @video_device_node_name(%struct.TYPE_2__*) #1

declare dso_local i32 @em28xx_uninit_isoc(%struct.em28xx*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @em28xx_release_resources(%struct.em28xx*) #1

declare dso_local i32 @em28xx_close_extension(%struct.em28xx*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.em28xx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
