; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-cgroup.c_blkiocg_update_io_add_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-cgroup.c_blkiocg_update_io_add_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkio_group = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@BLKIO_STAT_QUEUED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blkiocg_update_io_add_stats(%struct.blkio_group* %0, %struct.blkio_group* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.blkio_group*, align 8
  %6 = alloca %struct.blkio_group*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.blkio_group* %0, %struct.blkio_group** %5, align 8
  store %struct.blkio_group* %1, %struct.blkio_group** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.blkio_group*, %struct.blkio_group** %5, align 8
  %11 = getelementptr inbounds %struct.blkio_group, %struct.blkio_group* %10, i32 0, i32 0
  %12 = load i64, i64* %9, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.blkio_group*, %struct.blkio_group** %5, align 8
  %15 = getelementptr inbounds %struct.blkio_group, %struct.blkio_group* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i64, i64* @BLKIO_STAT_QUEUED, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @blkio_add_stat(i32 %20, i32 1, i32 %21, i32 %22)
  %24 = load %struct.blkio_group*, %struct.blkio_group** %5, align 8
  %25 = getelementptr inbounds %struct.blkio_group, %struct.blkio_group* %24, i32 0, i32 1
  %26 = call i32 @blkio_end_empty_time(%struct.TYPE_2__* %25)
  %27 = load %struct.blkio_group*, %struct.blkio_group** %5, align 8
  %28 = load %struct.blkio_group*, %struct.blkio_group** %6, align 8
  %29 = call i32 @blkio_set_start_group_wait_time(%struct.blkio_group* %27, %struct.blkio_group* %28)
  %30 = load %struct.blkio_group*, %struct.blkio_group** %5, align 8
  %31 = getelementptr inbounds %struct.blkio_group, %struct.blkio_group* %30, i32 0, i32 0
  %32 = load i64, i64* %9, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @blkio_add_stat(i32, i32, i32, i32) #1

declare dso_local i32 @blkio_end_empty_time(%struct.TYPE_2__*) #1

declare dso_local i32 @blkio_set_start_group_wait_time(%struct.blkio_group*, %struct.blkio_group*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
