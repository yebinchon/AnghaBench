; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd.c_dasd_flush_request_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd.c_dasd_flush_request_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_block = type { i32, i32 }
%struct.request = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dasd_block*)* @dasd_flush_request_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dasd_flush_request_queue(%struct.dasd_block* %0) #0 {
  %2 = alloca %struct.dasd_block*, align 8
  %3 = alloca %struct.request*, align 8
  store %struct.dasd_block* %0, %struct.dasd_block** %2, align 8
  %4 = load %struct.dasd_block*, %struct.dasd_block** %2, align 8
  %5 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %28

9:                                                ; preds = %1
  %10 = load %struct.dasd_block*, %struct.dasd_block** %2, align 8
  %11 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %10, i32 0, i32 0
  %12 = call i32 @spin_lock_irq(i32* %11)
  br label %13

13:                                               ; preds = %19, %9
  %14 = load %struct.dasd_block*, %struct.dasd_block** %2, align 8
  %15 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.request* @blk_fetch_request(i32 %16)
  store %struct.request* %17, %struct.request** %3, align 8
  %18 = icmp ne %struct.request* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = load %struct.request*, %struct.request** %3, align 8
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  %23 = call i32 @__blk_end_request_all(%struct.request* %20, i32 %22)
  br label %13

24:                                               ; preds = %13
  %25 = load %struct.dasd_block*, %struct.dasd_block** %2, align 8
  %26 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %25, i32 0, i32 0
  %27 = call i32 @spin_unlock_irq(i32* %26)
  br label %28

28:                                               ; preds = %24, %8
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local %struct.request* @blk_fetch_request(i32) #1

declare dso_local i32 @__blk_end_request_all(%struct.request*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
