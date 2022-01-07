; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-bufio.c_dm_bufio_mark_buffer_dirty.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-bufio.c_dm_bufio_mark_buffer_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_buffer = type { i32, %struct.dm_bufio_client* }
%struct.dm_bufio_client = type { i32 }

@B_READING = common dso_local global i32 0, align 4
@B_DIRTY = common dso_local global i32 0, align 4
@LIST_DIRTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dm_bufio_mark_buffer_dirty(%struct.dm_buffer* %0) #0 {
  %2 = alloca %struct.dm_buffer*, align 8
  %3 = alloca %struct.dm_bufio_client*, align 8
  store %struct.dm_buffer* %0, %struct.dm_buffer** %2, align 8
  %4 = load %struct.dm_buffer*, %struct.dm_buffer** %2, align 8
  %5 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %4, i32 0, i32 1
  %6 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %5, align 8
  store %struct.dm_bufio_client* %6, %struct.dm_bufio_client** %3, align 8
  %7 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %3, align 8
  %8 = call i32 @dm_bufio_lock(%struct.dm_bufio_client* %7)
  %9 = load i32, i32* @B_READING, align 4
  %10 = load %struct.dm_buffer*, %struct.dm_buffer** %2, align 8
  %11 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %10, i32 0, i32 0
  %12 = call i32 @test_bit(i32 %9, i32* %11)
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load i32, i32* @B_DIRTY, align 4
  %15 = load %struct.dm_buffer*, %struct.dm_buffer** %2, align 8
  %16 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %15, i32 0, i32 0
  %17 = call i32 @test_and_set_bit(i32 %14, i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %1
  %20 = load %struct.dm_buffer*, %struct.dm_buffer** %2, align 8
  %21 = load i32, i32* @LIST_DIRTY, align 4
  %22 = call i32 @__relink_lru(%struct.dm_buffer* %20, i32 %21)
  br label %23

23:                                               ; preds = %19, %1
  %24 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %3, align 8
  %25 = call i32 @dm_bufio_unlock(%struct.dm_bufio_client* %24)
  ret void
}

declare dso_local i32 @dm_bufio_lock(%struct.dm_bufio_client*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @__relink_lru(%struct.dm_buffer*, i32) #1

declare dso_local i32 @dm_bufio_unlock(%struct.dm_bufio_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
