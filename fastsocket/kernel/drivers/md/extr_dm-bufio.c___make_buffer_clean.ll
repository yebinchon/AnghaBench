; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-bufio.c___make_buffer_clean.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-bufio.c___make_buffer_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_buffer = type { i32, i32 }

@B_READING = common dso_local global i32 0, align 4
@do_io_schedule = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@B_WRITING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_buffer*)* @__make_buffer_clean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__make_buffer_clean(%struct.dm_buffer* %0) #0 {
  %2 = alloca %struct.dm_buffer*, align 8
  store %struct.dm_buffer* %0, %struct.dm_buffer** %2, align 8
  %3 = load %struct.dm_buffer*, %struct.dm_buffer** %2, align 8
  %4 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @BUG_ON(i32 %5)
  %7 = load %struct.dm_buffer*, %struct.dm_buffer** %2, align 8
  %8 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %27

12:                                               ; preds = %1
  %13 = load %struct.dm_buffer*, %struct.dm_buffer** %2, align 8
  %14 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %13, i32 0, i32 0
  %15 = load i32, i32* @B_READING, align 4
  %16 = load i32, i32* @do_io_schedule, align 4
  %17 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %18 = call i32 @wait_on_bit(i32* %14, i32 %15, i32 %16, i32 %17)
  %19 = load %struct.dm_buffer*, %struct.dm_buffer** %2, align 8
  %20 = call i32 @__write_dirty_buffer(%struct.dm_buffer* %19, i32* null)
  %21 = load %struct.dm_buffer*, %struct.dm_buffer** %2, align 8
  %22 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %21, i32 0, i32 0
  %23 = load i32, i32* @B_WRITING, align 4
  %24 = load i32, i32* @do_io_schedule, align 4
  %25 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %26 = call i32 @wait_on_bit(i32* %22, i32 %23, i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @wait_on_bit(i32*, i32, i32, i32) #1

declare dso_local i32 @__write_dirty_buffer(%struct.dm_buffer*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
