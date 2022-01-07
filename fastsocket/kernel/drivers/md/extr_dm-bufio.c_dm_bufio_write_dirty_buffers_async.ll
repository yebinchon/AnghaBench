; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-bufio.c_dm_bufio_write_dirty_buffers_async.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-bufio.c_dm_bufio_write_dirty_buffers_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_bufio_client = type { i32 }

@write_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dm_bufio_write_dirty_buffers_async(%struct.dm_bufio_client* %0) #0 {
  %2 = alloca %struct.dm_bufio_client*, align 8
  store %struct.dm_bufio_client* %0, %struct.dm_bufio_client** %2, align 8
  %3 = load i32, i32* @write_list, align 4
  %4 = call i32 @LIST_HEAD(i32 %3)
  %5 = call i32 (...) @dm_bufio_in_request()
  %6 = call i32 @BUG_ON(i32 %5)
  %7 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %2, align 8
  %8 = call i32 @dm_bufio_lock(%struct.dm_bufio_client* %7)
  %9 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %2, align 8
  %10 = call i32 @__write_dirty_buffers_async(%struct.dm_bufio_client* %9, i32 0, i32* @write_list)
  %11 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %2, align 8
  %12 = call i32 @dm_bufio_unlock(%struct.dm_bufio_client* %11)
  %13 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %2, align 8
  %14 = call i32 @__flush_write_list(i32* @write_list, %struct.dm_bufio_client* %13)
  ret void
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dm_bufio_in_request(...) #1

declare dso_local i32 @dm_bufio_lock(%struct.dm_bufio_client*) #1

declare dso_local i32 @__write_dirty_buffers_async(%struct.dm_bufio_client*, i32, i32*) #1

declare dso_local i32 @dm_bufio_unlock(%struct.dm_bufio_client*) #1

declare dso_local i32 @__flush_write_list(i32*, %struct.dm_bufio_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
