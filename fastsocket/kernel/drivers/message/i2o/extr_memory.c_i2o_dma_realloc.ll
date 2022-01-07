; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_memory.c_i2o_dma_realloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_memory.c_i2o_dma_realloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.i2o_dma = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2o_dma_realloc(%struct.device* %0, %struct.i2o_dma* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.i2o_dma*, align 8
  %7 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.i2o_dma* %1, %struct.i2o_dma** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load %struct.device*, %struct.device** %5, align 8
  %9 = load %struct.i2o_dma*, %struct.i2o_dma** %6, align 8
  %10 = call i32 @i2o_dma_free(%struct.device* %8, %struct.i2o_dma* %9)
  %11 = load i64, i64* %7, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = load %struct.i2o_dma*, %struct.i2o_dma** %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @i2o_dma_alloc(%struct.device* %14, %struct.i2o_dma* %15, i64 %16)
  store i32 %17, i32* %4, align 4
  br label %19

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %18, %13
  %20 = load i32, i32* %4, align 4
  ret i32 %20
}

declare dso_local i32 @i2o_dma_free(%struct.device*, %struct.i2o_dma*) #1

declare dso_local i32 @i2o_dma_alloc(%struct.device*, %struct.i2o_dma*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
