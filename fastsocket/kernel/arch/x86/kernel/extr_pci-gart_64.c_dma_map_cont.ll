; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_pci-gart_64.c_dma_map_cont.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_pci-gart_64.c_dma_map_cont.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.scatterlist = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.scatterlist*, i32, %struct.scatterlist*, i64, i32)* @dma_map_cont to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dma_map_cont(%struct.device* %0, %struct.scatterlist* %1, i32 %2, %struct.scatterlist* %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.scatterlist*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.scatterlist*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %8, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.scatterlist* %3, %struct.scatterlist** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %31, label %16

16:                                               ; preds = %6
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 1
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %22 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %25 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %27 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %30 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  store i32 0, i32* %7, align 4
  br label %38

31:                                               ; preds = %6
  %32 = load %struct.device*, %struct.device** %8, align 8
  %33 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %36 = load i64, i64* %12, align 8
  %37 = call i32 @__dma_map_cont(%struct.device* %32, %struct.scatterlist* %33, i32 %34, %struct.scatterlist* %35, i64 %36)
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %31, %16
  %39 = load i32, i32* %7, align 4
  ret i32 %39
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @__dma_map_cont(%struct.device*, %struct.scatterlist*, i32, %struct.scatterlist*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
