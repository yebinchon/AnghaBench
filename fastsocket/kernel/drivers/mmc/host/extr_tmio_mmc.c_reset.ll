; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_tmio_mmc.c_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_tmio_mmc.c_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmio_mmc_host = type { i32 }

@CTL_RESET_SD = common dso_local global i32 0, align 4
@CTL_RESET_SDIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tmio_mmc_host*)* @reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset(%struct.tmio_mmc_host* %0) #0 {
  %2 = alloca %struct.tmio_mmc_host*, align 8
  store %struct.tmio_mmc_host* %0, %struct.tmio_mmc_host** %2, align 8
  %3 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %4 = load i32, i32* @CTL_RESET_SD, align 4
  %5 = call i32 @sd_ctrl_write16(%struct.tmio_mmc_host* %3, i32 %4, i32 0)
  %6 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %7 = load i32, i32* @CTL_RESET_SDIO, align 4
  %8 = call i32 @sd_ctrl_write16(%struct.tmio_mmc_host* %6, i32 %7, i32 0)
  %9 = call i32 @msleep(i32 10)
  %10 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %11 = load i32, i32* @CTL_RESET_SD, align 4
  %12 = call i32 @sd_ctrl_write16(%struct.tmio_mmc_host* %10, i32 %11, i32 1)
  %13 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %14 = load i32, i32* @CTL_RESET_SDIO, align 4
  %15 = call i32 @sd_ctrl_write16(%struct.tmio_mmc_host* %13, i32 %14, i32 1)
  %16 = call i32 @msleep(i32 10)
  ret void
}

declare dso_local i32 @sd_ctrl_write16(%struct.tmio_mmc_host*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
