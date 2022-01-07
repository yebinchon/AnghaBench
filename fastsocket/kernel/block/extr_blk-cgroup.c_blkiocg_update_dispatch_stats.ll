; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-cgroup.c_blkiocg_update_dispatch_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-cgroup.c_blkiocg_update_dispatch_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkio_group = type { i32 }
%struct.blkio_group_stats_cpu = type { i32, i32, i32* }

@BLKIO_STAT_CPU_SERVICED = common dso_local global i64 0, align 8
@BLKIO_STAT_CPU_SERVICE_BYTES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blkiocg_update_dispatch_stats(%struct.blkio_group* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.blkio_group*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.blkio_group_stats_cpu*, align 8
  %10 = alloca i64, align 8
  store %struct.blkio_group* %0, %struct.blkio_group** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @local_irq_save(i64 %11)
  %13 = load %struct.blkio_group*, %struct.blkio_group** %5, align 8
  %14 = getelementptr inbounds %struct.blkio_group, %struct.blkio_group* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.blkio_group_stats_cpu* @this_cpu_ptr(i32 %15)
  store %struct.blkio_group_stats_cpu* %16, %struct.blkio_group_stats_cpu** %9, align 8
  %17 = load %struct.blkio_group_stats_cpu*, %struct.blkio_group_stats_cpu** %9, align 8
  %18 = getelementptr inbounds %struct.blkio_group_stats_cpu, %struct.blkio_group_stats_cpu* %17, i32 0, i32 1
  %19 = call i32 @u64_stats_update_begin(i32* %18)
  %20 = load i32, i32* %6, align 4
  %21 = ashr i32 %20, 9
  %22 = load %struct.blkio_group_stats_cpu*, %struct.blkio_group_stats_cpu** %9, align 8
  %23 = getelementptr inbounds %struct.blkio_group_stats_cpu, %struct.blkio_group_stats_cpu* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, %21
  store i32 %25, i32* %23, align 8
  %26 = load %struct.blkio_group_stats_cpu*, %struct.blkio_group_stats_cpu** %9, align 8
  %27 = getelementptr inbounds %struct.blkio_group_stats_cpu, %struct.blkio_group_stats_cpu* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* @BLKIO_STAT_CPU_SERVICED, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @blkio_add_stat(i32 %31, i32 1, i32 %32, i32 %33)
  %35 = load %struct.blkio_group_stats_cpu*, %struct.blkio_group_stats_cpu** %9, align 8
  %36 = getelementptr inbounds %struct.blkio_group_stats_cpu, %struct.blkio_group_stats_cpu* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @BLKIO_STAT_CPU_SERVICE_BYTES, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @blkio_add_stat(i32 %40, i32 %41, i32 %42, i32 %43)
  %45 = load %struct.blkio_group_stats_cpu*, %struct.blkio_group_stats_cpu** %9, align 8
  %46 = getelementptr inbounds %struct.blkio_group_stats_cpu, %struct.blkio_group_stats_cpu* %45, i32 0, i32 1
  %47 = call i32 @u64_stats_update_end(i32* %46)
  %48 = load i64, i64* %10, align 8
  %49 = call i32 @local_irq_restore(i64 %48)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local %struct.blkio_group_stats_cpu* @this_cpu_ptr(i32) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @blkio_add_stat(i32, i32, i32, i32) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
