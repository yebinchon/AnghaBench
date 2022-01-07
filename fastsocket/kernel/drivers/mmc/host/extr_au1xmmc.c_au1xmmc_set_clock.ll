; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_au1xmmc.c_au1xmmc_set_clock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_au1xmmc.c_au1xmmc_set_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au1xmmc_host = type { i32 }

@SYS_POWERCTRL = common dso_local global i32 0, align 4
@SD_CONFIG_DIV = common dso_local global i32 0, align 4
@SD_CONFIG_DE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.au1xmmc_host*, i32)* @au1xmmc_set_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @au1xmmc_set_clock(%struct.au1xmmc_host* %0, i32 %1) #0 {
  %3 = alloca %struct.au1xmmc_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.au1xmmc_host* %0, %struct.au1xmmc_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = call i32 (...) @get_au1x00_speed()
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @SYS_POWERCTRL, align 4
  %10 = call i32 @au_readl(i32 %9)
  %11 = and i32 %10, 3
  %12 = add nsw i32 %11, 2
  %13 = load i32, i32* %5, align 4
  %14 = udiv i32 %13, %12
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = udiv i32 %15, 2
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %4, align 4
  %19 = udiv i32 %17, %18
  %20 = udiv i32 %19, 2
  %21 = sub i32 %20, 1
  store i32 %21, i32* %6, align 4
  %22 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %23 = call i32 @HOST_CONFIG(%struct.au1xmmc_host* %22)
  %24 = call i32 @au_readl(i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* @SD_CONFIG_DIV, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @SD_CONFIG_DIV, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* @SD_CONFIG_DE, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* %7, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %38 = call i32 @HOST_CONFIG(%struct.au1xmmc_host* %37)
  %39 = call i32 @au_writel(i32 %36, i32 %38)
  %40 = call i32 (...) @au_sync()
  ret void
}

declare dso_local i32 @get_au1x00_speed(...) #1

declare dso_local i32 @au_readl(i32) #1

declare dso_local i32 @HOST_CONFIG(%struct.au1xmmc_host*) #1

declare dso_local i32 @au_writel(i32, i32) #1

declare dso_local i32 @au_sync(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
