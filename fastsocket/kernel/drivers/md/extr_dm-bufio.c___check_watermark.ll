; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-bufio.c___check_watermark.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-bufio.c___check_watermark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_bufio_client = type { i64* }
%struct.list_head = type { i32 }
%struct.dm_buffer = type { i32 }

@LIST_CLEAN = common dso_local global i64 0, align 8
@LIST_DIRTY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_bufio_client*, %struct.list_head*)* @__check_watermark to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__check_watermark(%struct.dm_bufio_client* %0, %struct.list_head* %1) #0 {
  %3 = alloca %struct.dm_bufio_client*, align 8
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.dm_buffer*, align 8
  store %struct.dm_bufio_client* %0, %struct.dm_bufio_client** %3, align 8
  store %struct.list_head* %1, %struct.list_head** %4, align 8
  %8 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %3, align 8
  %9 = call i32 @__get_memory_limit(%struct.dm_bufio_client* %8, i64* %5, i64* %6)
  br label %10

10:                                               ; preds = %32, %2
  %11 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %3, align 8
  %12 = getelementptr inbounds %struct.dm_bufio_client, %struct.dm_bufio_client* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = load i64, i64* @LIST_CLEAN, align 8
  %15 = getelementptr inbounds i64, i64* %13, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %3, align 8
  %18 = getelementptr inbounds %struct.dm_bufio_client, %struct.dm_bufio_client* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = load i64, i64* @LIST_DIRTY, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = add i64 %16, %22
  %24 = load i64, i64* %6, align 8
  %25 = icmp ugt i64 %23, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %10
  %27 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %3, align 8
  %28 = call %struct.dm_buffer* @__get_unclaimed_buffer(%struct.dm_bufio_client* %27)
  store %struct.dm_buffer* %28, %struct.dm_buffer** %7, align 8
  %29 = load %struct.dm_buffer*, %struct.dm_buffer** %7, align 8
  %30 = icmp ne %struct.dm_buffer* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  br label %49

32:                                               ; preds = %26
  %33 = load %struct.dm_buffer*, %struct.dm_buffer** %7, align 8
  %34 = call i32 @__free_buffer_wake(%struct.dm_buffer* %33)
  %35 = call i32 (...) @dm_bufio_cond_resched()
  br label %10

36:                                               ; preds = %10
  %37 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %3, align 8
  %38 = getelementptr inbounds %struct.dm_bufio_client, %struct.dm_bufio_client* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = load i64, i64* @LIST_DIRTY, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %5, align 8
  %44 = icmp ugt i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %36
  %46 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %3, align 8
  %47 = load %struct.list_head*, %struct.list_head** %4, align 8
  %48 = call i32 @__write_dirty_buffers_async(%struct.dm_bufio_client* %46, i32 1, %struct.list_head* %47)
  br label %49

49:                                               ; preds = %31, %45, %36
  ret void
}

declare dso_local i32 @__get_memory_limit(%struct.dm_bufio_client*, i64*, i64*) #1

declare dso_local %struct.dm_buffer* @__get_unclaimed_buffer(%struct.dm_bufio_client*) #1

declare dso_local i32 @__free_buffer_wake(%struct.dm_buffer*) #1

declare dso_local i32 @dm_bufio_cond_resched(...) #1

declare dso_local i32 @__write_dirty_buffers_async(%struct.dm_bufio_client*, i32, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
