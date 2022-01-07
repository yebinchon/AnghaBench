; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-stmp3xxx/extr_dma.c_stmp37xx_circ_advance_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-stmp3xxx/extr_dma.c_stmp37xx_circ_advance_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmp37xx_circ_dma_chain = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stmp37xx_circ_advance_free(%struct.stmp37xx_circ_dma_chain* %0, i32 %1) #0 {
  %3 = alloca %struct.stmp37xx_circ_dma_chain*, align 8
  %4 = alloca i32, align 4
  store %struct.stmp37xx_circ_dma_chain* %0, %struct.stmp37xx_circ_dma_chain** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.stmp37xx_circ_dma_chain*, %struct.stmp37xx_circ_dma_chain** %3, align 8
  %6 = getelementptr inbounds %struct.stmp37xx_circ_dma_chain, %struct.stmp37xx_circ_dma_chain* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ult i32 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.stmp37xx_circ_dma_chain*, %struct.stmp37xx_circ_dma_chain** %3, align 8
  %14 = getelementptr inbounds %struct.stmp37xx_circ_dma_chain, %struct.stmp37xx_circ_dma_chain* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sub i32 %15, %12
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.stmp37xx_circ_dma_chain*, %struct.stmp37xx_circ_dma_chain** %3, align 8
  %19 = getelementptr inbounds %struct.stmp37xx_circ_dma_chain, %struct.stmp37xx_circ_dma_chain* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = add i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load %struct.stmp37xx_circ_dma_chain*, %struct.stmp37xx_circ_dma_chain** %3, align 8
  %23 = getelementptr inbounds %struct.stmp37xx_circ_dma_chain, %struct.stmp37xx_circ_dma_chain* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.stmp37xx_circ_dma_chain*, %struct.stmp37xx_circ_dma_chain** %3, align 8
  %26 = getelementptr inbounds %struct.stmp37xx_circ_dma_chain, %struct.stmp37xx_circ_dma_chain* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = srem i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.stmp37xx_circ_dma_chain*, %struct.stmp37xx_circ_dma_chain** %3, align 8
  %31 = getelementptr inbounds %struct.stmp37xx_circ_dma_chain, %struct.stmp37xx_circ_dma_chain* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = add i32 %32, %29
  store i32 %33, i32* %31, align 4
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
