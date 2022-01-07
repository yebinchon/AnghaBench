; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_videobuf-vmalloc.c_videobuf_vmalloc_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_videobuf-vmalloc.c_videobuf_vmalloc_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videobuf_buffer = type { i64, i64, %struct.videobuf_vmalloc_memory* }
%struct.videobuf_vmalloc_memory = type { i32*, i32 }

@V4L2_MEMORY_USERPTR = common dso_local global i64 0, align 8
@MAGIC_VMAL_MEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @videobuf_vmalloc_free(%struct.videobuf_buffer* %0) #0 {
  %2 = alloca %struct.videobuf_buffer*, align 8
  %3 = alloca %struct.videobuf_vmalloc_memory*, align 8
  store %struct.videobuf_buffer* %0, %struct.videobuf_buffer** %2, align 8
  %4 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %2, align 8
  %5 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %4, i32 0, i32 2
  %6 = load %struct.videobuf_vmalloc_memory*, %struct.videobuf_vmalloc_memory** %5, align 8
  store %struct.videobuf_vmalloc_memory* %6, %struct.videobuf_vmalloc_memory** %3, align 8
  %7 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %2, align 8
  %8 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @V4L2_MEMORY_USERPTR, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %17, label %12

12:                                               ; preds = %1
  %13 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %2, align 8
  %14 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12, %1
  br label %34

18:                                               ; preds = %12
  %19 = load %struct.videobuf_vmalloc_memory*, %struct.videobuf_vmalloc_memory** %3, align 8
  %20 = icmp ne %struct.videobuf_vmalloc_memory* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  br label %34

22:                                               ; preds = %18
  %23 = load %struct.videobuf_vmalloc_memory*, %struct.videobuf_vmalloc_memory** %3, align 8
  %24 = getelementptr inbounds %struct.videobuf_vmalloc_memory, %struct.videobuf_vmalloc_memory* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @MAGIC_VMAL_MEM, align 4
  %27 = call i32 @MAGIC_CHECK(i32 %25, i32 %26)
  %28 = load %struct.videobuf_vmalloc_memory*, %struct.videobuf_vmalloc_memory** %3, align 8
  %29 = getelementptr inbounds %struct.videobuf_vmalloc_memory, %struct.videobuf_vmalloc_memory* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @vfree(i32* %30)
  %32 = load %struct.videobuf_vmalloc_memory*, %struct.videobuf_vmalloc_memory** %3, align 8
  %33 = getelementptr inbounds %struct.videobuf_vmalloc_memory, %struct.videobuf_vmalloc_memory* %32, i32 0, i32 0
  store i32* null, i32** %33, align 8
  br label %34

34:                                               ; preds = %22, %21, %17
  ret void
}

declare dso_local i32 @MAGIC_CHECK(i32, i32) #1

declare dso_local i32 @vfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
