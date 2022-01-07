; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-cgroup.c_blkiocg_update_completion_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-cgroup.c_blkiocg_update_completion_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkio_group = type { i32, %struct.blkio_group_stats }
%struct.blkio_group_stats = type { i32* }

@BLKIO_STAT_SERVICE_TIME = common dso_local global i64 0, align 8
@BLKIO_STAT_WAIT_TIME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blkiocg_update_completion_stats(%struct.blkio_group* %0, i64 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.blkio_group*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.blkio_group_stats*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.blkio_group* %0, %struct.blkio_group** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = call i64 (...) @sched_clock()
  store i64 %14, i64* %13, align 8
  %15 = load %struct.blkio_group*, %struct.blkio_group** %6, align 8
  %16 = getelementptr inbounds %struct.blkio_group, %struct.blkio_group* %15, i32 0, i32 0
  %17 = load i64, i64* %12, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.blkio_group*, %struct.blkio_group** %6, align 8
  %20 = getelementptr inbounds %struct.blkio_group, %struct.blkio_group* %19, i32 0, i32 1
  store %struct.blkio_group_stats* %20, %struct.blkio_group_stats** %11, align 8
  %21 = load i64, i64* %13, align 8
  %22 = load i64, i64* %8, align 8
  %23 = call i64 @time_after64(i64 %21, i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %5
  %26 = load %struct.blkio_group_stats*, %struct.blkio_group_stats** %11, align 8
  %27 = getelementptr inbounds %struct.blkio_group_stats, %struct.blkio_group_stats* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* @BLKIO_STAT_SERVICE_TIME, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i64, i64* %13, align 8
  %33 = load i64, i64* %8, align 8
  %34 = sub i64 %32, %33
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @blkio_add_stat(i32 %31, i64 %34, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %25, %5
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* %7, align 8
  %41 = call i64 @time_after64(i64 %39, i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %38
  %44 = load %struct.blkio_group_stats*, %struct.blkio_group_stats** %11, align 8
  %45 = getelementptr inbounds %struct.blkio_group_stats, %struct.blkio_group_stats* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* @BLKIO_STAT_WAIT_TIME, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i64, i64* %8, align 8
  %51 = load i64, i64* %7, align 8
  %52 = sub i64 %50, %51
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @blkio_add_stat(i32 %49, i64 %52, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %43, %38
  %57 = load %struct.blkio_group*, %struct.blkio_group** %6, align 8
  %58 = getelementptr inbounds %struct.blkio_group, %struct.blkio_group* %57, i32 0, i32 0
  %59 = load i64, i64* %12, align 8
  %60 = call i32 @spin_unlock_irqrestore(i32* %58, i64 %59)
  ret void
}

declare dso_local i64 @sched_clock(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @time_after64(i64, i64) #1

declare dso_local i32 @blkio_add_stat(i32, i64, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
