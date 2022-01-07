; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_au1xmmc.c_au1xmmc_reset_controller.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_au1xmmc.c_au1xmmc_reset_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au1xmmc_host = type { i32 }

@SD_ENABLE_CE = common dso_local global i32 0, align 4
@SD_ENABLE_R = common dso_local global i32 0, align 4
@SD_CONFIG2_EN = common dso_local global i32 0, align 4
@SD_CONFIG2_FF = common dso_local global i32 0, align 4
@AU1XMMC_INTERRUPTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.au1xmmc_host*)* @au1xmmc_reset_controller to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @au1xmmc_reset_controller(%struct.au1xmmc_host* %0) #0 {
  %2 = alloca %struct.au1xmmc_host*, align 8
  store %struct.au1xmmc_host* %0, %struct.au1xmmc_host** %2, align 8
  %3 = load i32, i32* @SD_ENABLE_CE, align 4
  %4 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %5 = call i32 @HOST_ENABLE(%struct.au1xmmc_host* %4)
  %6 = call i32 @au_writel(i32 %3, i32 %5)
  %7 = call i32 @au_sync_delay(i32 1)
  %8 = load i32, i32* @SD_ENABLE_R, align 4
  %9 = load i32, i32* @SD_ENABLE_CE, align 4
  %10 = or i32 %8, %9
  %11 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %12 = call i32 @HOST_ENABLE(%struct.au1xmmc_host* %11)
  %13 = call i32 @au_writel(i32 %10, i32 %12)
  %14 = call i32 @au_sync_delay(i32 5)
  %15 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %16 = call i32 @HOST_STATUS(%struct.au1xmmc_host* %15)
  %17 = call i32 @au_writel(i32 -1, i32 %16)
  %18 = call i32 (...) @au_sync()
  %19 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %20 = call i32 @HOST_BLKSIZE(%struct.au1xmmc_host* %19)
  %21 = call i32 @au_writel(i32 0, i32 %20)
  %22 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %23 = call i32 @HOST_TIMEOUT(%struct.au1xmmc_host* %22)
  %24 = call i32 @au_writel(i32 2097151, i32 %23)
  %25 = call i32 (...) @au_sync()
  %26 = load i32, i32* @SD_CONFIG2_EN, align 4
  %27 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %28 = call i32 @HOST_CONFIG2(%struct.au1xmmc_host* %27)
  %29 = call i32 @au_writel(i32 %26, i32 %28)
  %30 = call i32 (...) @au_sync()
  %31 = load i32, i32* @SD_CONFIG2_EN, align 4
  %32 = load i32, i32* @SD_CONFIG2_FF, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %35 = call i32 @HOST_CONFIG2(%struct.au1xmmc_host* %34)
  %36 = call i32 @au_writel(i32 %33, i32 %35)
  %37 = call i32 @au_sync_delay(i32 1)
  %38 = load i32, i32* @SD_CONFIG2_EN, align 4
  %39 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %40 = call i32 @HOST_CONFIG2(%struct.au1xmmc_host* %39)
  %41 = call i32 @au_writel(i32 %38, i32 %40)
  %42 = call i32 (...) @au_sync()
  %43 = load i32, i32* @AU1XMMC_INTERRUPTS, align 4
  %44 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %45 = call i32 @HOST_CONFIG(%struct.au1xmmc_host* %44)
  %46 = call i32 @au_writel(i32 %43, i32 %45)
  %47 = call i32 (...) @au_sync()
  ret void
}

declare dso_local i32 @au_writel(i32, i32) #1

declare dso_local i32 @HOST_ENABLE(%struct.au1xmmc_host*) #1

declare dso_local i32 @au_sync_delay(i32) #1

declare dso_local i32 @HOST_STATUS(%struct.au1xmmc_host*) #1

declare dso_local i32 @au_sync(...) #1

declare dso_local i32 @HOST_BLKSIZE(%struct.au1xmmc_host*) #1

declare dso_local i32 @HOST_TIMEOUT(%struct.au1xmmc_host*) #1

declare dso_local i32 @HOST_CONFIG2(%struct.au1xmmc_host*) #1

declare dso_local i32 @HOST_CONFIG(%struct.au1xmmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
