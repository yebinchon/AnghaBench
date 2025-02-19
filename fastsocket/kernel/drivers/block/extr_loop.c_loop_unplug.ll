; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_loop.c_loop_unplug.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_loop.c_loop_unplug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { %struct.loop_device* }
%struct.loop_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@QUEUE_FLAG_PLUGGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request_queue*)* @loop_unplug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @loop_unplug(%struct.request_queue* %0) #0 {
  %2 = alloca %struct.request_queue*, align 8
  %3 = alloca %struct.loop_device*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %2, align 8
  %4 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %5 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %4, i32 0, i32 0
  %6 = load %struct.loop_device*, %struct.loop_device** %5, align 8
  store %struct.loop_device* %6, %struct.loop_device** %3, align 8
  %7 = load i32, i32* @QUEUE_FLAG_PLUGGED, align 4
  %8 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %9 = call i32 @queue_flag_clear_unlocked(i32 %7, %struct.request_queue* %8)
  %10 = load %struct.loop_device*, %struct.loop_device** %3, align 8
  %11 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @blk_run_address_space(i32 %14)
  ret void
}

declare dso_local i32 @queue_flag_clear_unlocked(i32, %struct.request_queue*) #1

declare dso_local i32 @blk_run_address_space(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
