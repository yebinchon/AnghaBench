; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/hdpvr/extr_hdpvr-video.c_hdpvr_read_bulk_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/hdpvr/extr_hdpvr-video.c_hdpvr_read_bulk_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i64 }
%struct.hdpvr_buffer = type { i32, %struct.hdpvr_device* }
%struct.hdpvr_device = type { i32 }

@BUFSTAT_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @hdpvr_read_bulk_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdpvr_read_bulk_callback(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.hdpvr_buffer*, align 8
  %4 = alloca %struct.hdpvr_device*, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %5 = load %struct.urb*, %struct.urb** %2, align 8
  %6 = getelementptr inbounds %struct.urb, %struct.urb* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.hdpvr_buffer*
  store %struct.hdpvr_buffer* %8, %struct.hdpvr_buffer** %3, align 8
  %9 = load %struct.hdpvr_buffer*, %struct.hdpvr_buffer** %3, align 8
  %10 = getelementptr inbounds %struct.hdpvr_buffer, %struct.hdpvr_buffer* %9, i32 0, i32 1
  %11 = load %struct.hdpvr_device*, %struct.hdpvr_device** %10, align 8
  store %struct.hdpvr_device* %11, %struct.hdpvr_device** %4, align 8
  %12 = load i32, i32* @BUFSTAT_READY, align 4
  %13 = load %struct.hdpvr_buffer*, %struct.hdpvr_buffer** %3, align 8
  %14 = getelementptr inbounds %struct.hdpvr_buffer, %struct.hdpvr_buffer* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.hdpvr_device*, %struct.hdpvr_device** %4, align 8
  %16 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %15, i32 0, i32 0
  %17 = call i32 @wake_up_interruptible(i32* %16)
  ret void
}

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
