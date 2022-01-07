; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-io.c_pvr2_buffer_wipe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-io.c_pvr2_buffer_wipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_buffer = type { i64, i32 }

@pvr2_buffer_state_queued = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pvr2_buffer*)* @pvr2_buffer_wipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pvr2_buffer_wipe(%struct.pvr2_buffer* %0) #0 {
  %2 = alloca %struct.pvr2_buffer*, align 8
  store %struct.pvr2_buffer* %0, %struct.pvr2_buffer** %2, align 8
  %3 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %2, align 8
  %4 = getelementptr inbounds %struct.pvr2_buffer, %struct.pvr2_buffer* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @pvr2_buffer_state_queued, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %2, align 8
  %10 = getelementptr inbounds %struct.pvr2_buffer, %struct.pvr2_buffer* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @usb_kill_urb(i32 %11)
  br label %13

13:                                               ; preds = %8, %1
  ret void
}

declare dso_local i32 @usb_kill_urb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
