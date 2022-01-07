; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_memory.c_i2o_dma_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_memory.c_i2o_dma_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.i2o_dma = type { i32*, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i2o_dma_free(%struct.device* %0, %struct.i2o_dma* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.i2o_dma*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.i2o_dma* %1, %struct.i2o_dma** %4, align 8
  %5 = load %struct.i2o_dma*, %struct.i2o_dma** %4, align 8
  %6 = getelementptr inbounds %struct.i2o_dma, %struct.i2o_dma* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %34

9:                                                ; preds = %2
  %10 = load %struct.i2o_dma*, %struct.i2o_dma** %4, align 8
  %11 = getelementptr inbounds %struct.i2o_dma, %struct.i2o_dma* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %9
  %15 = load %struct.device*, %struct.device** %3, align 8
  %16 = load %struct.i2o_dma*, %struct.i2o_dma** %4, align 8
  %17 = getelementptr inbounds %struct.i2o_dma, %struct.i2o_dma* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.i2o_dma*, %struct.i2o_dma** %4, align 8
  %20 = getelementptr inbounds %struct.i2o_dma, %struct.i2o_dma* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.i2o_dma*, %struct.i2o_dma** %4, align 8
  %23 = getelementptr inbounds %struct.i2o_dma, %struct.i2o_dma* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @dma_free_coherent(%struct.device* %15, i32 %18, i32* %21, i64 %24)
  br label %31

26:                                               ; preds = %9
  %27 = load %struct.i2o_dma*, %struct.i2o_dma** %4, align 8
  %28 = getelementptr inbounds %struct.i2o_dma, %struct.i2o_dma* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @kfree(i32* %29)
  br label %31

31:                                               ; preds = %26, %14
  %32 = load %struct.i2o_dma*, %struct.i2o_dma** %4, align 8
  %33 = getelementptr inbounds %struct.i2o_dma, %struct.i2o_dma* %32, i32 0, i32 0
  store i32* null, i32** %33, align 8
  br label %34

34:                                               ; preds = %31, %2
  ret void
}

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i32*, i64) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
