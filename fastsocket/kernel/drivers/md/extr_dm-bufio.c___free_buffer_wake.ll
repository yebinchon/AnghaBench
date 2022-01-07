; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-bufio.c___free_buffer_wake.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-bufio.c___free_buffer_wake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_buffer = type { i32, %struct.dm_bufio_client* }
%struct.dm_bufio_client = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_buffer*)* @__free_buffer_wake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__free_buffer_wake(%struct.dm_buffer* %0) #0 {
  %2 = alloca %struct.dm_buffer*, align 8
  %3 = alloca %struct.dm_bufio_client*, align 8
  store %struct.dm_buffer* %0, %struct.dm_buffer** %2, align 8
  %4 = load %struct.dm_buffer*, %struct.dm_buffer** %2, align 8
  %5 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %4, i32 0, i32 1
  %6 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %5, align 8
  store %struct.dm_bufio_client* %6, %struct.dm_bufio_client** %3, align 8
  %7 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %3, align 8
  %8 = getelementptr inbounds %struct.dm_bufio_client, %struct.dm_bufio_client* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load %struct.dm_buffer*, %struct.dm_buffer** %2, align 8
  %13 = call i32 @free_buffer(%struct.dm_buffer* %12)
  br label %24

14:                                               ; preds = %1
  %15 = load %struct.dm_buffer*, %struct.dm_buffer** %2, align 8
  %16 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %15, i32 0, i32 0
  %17 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %3, align 8
  %18 = getelementptr inbounds %struct.dm_bufio_client, %struct.dm_bufio_client* %17, i32 0, i32 2
  %19 = call i32 @list_add(i32* %16, i32* %18)
  %20 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %3, align 8
  %21 = getelementptr inbounds %struct.dm_bufio_client, %struct.dm_bufio_client* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %21, align 4
  br label %24

24:                                               ; preds = %14, %11
  %25 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %3, align 8
  %26 = getelementptr inbounds %struct.dm_bufio_client, %struct.dm_bufio_client* %25, i32 0, i32 0
  %27 = call i32 @wake_up(i32* %26)
  ret void
}

declare dso_local i32 @free_buffer(%struct.dm_buffer*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
