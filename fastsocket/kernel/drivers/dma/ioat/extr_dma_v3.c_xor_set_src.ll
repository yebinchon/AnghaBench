; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/ioat/extr_dma_v3.c_xor_set_src.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/ioat/extr_dma_v3.c_xor_set_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioat_raw_descriptor = type { i64* }

@xor_idx_to_desc = common dso_local global i32 0, align 4
@xor_idx_to_field = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ioat_raw_descriptor**, i64, i64, i32)* @xor_set_src to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xor_set_src(%struct.ioat_raw_descriptor** %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.ioat_raw_descriptor**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ioat_raw_descriptor*, align 8
  store %struct.ioat_raw_descriptor** %0, %struct.ioat_raw_descriptor*** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.ioat_raw_descriptor**, %struct.ioat_raw_descriptor*** %5, align 8
  %11 = load i32, i32* @xor_idx_to_desc, align 4
  %12 = load i32, i32* %8, align 4
  %13 = ashr i32 %11, %12
  %14 = and i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.ioat_raw_descriptor*, %struct.ioat_raw_descriptor** %10, i64 %15
  %17 = load %struct.ioat_raw_descriptor*, %struct.ioat_raw_descriptor** %16, align 8
  store %struct.ioat_raw_descriptor* %17, %struct.ioat_raw_descriptor** %9, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* %7, align 8
  %20 = add nsw i64 %18, %19
  %21 = load %struct.ioat_raw_descriptor*, %struct.ioat_raw_descriptor** %9, align 8
  %22 = getelementptr inbounds %struct.ioat_raw_descriptor, %struct.ioat_raw_descriptor* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = load i64*, i64** @xor_idx_to_field, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i64, i64* %23, i64 %28
  store i64 %20, i64* %29, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
