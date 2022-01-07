; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_tgt_if.c_tgt_uspace_send_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_tgt_if.c_tgt_uspace_send_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tgt_ring = type { i32, i32 }
%struct.tgt_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@tx_ring = common dso_local global %struct.tgt_ring zeroinitializer, align 4
@BUSY = common dso_local global i32 0, align 4
@tgt_poll_wait = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.tgt_event*)* @tgt_uspace_send_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tgt_uspace_send_event(i32 %0, %struct.tgt_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.tgt_event*, align 8
  %6 = alloca %struct.tgt_event*, align 8
  %7 = alloca %struct.tgt_ring*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.tgt_event* %1, %struct.tgt_event** %5, align 8
  store %struct.tgt_ring* @tx_ring, %struct.tgt_ring** %7, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.tgt_ring*, %struct.tgt_ring** %7, align 8
  %11 = getelementptr inbounds %struct.tgt_ring, %struct.tgt_ring* %10, i32 0, i32 0
  %12 = load i64, i64* %8, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.tgt_ring*, %struct.tgt_ring** %7, align 8
  %15 = load %struct.tgt_ring*, %struct.tgt_ring** %7, align 8
  %16 = getelementptr inbounds %struct.tgt_ring, %struct.tgt_ring* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.tgt_event* @tgt_head_event(%struct.tgt_ring* %14, i32 %17)
  store %struct.tgt_event* %18, %struct.tgt_event** %6, align 8
  %19 = load %struct.tgt_event*, %struct.tgt_event** %6, align 8
  %20 = getelementptr inbounds %struct.tgt_event, %struct.tgt_event* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load %struct.tgt_ring*, %struct.tgt_ring** %7, align 8
  %26 = call i32 @tgt_ring_idx_inc(%struct.tgt_ring* %25)
  br label %30

27:                                               ; preds = %2
  %28 = load i32, i32* @BUSY, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %9, align 4
  br label %30

30:                                               ; preds = %27, %24
  %31 = load %struct.tgt_ring*, %struct.tgt_ring** %7, align 8
  %32 = getelementptr inbounds %struct.tgt_ring, %struct.tgt_ring* %31, i32 0, i32 0
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %3, align 4
  br label %55

39:                                               ; preds = %30
  %40 = load %struct.tgt_event*, %struct.tgt_event** %6, align 8
  %41 = load %struct.tgt_event*, %struct.tgt_event** %5, align 8
  %42 = call i32 @memcpy(%struct.tgt_event* %40, %struct.tgt_event* %41, i32 8)
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.tgt_event*, %struct.tgt_event** %6, align 8
  %45 = getelementptr inbounds %struct.tgt_event, %struct.tgt_event* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  store i32 %43, i32* %46, align 4
  %47 = call i32 (...) @mb()
  %48 = load %struct.tgt_event*, %struct.tgt_event** %6, align 8
  %49 = getelementptr inbounds %struct.tgt_event, %struct.tgt_event* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i32 1, i32* %50, align 4
  %51 = load %struct.tgt_event*, %struct.tgt_event** %6, align 8
  %52 = call i32 @virt_to_page(%struct.tgt_event* %51)
  %53 = call i32 @flush_dcache_page(i32 %52)
  %54 = call i32 @wake_up_interruptible(i32* @tgt_poll_wait)
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %39, %37
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.tgt_event* @tgt_head_event(%struct.tgt_ring*, i32) #1

declare dso_local i32 @tgt_ring_idx_inc(%struct.tgt_ring*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @memcpy(%struct.tgt_event*, %struct.tgt_event*, i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @flush_dcache_page(i32) #1

declare dso_local i32 @virt_to_page(%struct.tgt_event*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
