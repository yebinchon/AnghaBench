; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/hdpvr/extr_hdpvr-core.c_hdpvr_delete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/hdpvr/extr_hdpvr-core.c_hdpvr_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdpvr_device = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hdpvr_delete(%struct.hdpvr_device* %0) #0 {
  %2 = alloca %struct.hdpvr_device*, align 8
  store %struct.hdpvr_device* %0, %struct.hdpvr_device** %2, align 8
  %3 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %4 = call i32 @hdpvr_free_buffers(%struct.hdpvr_device* %3)
  %5 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %6 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %11 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @video_device_release(i64 %12)
  br label %14

14:                                               ; preds = %9, %1
  %15 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %16 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @usb_put_dev(i32 %17)
  ret void
}

declare dso_local i32 @hdpvr_free_buffers(%struct.hdpvr_device*) #1

declare dso_local i32 @video_device_release(i64) #1

declare dso_local i32 @usb_put_dev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
