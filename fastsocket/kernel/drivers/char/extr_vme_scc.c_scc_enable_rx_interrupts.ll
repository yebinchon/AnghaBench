; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_vme_scc.c_scc_enable_rx_interrupts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_vme_scc.c_scc_enable_rx_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scc_port = type { i32 }

@INT_AND_DMA_REG = common dso_local global i32 0, align 4
@IDR_EXTSTAT_INT_ENAB = common dso_local global i32 0, align 4
@IDR_PARERR_AS_SPCOND = common dso_local global i32 0, align 4
@IDR_RX_INT_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @scc_enable_rx_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scc_enable_rx_interrupts(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.scc_port*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.scc_port*
  store %struct.scc_port* %6, %struct.scc_port** %3, align 8
  %7 = load %struct.scc_port*, %struct.scc_port** %3, align 8
  %8 = call i32 @SCC_ACCESS_INIT(%struct.scc_port* %7)
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @local_irq_save(i64 %9)
  %11 = load i32, i32* @INT_AND_DMA_REG, align 4
  %12 = load i32, i32* @IDR_EXTSTAT_INT_ENAB, align 4
  %13 = load i32, i32* @IDR_PARERR_AS_SPCOND, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @IDR_RX_INT_ALL, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @SCCmod(i32 %11, i32 255, i32 %16)
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @local_irq_restore(i64 %18)
  ret void
}

declare dso_local i32 @SCC_ACCESS_INIT(%struct.scc_port*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @SCCmod(i32, i32, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
