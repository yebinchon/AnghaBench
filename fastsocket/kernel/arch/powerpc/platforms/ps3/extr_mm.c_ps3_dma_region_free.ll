; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/ps3/extr_mm.c_ps3_dma_region_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/ps3/extr_mm.c_ps3_dma_region_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps3_dma_region = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ps3_dma_region_free(%struct.ps3_dma_region* %0) #0 {
  %2 = alloca %struct.ps3_dma_region*, align 8
  store %struct.ps3_dma_region* %0, %struct.ps3_dma_region** %2, align 8
  %3 = load %struct.ps3_dma_region*, %struct.ps3_dma_region** %2, align 8
  %4 = icmp ne %struct.ps3_dma_region* %3, null
  %5 = xor i1 %4, true
  %6 = zext i1 %5 to i32
  %7 = call i32 @BUG_ON(i32 %6)
  %8 = load %struct.ps3_dma_region*, %struct.ps3_dma_region** %2, align 8
  %9 = getelementptr inbounds %struct.ps3_dma_region, %struct.ps3_dma_region* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = icmp ne %struct.TYPE_2__* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load %struct.ps3_dma_region*, %struct.ps3_dma_region** %2, align 8
  %16 = getelementptr inbounds %struct.ps3_dma_region, %struct.ps3_dma_region* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = bitcast {}** %18 to i32 (%struct.ps3_dma_region*)**
  %20 = load i32 (%struct.ps3_dma_region*)*, i32 (%struct.ps3_dma_region*)** %19, align 8
  %21 = icmp ne i32 (%struct.ps3_dma_region*)* %20, null
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load %struct.ps3_dma_region*, %struct.ps3_dma_region** %2, align 8
  %26 = getelementptr inbounds %struct.ps3_dma_region, %struct.ps3_dma_region* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = bitcast {}** %28 to i32 (%struct.ps3_dma_region*)**
  %30 = load i32 (%struct.ps3_dma_region*)*, i32 (%struct.ps3_dma_region*)** %29, align 8
  %31 = load %struct.ps3_dma_region*, %struct.ps3_dma_region** %2, align 8
  %32 = call i32 %30(%struct.ps3_dma_region* %31)
  ret i32 %32
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
