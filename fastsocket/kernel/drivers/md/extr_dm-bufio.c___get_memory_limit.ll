; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-bufio.c___get_memory_limit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-bufio.c___get_memory_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_bufio_client = type { i64 }

@dm_bufio_cache_size = common dso_local global i32 0, align 4
@dm_bufio_cache_size_latch = common dso_local global i64 0, align 8
@dm_bufio_clients_lock = common dso_local global i32 0, align 4
@dm_bufio_cache_size_per_client = common dso_local global i64 0, align 8
@SECTOR_SHIFT = common dso_local global i64 0, align 8
@DM_BUFIO_MIN_BUFFERS = common dso_local global i64 0, align 8
@DM_BUFIO_WRITEBACK_PERCENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_bufio_client*, i64*, i64*)* @__get_memory_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__get_memory_limit(%struct.dm_bufio_client* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.dm_bufio_client*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  store %struct.dm_bufio_client* %0, %struct.dm_bufio_client** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %8 = load i32, i32* @dm_bufio_cache_size, align 4
  %9 = call i64 @ACCESS_ONCE(i32 %8)
  %10 = load i64, i64* @dm_bufio_cache_size_latch, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = call i32 @mutex_lock(i32* @dm_bufio_clients_lock)
  %14 = call i32 (...) @__cache_size_refresh()
  %15 = call i32 @mutex_unlock(i32* @dm_bufio_clients_lock)
  br label %16

16:                                               ; preds = %12, %3
  %17 = load i64, i64* @dm_bufio_cache_size_per_client, align 8
  %18 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %4, align 8
  %19 = getelementptr inbounds %struct.dm_bufio_client, %struct.dm_bufio_client* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SECTOR_SHIFT, align 8
  %22 = add i64 %20, %21
  %23 = lshr i64 %17, %22
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @DM_BUFIO_MIN_BUFFERS, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %16
  %28 = load i64, i64* @DM_BUFIO_MIN_BUFFERS, align 8
  store i64 %28, i64* %7, align 8
  br label %29

29:                                               ; preds = %27, %16
  %30 = load i64, i64* %7, align 8
  %31 = load i64*, i64** %6, align 8
  store i64 %30, i64* %31, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* @DM_BUFIO_WRITEBACK_PERCENT, align 8
  %34 = mul i64 %32, %33
  %35 = udiv i64 %34, 100
  %36 = load i64*, i64** %5, align 8
  store i64 %35, i64* %36, align 8
  ret void
}

declare dso_local i64 @ACCESS_ONCE(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__cache_size_refresh(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
