; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_shdma.c_sh_dmae_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_shdma.c_sh_dmae_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_dmae_chan = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@CHCR = common dso_local global i32 0, align 4
@CHCR_TE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sh_dmae_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_dmae_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sh_dmae_chan*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i32, i32* @IRQ_NONE, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.sh_dmae_chan*
  store %struct.sh_dmae_chan* %10, %struct.sh_dmae_chan** %6, align 8
  %11 = load %struct.sh_dmae_chan*, %struct.sh_dmae_chan** %6, align 8
  %12 = load i32, i32* @CHCR, align 4
  %13 = call i32 @sh_dmae_readl(%struct.sh_dmae_chan* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @CHCR_TE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load %struct.sh_dmae_chan*, %struct.sh_dmae_chan** %6, align 8
  %20 = call i32 @dmae_halt(%struct.sh_dmae_chan* %19)
  %21 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %21, i32* %5, align 4
  %22 = load %struct.sh_dmae_chan*, %struct.sh_dmae_chan** %6, align 8
  %23 = getelementptr inbounds %struct.sh_dmae_chan, %struct.sh_dmae_chan* %22, i32 0, i32 0
  %24 = call i32 @tasklet_schedule(i32* %23)
  br label %25

25:                                               ; preds = %18, %2
  %26 = load i32, i32* %5, align 4
  ret i32 %26
}

declare dso_local i32 @sh_dmae_readl(%struct.sh_dmae_chan*, i32) #1

declare dso_local i32 @dmae_halt(%struct.sh_dmae_chan*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
