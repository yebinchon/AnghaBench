; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_mv_xor.c_mv_chan_unmask_interrupts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_mv_xor.c_mv_chan_unmask_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_xor_chan = type { i32 }

@XOR_INTR_MASK_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mv_xor_chan*)* @mv_chan_unmask_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv_chan_unmask_interrupts(%struct.mv_xor_chan* %0) #0 {
  %2 = alloca %struct.mv_xor_chan*, align 8
  %3 = alloca i32, align 4
  store %struct.mv_xor_chan* %0, %struct.mv_xor_chan** %2, align 8
  %4 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %2, align 8
  %5 = call i32 @XOR_INTR_MASK(%struct.mv_xor_chan* %4)
  %6 = call i32 @__raw_readl(i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @XOR_INTR_MASK_VALUE, align 4
  %8 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %2, align 8
  %9 = getelementptr inbounds %struct.mv_xor_chan, %struct.mv_xor_chan* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = mul nsw i32 %10, 16
  %12 = shl i32 %7, %11
  %13 = load i32, i32* %3, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %2, align 8
  %17 = call i32 @XOR_INTR_MASK(%struct.mv_xor_chan* %16)
  %18 = call i32 @__raw_writel(i32 %15, i32 %17)
  ret void
}

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i32 @XOR_INTR_MASK(%struct.mv_xor_chan*) #1

declare dso_local i32 @__raw_writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
