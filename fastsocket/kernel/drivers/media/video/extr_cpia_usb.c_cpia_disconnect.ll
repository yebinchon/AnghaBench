; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cpia_usb.c_cpia_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cpia_usb.c_cpia_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.cam_data = type { i32*, i32 }
%struct.usb_cpia = type { i32**, i32*, %struct.TYPE_2__*, i32, i64, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.usb_device = type { i32 }

@cam_list_lock_usb = common dso_local global i32 0, align 4
@FRAME_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @cpia_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpia_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.cam_data*, align 8
  %4 = alloca %struct.usb_cpia*, align 8
  %5 = alloca %struct.usb_device*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %6 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %7 = call %struct.cam_data* @usb_get_intfdata(%struct.usb_interface* %6)
  store %struct.cam_data* %7, %struct.cam_data** %3, align 8
  %8 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %9 = call i32 @usb_set_intfdata(%struct.usb_interface* %8, i32* null)
  %10 = load %struct.cam_data*, %struct.cam_data** %3, align 8
  %11 = icmp ne %struct.cam_data* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %91

13:                                               ; preds = %1
  %14 = load %struct.cam_data*, %struct.cam_data** %3, align 8
  %15 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = bitcast i32* %16 to %struct.usb_cpia*
  store %struct.usb_cpia* %17, %struct.usb_cpia** %4, align 8
  %18 = call i32 @spin_lock(i32* @cam_list_lock_usb)
  %19 = load %struct.cam_data*, %struct.cam_data** %3, align 8
  %20 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %19, i32 0, i32 1
  %21 = call i32 @list_del(i32* %20)
  %22 = call i32 @spin_unlock(i32* @cam_list_lock_usb)
  %23 = load %struct.usb_cpia*, %struct.usb_cpia** %4, align 8
  %24 = getelementptr inbounds %struct.usb_cpia, %struct.usb_cpia* %23, i32 0, i32 5
  store i64 0, i64* %24, align 8
  %25 = load %struct.cam_data*, %struct.cam_data** %3, align 8
  %26 = call i32 @cpia_unregister_camera(%struct.cam_data* %25)
  %27 = load %struct.usb_cpia*, %struct.usb_cpia** %4, align 8
  %28 = getelementptr inbounds %struct.usb_cpia, %struct.usb_cpia* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %13
  %32 = load %struct.cam_data*, %struct.cam_data** %3, align 8
  %33 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @cpia_usb_close(i32* %34)
  br label %36

36:                                               ; preds = %31, %13
  %37 = load i32, i32* @FRAME_ERROR, align 4
  %38 = load %struct.usb_cpia*, %struct.usb_cpia** %4, align 8
  %39 = getelementptr inbounds %struct.usb_cpia, %struct.usb_cpia* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32 %37, i32* %41, align 4
  %42 = load %struct.usb_cpia*, %struct.usb_cpia** %4, align 8
  %43 = getelementptr inbounds %struct.usb_cpia, %struct.usb_cpia* %42, i32 0, i32 3
  %44 = call i64 @waitqueue_active(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %36
  %47 = load %struct.usb_cpia*, %struct.usb_cpia** %4, align 8
  %48 = getelementptr inbounds %struct.usb_cpia, %struct.usb_cpia* %47, i32 0, i32 3
  %49 = call i32 @wake_up_interruptible(i32* %48)
  br label %50

50:                                               ; preds = %46, %36
  %51 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %52 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %51)
  store %struct.usb_device* %52, %struct.usb_device** %5, align 8
  %53 = load %struct.usb_cpia*, %struct.usb_cpia** %4, align 8
  %54 = getelementptr inbounds %struct.usb_cpia, %struct.usb_cpia* %53, i32 0, i32 1
  store i32* null, i32** %54, align 8
  %55 = load %struct.usb_cpia*, %struct.usb_cpia** %4, align 8
  %56 = getelementptr inbounds %struct.usb_cpia, %struct.usb_cpia* %55, i32 0, i32 2
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %56, align 8
  %57 = load %struct.usb_cpia*, %struct.usb_cpia** %4, align 8
  %58 = getelementptr inbounds %struct.usb_cpia, %struct.usb_cpia* %57, i32 0, i32 0
  %59 = load i32**, i32*** %58, align 8
  %60 = getelementptr inbounds i32*, i32** %59, i64 2
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @vfree(i32* %61)
  %63 = load %struct.usb_cpia*, %struct.usb_cpia** %4, align 8
  %64 = getelementptr inbounds %struct.usb_cpia, %struct.usb_cpia* %63, i32 0, i32 0
  %65 = load i32**, i32*** %64, align 8
  %66 = getelementptr inbounds i32*, i32** %65, i64 2
  store i32* null, i32** %66, align 8
  %67 = load %struct.usb_cpia*, %struct.usb_cpia** %4, align 8
  %68 = getelementptr inbounds %struct.usb_cpia, %struct.usb_cpia* %67, i32 0, i32 0
  %69 = load i32**, i32*** %68, align 8
  %70 = getelementptr inbounds i32*, i32** %69, i64 1
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @vfree(i32* %71)
  %73 = load %struct.usb_cpia*, %struct.usb_cpia** %4, align 8
  %74 = getelementptr inbounds %struct.usb_cpia, %struct.usb_cpia* %73, i32 0, i32 0
  %75 = load i32**, i32*** %74, align 8
  %76 = getelementptr inbounds i32*, i32** %75, i64 1
  store i32* null, i32** %76, align 8
  %77 = load %struct.usb_cpia*, %struct.usb_cpia** %4, align 8
  %78 = getelementptr inbounds %struct.usb_cpia, %struct.usb_cpia* %77, i32 0, i32 0
  %79 = load i32**, i32*** %78, align 8
  %80 = getelementptr inbounds i32*, i32** %79, i64 0
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @vfree(i32* %81)
  %83 = load %struct.usb_cpia*, %struct.usb_cpia** %4, align 8
  %84 = getelementptr inbounds %struct.usb_cpia, %struct.usb_cpia* %83, i32 0, i32 0
  %85 = load i32**, i32*** %84, align 8
  %86 = getelementptr inbounds i32*, i32** %85, i64 0
  store i32* null, i32** %86, align 8
  %87 = load %struct.cam_data*, %struct.cam_data** %3, align 8
  %88 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %87, i32 0, i32 0
  store i32* null, i32** %88, align 8
  %89 = load %struct.usb_cpia*, %struct.usb_cpia** %4, align 8
  %90 = call i32 @kfree(%struct.usb_cpia* %89)
  br label %91

91:                                               ; preds = %50, %12
  ret void
}

declare dso_local %struct.cam_data* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @cpia_unregister_camera(%struct.cam_data*) #1

declare dso_local i32 @cpia_usb_close(i32*) #1

declare dso_local i64 @waitqueue_active(i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @vfree(i32*) #1

declare dso_local i32 @kfree(%struct.usb_cpia*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
