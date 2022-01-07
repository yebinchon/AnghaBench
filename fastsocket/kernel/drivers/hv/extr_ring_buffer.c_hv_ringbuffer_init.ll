; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_ring_buffer.c_hv_ringbuffer_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_ring_buffer.c_hv_ringbuffer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_ring_buffer_info = type { i32, i8*, i8*, %struct.hv_ring_buffer* }
%struct.hv_ring_buffer = type { i64, i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hv_ringbuffer_init(%struct.hv_ring_buffer_info* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hv_ring_buffer_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.hv_ring_buffer_info* %0, %struct.hv_ring_buffer_info** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load i32, i32* @PAGE_SIZE, align 4
  %9 = sext i32 %8 to i64
  %10 = icmp ne i64 16, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %4, align 4
  br label %39

14:                                               ; preds = %3
  %15 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %5, align 8
  %16 = call i32 @memset(%struct.hv_ring_buffer_info* %15, i32 0, i32 32)
  %17 = load i8*, i8** %6, align 8
  %18 = bitcast i8* %17 to %struct.hv_ring_buffer*
  %19 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %5, align 8
  %20 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %19, i32 0, i32 3
  store %struct.hv_ring_buffer* %18, %struct.hv_ring_buffer** %20, align 8
  %21 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %5, align 8
  %22 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %21, i32 0, i32 3
  %23 = load %struct.hv_ring_buffer*, %struct.hv_ring_buffer** %22, align 8
  %24 = getelementptr inbounds %struct.hv_ring_buffer, %struct.hv_ring_buffer* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  %25 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %5, align 8
  %26 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %25, i32 0, i32 3
  %27 = load %struct.hv_ring_buffer*, %struct.hv_ring_buffer** %26, align 8
  %28 = getelementptr inbounds %struct.hv_ring_buffer, %struct.hv_ring_buffer* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %5, align 8
  %31 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %30, i32 0, i32 2
  store i8* %29, i8** %31, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = getelementptr i8, i8* %32, i64 -16
  %34 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %5, align 8
  %35 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  %36 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %5, align 8
  %37 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %36, i32 0, i32 0
  %38 = call i32 @spin_lock_init(i32* %37)
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %14, %11
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @memset(%struct.hv_ring_buffer_info*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
