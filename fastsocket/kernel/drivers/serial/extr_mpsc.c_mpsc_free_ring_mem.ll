; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_mpsc.c_mpsc_free_ring_mem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_mpsc.c_mpsc_free_ring_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpsc_port_info = type { i64, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"mpsc_free_ring_mem[%d]: Freeing ring mem\0A\00", align 1
@MPSC_DMA_ALLOC_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpsc_port_info*)* @mpsc_free_ring_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpsc_free_ring_mem(%struct.mpsc_port_info* %0) #0 {
  %2 = alloca %struct.mpsc_port_info*, align 8
  store %struct.mpsc_port_info* %0, %struct.mpsc_port_info** %2, align 8
  %3 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %4 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %9 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %29

12:                                               ; preds = %1
  %13 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %14 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @MPSC_DMA_ALLOC_SIZE, align 4
  %18 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %19 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %22 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @dma_free_noncoherent(i32 %16, i32 %17, i32* %20, i64 %23)
  %25 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %26 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %25, i32 0, i32 1
  store i32* null, i32** %26, align 8
  %27 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %28 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  br label %29

29:                                               ; preds = %12, %1
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @dma_free_noncoherent(i32, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
