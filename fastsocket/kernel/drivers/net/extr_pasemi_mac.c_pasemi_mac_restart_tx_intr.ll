; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pasemi_mac.c_pasemi_mac_restart_tx_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pasemi_mac.c_pasemi_mac_restart_tx_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pasemi_mac = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i32 }

@PAS_STATUS_PCNT_M = common dso_local global i32 0, align 4
@PAS_IOB_DMA_TXCH_RESET_PINTC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pasemi_mac*)* @pasemi_mac_restart_tx_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pasemi_mac_restart_tx_intr(%struct.pasemi_mac* %0) #0 {
  %2 = alloca %struct.pasemi_mac*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.pasemi_mac* %0, %struct.pasemi_mac** %2, align 8
  %5 = load %struct.pasemi_mac*, %struct.pasemi_mac** %2, align 8
  %6 = call %struct.TYPE_4__* @tx_ring(%struct.pasemi_mac* %5)
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @PAS_STATUS_PCNT_M, align 4
  %12 = and i32 %10, %11
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @PAS_IOB_DMA_TXCH_RESET_PCNT(i32 %13)
  %15 = load i32, i32* @PAS_IOB_DMA_TXCH_RESET_PINTC, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %3, align 4
  %17 = load %struct.pasemi_mac*, %struct.pasemi_mac** %2, align 8
  %18 = call %struct.TYPE_4__* @tx_ring(%struct.pasemi_mac* %17)
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @PAS_IOB_DMA_TXCH_RESET(i32 %21)
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @write_iob_reg(i32 %22, i32 %23)
  ret void
}

declare dso_local %struct.TYPE_4__* @tx_ring(%struct.pasemi_mac*) #1

declare dso_local i32 @PAS_IOB_DMA_TXCH_RESET_PCNT(i32) #1

declare dso_local i32 @write_iob_reg(i32, i32) #1

declare dso_local i32 @PAS_IOB_DMA_TXCH_RESET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
