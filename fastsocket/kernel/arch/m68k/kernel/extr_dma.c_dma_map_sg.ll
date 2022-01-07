; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/kernel/extr_dma.c_dma_map_sg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/kernel/extr_dma.c_dma_map_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.scatterlist = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dma_map_sg(%struct.device* %0, %struct.scatterlist* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %28, %4
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %33

14:                                               ; preds = %10
  %15 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %16 = call i32 @sg_phys(%struct.scatterlist* %15)
  %17 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %18 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %21 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %24 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @dma_sync_single_for_device(%struct.device* %19, i32 %22, i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %14
  %29 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %30 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %29, i32 1
  store %struct.scatterlist* %30, %struct.scatterlist** %6, align 8
  %31 = load i32, i32* %9, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %9, align 4
  br label %10

33:                                               ; preds = %10
  %34 = load i32, i32* %7, align 4
  ret i32 %34
}

declare dso_local i32 @sg_phys(%struct.scatterlist*) #1

declare dso_local i32 @dma_sync_single_for_device(%struct.device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
