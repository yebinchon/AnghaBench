; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-settings.c_blk_set_default_limits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-settings.c_blk_set_default_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue_limits = type { i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32 }

@BLK_MAX_SEGMENTS = common dso_local global i32 0, align 4
@BLK_SEG_BOUNDARY_MASK = common dso_local global i32 0, align 4
@BLK_MAX_SEGMENT_SIZE = common dso_local global i32 0, align 4
@BLK_SAFE_MAX_SECTORS = common dso_local global i32 0, align 4
@BLK_BOUNCE_ANY = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blk_set_default_limits(%struct.queue_limits* %0) #0 {
  %2 = alloca %struct.queue_limits*, align 8
  store %struct.queue_limits* %0, %struct.queue_limits** %2, align 8
  %3 = load i32, i32* @BLK_MAX_SEGMENTS, align 4
  %4 = load %struct.queue_limits*, %struct.queue_limits** %2, align 8
  %5 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %4, i32 0, i32 17
  store i32 %3, i32* %5, align 8
  %6 = load i32, i32* @BLK_SEG_BOUNDARY_MASK, align 4
  %7 = load %struct.queue_limits*, %struct.queue_limits** %2, align 8
  %8 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %7, i32 0, i32 16
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @BLK_MAX_SEGMENT_SIZE, align 4
  %10 = load %struct.queue_limits*, %struct.queue_limits** %2, align 8
  %11 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %10, i32 0, i32 15
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* @BLK_SAFE_MAX_SECTORS, align 4
  %13 = load %struct.queue_limits*, %struct.queue_limits** %2, align 8
  %14 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %13, i32 0, i32 13
  store i32 %12, i32* %14, align 8
  %15 = load %struct.queue_limits*, %struct.queue_limits** %2, align 8
  %16 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %15, i32 0, i32 14
  store i32 %12, i32* %16, align 4
  %17 = load %struct.queue_limits*, %struct.queue_limits** %2, align 8
  %18 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %17, i32 0, i32 12
  store i64 0, i64* %18, align 8
  %19 = load %struct.queue_limits*, %struct.queue_limits** %2, align 8
  %20 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %19, i32 0, i32 11
  store i64 0, i64* %20, align 8
  %21 = load %struct.queue_limits*, %struct.queue_limits** %2, align 8
  %22 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %21, i32 0, i32 10
  store i64 0, i64* %22, align 8
  %23 = load %struct.queue_limits*, %struct.queue_limits** %2, align 8
  %24 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %23, i32 0, i32 9
  store i64 0, i64* %24, align 8
  %25 = load %struct.queue_limits*, %struct.queue_limits** %2, align 8
  %26 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %25, i32 0, i32 8
  store i64 0, i64* %26, align 8
  %27 = load %struct.queue_limits*, %struct.queue_limits** %2, align 8
  %28 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %27, i32 0, i32 2
  store i32 512, i32* %28, align 8
  %29 = load %struct.queue_limits*, %struct.queue_limits** %2, align 8
  %30 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %29, i32 0, i32 1
  store i32 512, i32* %30, align 4
  %31 = load %struct.queue_limits*, %struct.queue_limits** %2, align 8
  %32 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %31, i32 0, i32 0
  store i32 512, i32* %32, align 8
  %33 = load i32, i32* @BLK_BOUNCE_ANY, align 4
  %34 = load i32, i32* @PAGE_SHIFT, align 4
  %35 = ashr i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = load %struct.queue_limits*, %struct.queue_limits** %2, align 8
  %38 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %37, i32 0, i32 3
  store i64 %36, i64* %38, align 8
  %39 = load %struct.queue_limits*, %struct.queue_limits** %2, align 8
  %40 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %39, i32 0, i32 7
  store i64 0, i64* %40, align 8
  %41 = load %struct.queue_limits*, %struct.queue_limits** %2, align 8
  %42 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %41, i32 0, i32 6
  store i64 0, i64* %42, align 8
  %43 = load %struct.queue_limits*, %struct.queue_limits** %2, align 8
  %44 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %43, i32 0, i32 5
  store i64 0, i64* %44, align 8
  %45 = load %struct.queue_limits*, %struct.queue_limits** %2, align 8
  %46 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %45, i32 0, i32 4
  store i64 0, i64* %46, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
