; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_ring_buffer.c_hv_ringbuffer_get_debuginfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_ring_buffer.c_hv_ringbuffer_get_debuginfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_ring_buffer_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.hv_ring_buffer_debug_info = type { i32, i32, i32, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hv_ringbuffer_get_debuginfo(%struct.hv_ring_buffer_info* %0, %struct.hv_ring_buffer_debug_info* %1) #0 {
  %3 = alloca %struct.hv_ring_buffer_info*, align 8
  %4 = alloca %struct.hv_ring_buffer_debug_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.hv_ring_buffer_info* %0, %struct.hv_ring_buffer_info** %3, align 8
  store %struct.hv_ring_buffer_debug_info* %1, %struct.hv_ring_buffer_debug_info** %4, align 8
  %7 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %3, align 8
  %8 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %11, label %41

11:                                               ; preds = %2
  %12 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %3, align 8
  %13 = call i32 @hv_get_ringbuffer_availbytes(%struct.hv_ring_buffer_info* %12, i8** %6, i8** %5)
  %14 = load i8*, i8** %6, align 8
  %15 = load %struct.hv_ring_buffer_debug_info*, %struct.hv_ring_buffer_debug_info** %4, align 8
  %16 = getelementptr inbounds %struct.hv_ring_buffer_debug_info, %struct.hv_ring_buffer_debug_info* %15, i32 0, i32 4
  store i8* %14, i8** %16, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load %struct.hv_ring_buffer_debug_info*, %struct.hv_ring_buffer_debug_info** %4, align 8
  %19 = getelementptr inbounds %struct.hv_ring_buffer_debug_info, %struct.hv_ring_buffer_debug_info* %18, i32 0, i32 3
  store i8* %17, i8** %19, align 8
  %20 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %3, align 8
  %21 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.hv_ring_buffer_debug_info*, %struct.hv_ring_buffer_debug_info** %4, align 8
  %26 = getelementptr inbounds %struct.hv_ring_buffer_debug_info, %struct.hv_ring_buffer_debug_info* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %3, align 8
  %28 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.hv_ring_buffer_debug_info*, %struct.hv_ring_buffer_debug_info** %4, align 8
  %33 = getelementptr inbounds %struct.hv_ring_buffer_debug_info, %struct.hv_ring_buffer_debug_info* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %3, align 8
  %35 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.hv_ring_buffer_debug_info*, %struct.hv_ring_buffer_debug_info** %4, align 8
  %40 = getelementptr inbounds %struct.hv_ring_buffer_debug_info, %struct.hv_ring_buffer_debug_info* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  br label %41

41:                                               ; preds = %11, %2
  ret void
}

declare dso_local i32 @hv_get_ringbuffer_availbytes(%struct.hv_ring_buffer_info*, i8**, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
