; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-bufio.c_dm_bufio_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-bufio.c_dm_bufio_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_buffer = type { i32, i64, i64, i32, %struct.dm_bufio_client* }
%struct.dm_bufio_client = type { i32 }

@B_READING = common dso_local global i32 0, align 4
@B_WRITING = common dso_local global i32 0, align 4
@B_DIRTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dm_bufio_release(%struct.dm_buffer* %0) #0 {
  %2 = alloca %struct.dm_buffer*, align 8
  %3 = alloca %struct.dm_bufio_client*, align 8
  store %struct.dm_buffer* %0, %struct.dm_buffer** %2, align 8
  %4 = load %struct.dm_buffer*, %struct.dm_buffer** %2, align 8
  %5 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %4, i32 0, i32 4
  %6 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %5, align 8
  store %struct.dm_bufio_client* %6, %struct.dm_bufio_client** %3, align 8
  %7 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %3, align 8
  %8 = call i32 @dm_bufio_lock(%struct.dm_bufio_client* %7)
  %9 = load %struct.dm_buffer*, %struct.dm_buffer** %2, align 8
  %10 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.dm_buffer*, %struct.dm_buffer** %2, align 8
  %17 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %17, align 8
  %20 = load %struct.dm_buffer*, %struct.dm_buffer** %2, align 8
  %21 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %61, label %24

24:                                               ; preds = %1
  %25 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %3, align 8
  %26 = getelementptr inbounds %struct.dm_bufio_client, %struct.dm_bufio_client* %25, i32 0, i32 0
  %27 = call i32 @wake_up(i32* %26)
  %28 = load %struct.dm_buffer*, %struct.dm_buffer** %2, align 8
  %29 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %24
  %33 = load %struct.dm_buffer*, %struct.dm_buffer** %2, align 8
  %34 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %60

37:                                               ; preds = %32, %24
  %38 = load i32, i32* @B_READING, align 4
  %39 = load %struct.dm_buffer*, %struct.dm_buffer** %2, align 8
  %40 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %39, i32 0, i32 0
  %41 = call i32 @test_bit(i32 %38, i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %60, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* @B_WRITING, align 4
  %45 = load %struct.dm_buffer*, %struct.dm_buffer** %2, align 8
  %46 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %45, i32 0, i32 0
  %47 = call i32 @test_bit(i32 %44, i32* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %60, label %49

49:                                               ; preds = %43
  %50 = load i32, i32* @B_DIRTY, align 4
  %51 = load %struct.dm_buffer*, %struct.dm_buffer** %2, align 8
  %52 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %51, i32 0, i32 0
  %53 = call i32 @test_bit(i32 %50, i32* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %49
  %56 = load %struct.dm_buffer*, %struct.dm_buffer** %2, align 8
  %57 = call i32 @__unlink_buffer(%struct.dm_buffer* %56)
  %58 = load %struct.dm_buffer*, %struct.dm_buffer** %2, align 8
  %59 = call i32 @__free_buffer_wake(%struct.dm_buffer* %58)
  br label %60

60:                                               ; preds = %55, %49, %43, %37, %32
  br label %61

61:                                               ; preds = %60, %1
  %62 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %3, align 8
  %63 = call i32 @dm_bufio_unlock(%struct.dm_bufio_client* %62)
  ret void
}

declare dso_local i32 @dm_bufio_lock(%struct.dm_bufio_client*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @__unlink_buffer(%struct.dm_buffer*) #1

declare dso_local i32 @__free_buffer_wake(%struct.dm_buffer*) #1

declare dso_local i32 @dm_bufio_unlock(%struct.dm_bufio_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
