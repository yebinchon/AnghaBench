; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_videobuf-vmalloc.c_videobuf_queue_vmalloc_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_videobuf-vmalloc.c_videobuf_queue_vmalloc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videobuf_queue = type { i32 }
%struct.videobuf_queue_ops = type { i32 }
%struct.device = type { i32 }
%struct.mutex = type { i32 }

@qops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @videobuf_queue_vmalloc_init(%struct.videobuf_queue* %0, %struct.videobuf_queue_ops* %1, %struct.device* %2, i32* %3, i32 %4, i32 %5, i32 %6, i8* %7, %struct.mutex* %8) #0 {
  %10 = alloca %struct.videobuf_queue*, align 8
  %11 = alloca %struct.videobuf_queue_ops*, align 8
  %12 = alloca %struct.device*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca %struct.mutex*, align 8
  store %struct.videobuf_queue* %0, %struct.videobuf_queue** %10, align 8
  store %struct.videobuf_queue_ops* %1, %struct.videobuf_queue_ops** %11, align 8
  store %struct.device* %2, %struct.device** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i8* %7, i8** %17, align 8
  store %struct.mutex* %8, %struct.mutex** %18, align 8
  %19 = load %struct.videobuf_queue*, %struct.videobuf_queue** %10, align 8
  %20 = load %struct.videobuf_queue_ops*, %struct.videobuf_queue_ops** %11, align 8
  %21 = load %struct.device*, %struct.device** %12, align 8
  %22 = load i32*, i32** %13, align 8
  %23 = load i32, i32* %14, align 4
  %24 = load i32, i32* %15, align 4
  %25 = load i32, i32* %16, align 4
  %26 = load i8*, i8** %17, align 8
  %27 = load %struct.mutex*, %struct.mutex** %18, align 8
  %28 = call i32 @videobuf_queue_core_init(%struct.videobuf_queue* %19, %struct.videobuf_queue_ops* %20, %struct.device* %21, i32* %22, i32 %23, i32 %24, i32 %25, i8* %26, i32* @qops, %struct.mutex* %27)
  ret void
}

declare dso_local i32 @videobuf_queue_core_init(%struct.videobuf_queue*, %struct.videobuf_queue_ops*, %struct.device*, i32*, i32, i32, i32, i8*, i32*, %struct.mutex*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
