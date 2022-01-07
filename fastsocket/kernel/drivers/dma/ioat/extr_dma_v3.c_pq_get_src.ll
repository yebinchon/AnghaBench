; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/ioat/extr_dma_v3.c_pq_get_src.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/ioat/extr_dma_v3.c_pq_get_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioat_raw_descriptor = type { i32* }

@pq_idx_to_desc = common dso_local global i32 0, align 4
@pq_idx_to_field = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ioat_raw_descriptor**, i32)* @pq_get_src to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pq_get_src(%struct.ioat_raw_descriptor** %0, i32 %1) #0 {
  %3 = alloca %struct.ioat_raw_descriptor**, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ioat_raw_descriptor*, align 8
  store %struct.ioat_raw_descriptor** %0, %struct.ioat_raw_descriptor*** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ioat_raw_descriptor**, %struct.ioat_raw_descriptor*** %3, align 8
  %7 = load i32, i32* @pq_idx_to_desc, align 4
  %8 = load i32, i32* %4, align 4
  %9 = ashr i32 %7, %8
  %10 = and i32 %9, 1
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.ioat_raw_descriptor*, %struct.ioat_raw_descriptor** %6, i64 %11
  %13 = load %struct.ioat_raw_descriptor*, %struct.ioat_raw_descriptor** %12, align 8
  store %struct.ioat_raw_descriptor* %13, %struct.ioat_raw_descriptor** %5, align 8
  %14 = load %struct.ioat_raw_descriptor*, %struct.ioat_raw_descriptor** %5, align 8
  %15 = getelementptr inbounds %struct.ioat_raw_descriptor, %struct.ioat_raw_descriptor* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i64*, i64** @pq_idx_to_field, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %17, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i32, i32* %16, i64 %21
  %23 = load i32, i32* %22, align 4
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
