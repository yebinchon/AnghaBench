; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_shdma.c_calc_xmit_shift.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_shdma.c_calc_xmit_shift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_dmae_chan = type { i32 }

@CHCR = common dso_local global i32 0, align 4
@ts_shift = common dso_local global i32* null, align 8
@CHCR_TS_MASK = common dso_local global i64 0, align 8
@CHCR_TS_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_dmae_chan*)* @calc_xmit_shift to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_xmit_shift(%struct.sh_dmae_chan* %0) #0 {
  %2 = alloca %struct.sh_dmae_chan*, align 8
  %3 = alloca i64, align 8
  store %struct.sh_dmae_chan* %0, %struct.sh_dmae_chan** %2, align 8
  %4 = load %struct.sh_dmae_chan*, %struct.sh_dmae_chan** %2, align 8
  %5 = load i32, i32* @CHCR, align 4
  %6 = call i64 @sh_dmae_readl(%struct.sh_dmae_chan* %4, i32 %5)
  store i64 %6, i64* %3, align 8
  %7 = load i32*, i32** @ts_shift, align 8
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @CHCR_TS_MASK, align 8
  %10 = and i64 %8, %9
  %11 = load i64, i64* @CHCR_TS_SHIFT, align 8
  %12 = lshr i64 %10, %11
  %13 = getelementptr inbounds i32, i32* %7, i64 %12
  %14 = load i32, i32* %13, align 4
  ret i32 %14
}

declare dso_local i64 @sh_dmae_readl(%struct.sh_dmae_chan*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
