; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-bufio.c_alloc_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-bufio.c_alloc_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_buffer = type { i32, i32, %struct.dm_bufio_client* }
%struct.dm_bufio_client = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dm_buffer* (%struct.dm_bufio_client*, i32)* @alloc_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dm_buffer* @alloc_buffer(%struct.dm_bufio_client* %0, i32 %1) #0 {
  %3 = alloca %struct.dm_buffer*, align 8
  %4 = alloca %struct.dm_bufio_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dm_buffer*, align 8
  store %struct.dm_bufio_client* %0, %struct.dm_bufio_client** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %4, align 8
  %8 = getelementptr inbounds %struct.dm_bufio_client, %struct.dm_bufio_client* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = add i64 16, %9
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.dm_buffer* @kmalloc(i64 %10, i32 %11)
  store %struct.dm_buffer* %12, %struct.dm_buffer** %6, align 8
  %13 = load %struct.dm_buffer*, %struct.dm_buffer** %6, align 8
  %14 = icmp ne %struct.dm_buffer* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store %struct.dm_buffer* null, %struct.dm_buffer** %3, align 8
  br label %43

16:                                               ; preds = %2
  %17 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %4, align 8
  %18 = load %struct.dm_buffer*, %struct.dm_buffer** %6, align 8
  %19 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %18, i32 0, i32 2
  store %struct.dm_bufio_client* %17, %struct.dm_bufio_client** %19, align 8
  %20 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.dm_buffer*, %struct.dm_buffer** %6, align 8
  %23 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %22, i32 0, i32 0
  %24 = call i32 @alloc_buffer_data(%struct.dm_bufio_client* %20, i32 %21, i32* %23)
  %25 = load %struct.dm_buffer*, %struct.dm_buffer** %6, align 8
  %26 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.dm_buffer*, %struct.dm_buffer** %6, align 8
  %28 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %16
  %32 = load %struct.dm_buffer*, %struct.dm_buffer** %6, align 8
  %33 = call i32 @kfree(%struct.dm_buffer* %32)
  store %struct.dm_buffer* null, %struct.dm_buffer** %3, align 8
  br label %43

34:                                               ; preds = %16
  %35 = load %struct.dm_buffer*, %struct.dm_buffer** %6, align 8
  %36 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %4, align 8
  %39 = getelementptr inbounds %struct.dm_bufio_client, %struct.dm_bufio_client* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @adjust_total_allocated(i32 %37, i64 %40)
  %42 = load %struct.dm_buffer*, %struct.dm_buffer** %6, align 8
  store %struct.dm_buffer* %42, %struct.dm_buffer** %3, align 8
  br label %43

43:                                               ; preds = %34, %31, %15
  %44 = load %struct.dm_buffer*, %struct.dm_buffer** %3, align 8
  ret %struct.dm_buffer* %44
}

declare dso_local %struct.dm_buffer* @kmalloc(i64, i32) #1

declare dso_local i32 @alloc_buffer_data(%struct.dm_bufio_client*, i32, i32*) #1

declare dso_local i32 @kfree(%struct.dm_buffer*) #1

declare dso_local i32 @adjust_total_allocated(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
