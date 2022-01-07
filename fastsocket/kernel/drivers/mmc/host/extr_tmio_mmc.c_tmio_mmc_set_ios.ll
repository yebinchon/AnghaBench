; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_tmio_mmc.c_tmio_mmc_set_ios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_tmio_mmc.c_tmio_mmc_set_ios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_ios = type { i32, i32, i32 }
%struct.tmio_mmc_host = type { i32 }

@CNF_PWR_CTL_2 = common dso_local global i32 0, align 4
@CTL_SD_MEM_CARD_OPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_ios*)* @tmio_mmc_set_ios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tmio_mmc_set_ios(%struct.mmc_host* %0, %struct.mmc_ios* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_ios*, align 8
  %5 = alloca %struct.tmio_mmc_host*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_ios* %1, %struct.mmc_ios** %4, align 8
  %6 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %7 = call %struct.tmio_mmc_host* @mmc_priv(%struct.mmc_host* %6)
  store %struct.tmio_mmc_host* %7, %struct.tmio_mmc_host** %5, align 8
  %8 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %9 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %14 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %15 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @tmio_mmc_set_clock(%struct.tmio_mmc_host* %13, i32 %16)
  br label %18

18:                                               ; preds = %12, %2
  %19 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %20 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %35 [
    i32 130, label %22
    i32 129, label %28
    i32 128, label %32
  ]

22:                                               ; preds = %18
  %23 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %24 = load i32, i32* @CNF_PWR_CTL_2, align 4
  %25 = call i32 @sd_config_write8(%struct.tmio_mmc_host* %23, i32 %24, i32 0)
  %26 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %27 = call i32 @tmio_mmc_clk_stop(%struct.tmio_mmc_host* %26)
  br label %35

28:                                               ; preds = %18
  %29 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %30 = load i32, i32* @CNF_PWR_CTL_2, align 4
  %31 = call i32 @sd_config_write8(%struct.tmio_mmc_host* %29, i32 %30, i32 2)
  br label %35

32:                                               ; preds = %18
  %33 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %34 = call i32 @tmio_mmc_clk_start(%struct.tmio_mmc_host* %33)
  br label %35

35:                                               ; preds = %18, %32, %28, %22
  %36 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %37 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %47 [
    i32 132, label %39
    i32 131, label %43
  ]

39:                                               ; preds = %35
  %40 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %41 = load i32, i32* @CTL_SD_MEM_CARD_OPT, align 4
  %42 = call i32 @sd_ctrl_write16(%struct.tmio_mmc_host* %40, i32 %41, i32 32992)
  br label %47

43:                                               ; preds = %35
  %44 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %45 = load i32, i32* @CTL_SD_MEM_CARD_OPT, align 4
  %46 = call i32 @sd_ctrl_write16(%struct.tmio_mmc_host* %44, i32 %45, i32 224)
  br label %47

47:                                               ; preds = %35, %43, %39
  %48 = call i32 @udelay(i32 140)
  ret void
}

declare dso_local %struct.tmio_mmc_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @tmio_mmc_set_clock(%struct.tmio_mmc_host*, i32) #1

declare dso_local i32 @sd_config_write8(%struct.tmio_mmc_host*, i32, i32) #1

declare dso_local i32 @tmio_mmc_clk_stop(%struct.tmio_mmc_host*) #1

declare dso_local i32 @tmio_mmc_clk_start(%struct.tmio_mmc_host*) #1

declare dso_local i32 @sd_ctrl_write16(%struct.tmio_mmc_host*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
