; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_at_hdmac.c_at_dma_off.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_at_hdmac.c_at_dma_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at_dma = type { i32 }

@EN = common dso_local global i32 0, align 4
@EBCIDR = common dso_local global i32 0, align 4
@CHSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.at_dma*)* @at_dma_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @at_dma_off(%struct.at_dma* %0) #0 {
  %2 = alloca %struct.at_dma*, align 8
  store %struct.at_dma* %0, %struct.at_dma** %2, align 8
  %3 = load %struct.at_dma*, %struct.at_dma** %2, align 8
  %4 = load i32, i32* @EN, align 4
  %5 = call i32 @dma_writel(%struct.at_dma* %3, i32 %4, i64 0)
  %6 = load %struct.at_dma*, %struct.at_dma** %2, align 8
  %7 = load i32, i32* @EBCIDR, align 4
  %8 = call i32 @dma_writel(%struct.at_dma* %6, i32 %7, i64 -1)
  br label %9

9:                                                ; preds = %18, %1
  %10 = load %struct.at_dma*, %struct.at_dma** %2, align 8
  %11 = load i32, i32* @CHSR, align 4
  %12 = call i32 @dma_readl(%struct.at_dma* %10, i32 %11)
  %13 = load %struct.at_dma*, %struct.at_dma** %2, align 8
  %14 = getelementptr inbounds %struct.at_dma, %struct.at_dma* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %12, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %9
  %19 = call i32 (...) @cpu_relax()
  br label %9

20:                                               ; preds = %9
  ret void
}

declare dso_local i32 @dma_writel(%struct.at_dma*, i32, i64) #1

declare dso_local i32 @dma_readl(%struct.at_dma*, i32) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
