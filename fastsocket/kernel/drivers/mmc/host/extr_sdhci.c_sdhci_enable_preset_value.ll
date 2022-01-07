; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_sdhci.c_sdhci_enable_preset_value.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_sdhci.c_sdhci_enable_preset_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.sdhci_host = type { i64, i32 }

@SDHCI_SPEC_300 = common dso_local global i64 0, align 8
@SDHCI_HOST_CONTROL2 = common dso_local global i32 0, align 4
@SDHCI_CTRL_PRESET_VAL_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, i32)* @sdhci_enable_preset_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_enable_preset_value(%struct.mmc_host* %0, i32 %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdhci_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %9 = call %struct.sdhci_host* @mmc_priv(%struct.mmc_host* %8)
  store %struct.sdhci_host* %9, %struct.sdhci_host** %5, align 8
  %10 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %11 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SDHCI_SPEC_300, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %62

16:                                               ; preds = %2
  %17 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %18 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %17, i32 0, i32 1
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %22 = load i32, i32* @SDHCI_HOST_CONTROL2, align 4
  %23 = call i32 @sdhci_readw(%struct.sdhci_host* %21, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %16
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @SDHCI_CTRL_PRESET_VAL_ENABLE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @SDHCI_CTRL_PRESET_VAL_ENABLE, align 4
  %33 = load i32, i32* %6, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %6, align 4
  %35 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @SDHCI_HOST_CONTROL2, align 4
  %38 = call i32 @sdhci_writew(%struct.sdhci_host* %35, i32 %36, i32 %37)
  br label %57

39:                                               ; preds = %26, %16
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %56, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @SDHCI_CTRL_PRESET_VAL_ENABLE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %42
  %48 = load i32, i32* @SDHCI_CTRL_PRESET_VAL_ENABLE, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %6, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %6, align 4
  %52 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @SDHCI_HOST_CONTROL2, align 4
  %55 = call i32 @sdhci_writew(%struct.sdhci_host* %52, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %47, %42, %39
  br label %57

57:                                               ; preds = %56, %31
  %58 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %59 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %58, i32 0, i32 1
  %60 = load i64, i64* %7, align 8
  %61 = call i32 @spin_unlock_irqrestore(i32* %59, i64 %60)
  br label %62

62:                                               ; preds = %57, %15
  ret void
}

declare dso_local %struct.sdhci_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @sdhci_readw(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_writew(%struct.sdhci_host*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
