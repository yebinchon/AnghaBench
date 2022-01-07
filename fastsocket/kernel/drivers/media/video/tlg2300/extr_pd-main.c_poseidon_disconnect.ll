; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-main.c_poseidon_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-main.c_poseidon_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.poseidon = type { i32, i32, i32, i32, i32 }

@POSEIDON_STATE_DISCONNECT = common dso_local global i32 0, align 4
@poseidon_delete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @poseidon_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @poseidon_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.poseidon*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %4 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %5 = call %struct.poseidon* @get_pd(%struct.usb_interface* %4)
  store %struct.poseidon* %5, %struct.poseidon** %3, align 8
  %6 = load %struct.poseidon*, %struct.poseidon** %3, align 8
  %7 = icmp ne %struct.poseidon* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %50

9:                                                ; preds = %1
  %10 = load %struct.poseidon*, %struct.poseidon** %3, align 8
  %11 = call i32 @logpm(%struct.poseidon* %10)
  %12 = load %struct.poseidon*, %struct.poseidon** %3, align 8
  %13 = call i64 @in_hibernation(%struct.poseidon* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  br label %50

16:                                               ; preds = %9
  %17 = load %struct.poseidon*, %struct.poseidon** %3, align 8
  %18 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %17, i32 0, i32 3
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load i32, i32* @POSEIDON_STATE_DISCONNECT, align 4
  %21 = load %struct.poseidon*, %struct.poseidon** %3, align 8
  %22 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load %struct.poseidon*, %struct.poseidon** %3, align 8
  %26 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %25, i32 0, i32 3
  %27 = call i32 @mutex_unlock(i32* %26)
  %28 = load %struct.poseidon*, %struct.poseidon** %3, align 8
  %29 = call i32 @stop_all_video_stream(%struct.poseidon* %28)
  %30 = load %struct.poseidon*, %struct.poseidon** %3, align 8
  %31 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %30, i32 0, i32 2
  %32 = call i32 @dvb_stop_streaming(i32* %31)
  %33 = load %struct.poseidon*, %struct.poseidon** %3, align 8
  %34 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %33, i32 0, i32 1
  %35 = call i32 @v4l2_device_unregister(i32* %34)
  %36 = load %struct.poseidon*, %struct.poseidon** %3, align 8
  %37 = call i32 @pd_dvb_usb_device_exit(%struct.poseidon* %36)
  %38 = load %struct.poseidon*, %struct.poseidon** %3, align 8
  %39 = call i32 @poseidon_fm_exit(%struct.poseidon* %38)
  %40 = load %struct.poseidon*, %struct.poseidon** %3, align 8
  %41 = call i32 @poseidon_audio_free(%struct.poseidon* %40)
  %42 = load %struct.poseidon*, %struct.poseidon** %3, align 8
  %43 = call i32 @pd_video_exit(%struct.poseidon* %42)
  %44 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %45 = call i32 @usb_set_intfdata(%struct.usb_interface* %44, i32* null)
  %46 = load %struct.poseidon*, %struct.poseidon** %3, align 8
  %47 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %46, i32 0, i32 0
  %48 = load i32, i32* @poseidon_delete, align 4
  %49 = call i32 @kref_put(i32* %47, i32 %48)
  br label %50

50:                                               ; preds = %16, %15, %8
  ret void
}

declare dso_local %struct.poseidon* @get_pd(%struct.usb_interface*) #1

declare dso_local i32 @logpm(%struct.poseidon*) #1

declare dso_local i64 @in_hibernation(%struct.poseidon*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @stop_all_video_stream(%struct.poseidon*) #1

declare dso_local i32 @dvb_stop_streaming(i32*) #1

declare dso_local i32 @v4l2_device_unregister(i32*) #1

declare dso_local i32 @pd_dvb_usb_device_exit(%struct.poseidon*) #1

declare dso_local i32 @poseidon_fm_exit(%struct.poseidon*) #1

declare dso_local i32 @poseidon_audio_free(%struct.poseidon*) #1

declare dso_local i32 @pd_video_exit(%struct.poseidon*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
