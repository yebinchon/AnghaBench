; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-bufio.c___unlink_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-bufio.c___unlink_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_buffer = type { i64, i32, i32, %struct.dm_bufio_client* }
%struct.dm_bufio_client = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_buffer*)* @__unlink_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__unlink_buffer(%struct.dm_buffer* %0) #0 {
  %2 = alloca %struct.dm_buffer*, align 8
  %3 = alloca %struct.dm_bufio_client*, align 8
  store %struct.dm_buffer* %0, %struct.dm_buffer** %2, align 8
  %4 = load %struct.dm_buffer*, %struct.dm_buffer** %2, align 8
  %5 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %4, i32 0, i32 3
  %6 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %5, align 8
  store %struct.dm_bufio_client* %6, %struct.dm_bufio_client** %3, align 8
  %7 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %3, align 8
  %8 = getelementptr inbounds %struct.dm_bufio_client, %struct.dm_bufio_client* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = load %struct.dm_buffer*, %struct.dm_buffer** %2, align 8
  %11 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds i32, i32* %9, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %3, align 8
  %20 = getelementptr inbounds %struct.dm_bufio_client, %struct.dm_bufio_client* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.dm_buffer*, %struct.dm_buffer** %2, align 8
  %23 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %25, align 4
  %28 = load %struct.dm_buffer*, %struct.dm_buffer** %2, align 8
  %29 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %28, i32 0, i32 2
  %30 = call i32 @hlist_del(i32* %29)
  %31 = load %struct.dm_buffer*, %struct.dm_buffer** %2, align 8
  %32 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %31, i32 0, i32 1
  %33 = call i32 @list_del(i32* %32)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @hlist_del(i32*) #1

declare dso_local i32 @list_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
