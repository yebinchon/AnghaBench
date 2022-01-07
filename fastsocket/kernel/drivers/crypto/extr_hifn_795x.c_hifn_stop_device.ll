; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_hifn_795x.c_hifn_stop_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_hifn_795x.c_hifn_stop_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hifn_device = type { i32 }

@HIFN_1_DMA_CSR = common dso_local global i32 0, align 4
@HIFN_DMACSR_D_CTRL_DIS = common dso_local global i32 0, align 4
@HIFN_DMACSR_R_CTRL_DIS = common dso_local global i32 0, align 4
@HIFN_DMACSR_S_CTRL_DIS = common dso_local global i32 0, align 4
@HIFN_DMACSR_C_CTRL_DIS = common dso_local global i32 0, align 4
@HIFN_0_PUIER = common dso_local global i32 0, align 4
@HIFN_1_DMA_IER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hifn_device*)* @hifn_stop_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hifn_stop_device(%struct.hifn_device* %0) #0 {
  %2 = alloca %struct.hifn_device*, align 8
  store %struct.hifn_device* %0, %struct.hifn_device** %2, align 8
  %3 = load %struct.hifn_device*, %struct.hifn_device** %2, align 8
  %4 = load i32, i32* @HIFN_1_DMA_CSR, align 4
  %5 = load i32, i32* @HIFN_DMACSR_D_CTRL_DIS, align 4
  %6 = load i32, i32* @HIFN_DMACSR_R_CTRL_DIS, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @HIFN_DMACSR_S_CTRL_DIS, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @HIFN_DMACSR_C_CTRL_DIS, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @hifn_write_1(%struct.hifn_device* %3, i32 %4, i32 %11)
  %13 = load %struct.hifn_device*, %struct.hifn_device** %2, align 8
  %14 = load i32, i32* @HIFN_0_PUIER, align 4
  %15 = call i32 @hifn_write_0(%struct.hifn_device* %13, i32 %14, i32 0)
  %16 = load %struct.hifn_device*, %struct.hifn_device** %2, align 8
  %17 = load i32, i32* @HIFN_1_DMA_IER, align 4
  %18 = call i32 @hifn_write_1(%struct.hifn_device* %16, i32 %17, i32 0)
  ret void
}

declare dso_local i32 @hifn_write_1(%struct.hifn_device*, i32, i32) #1

declare dso_local i32 @hifn_write_0(%struct.hifn_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
