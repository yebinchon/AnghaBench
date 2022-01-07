; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_tgt_if.c_tgt_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_tgt_if.c_tgt_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tgt_ring = type { i32, i32 }
%struct.file = type { i32 }
%struct.poll_table_struct = type { i32 }
%struct.tgt_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@tx_ring = common dso_local global %struct.tgt_ring zeroinitializer, align 4
@tgt_poll_wait = common dso_local global i32 0, align 4
@TGT_MAX_EVENTS = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.poll_table_struct*)* @tgt_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tgt_poll(%struct.file* %0, %struct.poll_table_struct* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.poll_table_struct*, align 8
  %5 = alloca %struct.tgt_event*, align 8
  %6 = alloca %struct.tgt_ring*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.poll_table_struct* %1, %struct.poll_table_struct** %4, align 8
  store %struct.tgt_ring* @tx_ring, %struct.tgt_ring** %6, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.file*, %struct.file** %3, align 8
  %11 = load %struct.poll_table_struct*, %struct.poll_table_struct** %4, align 8
  %12 = call i32 @poll_wait(%struct.file* %10, i32* @tgt_poll_wait, %struct.poll_table_struct* %11)
  %13 = load %struct.tgt_ring*, %struct.tgt_ring** %6, align 8
  %14 = getelementptr inbounds %struct.tgt_ring, %struct.tgt_ring* %13, i32 0, i32 1
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.tgt_ring*, %struct.tgt_ring** %6, align 8
  %18 = getelementptr inbounds %struct.tgt_ring, %struct.tgt_ring* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load %struct.tgt_ring*, %struct.tgt_ring** %6, align 8
  %23 = getelementptr inbounds %struct.tgt_ring, %struct.tgt_ring* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sub nsw i32 %24, 1
  br label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @TGT_MAX_EVENTS, align 4
  %28 = sub nsw i32 %27, 1
  br label %29

29:                                               ; preds = %26, %21
  %30 = phi i32 [ %25, %21 ], [ %28, %26 ]
  store i32 %30, i32* %9, align 4
  %31 = load %struct.tgt_ring*, %struct.tgt_ring** %6, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call %struct.tgt_event* @tgt_head_event(%struct.tgt_ring* %31, i32 %32)
  store %struct.tgt_event* %33, %struct.tgt_event** %5, align 8
  %34 = load %struct.tgt_event*, %struct.tgt_event** %5, align 8
  %35 = getelementptr inbounds %struct.tgt_event, %struct.tgt_event* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %29
  %40 = load i32, i32* @POLLIN, align 4
  %41 = load i32, i32* @POLLRDNORM, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* %8, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %39, %29
  %46 = load %struct.tgt_ring*, %struct.tgt_ring** %6, align 8
  %47 = getelementptr inbounds %struct.tgt_ring, %struct.tgt_ring* %46, i32 0, i32 1
  %48 = load i64, i64* %7, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  %50 = load i32, i32* %8, align 4
  ret i32 %50
}

declare dso_local i32 @poll_wait(%struct.file*, i32*, %struct.poll_table_struct*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.tgt_event* @tgt_head_event(%struct.tgt_ring*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
