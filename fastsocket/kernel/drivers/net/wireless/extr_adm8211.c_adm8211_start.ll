; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_adm8211.c_adm8211_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_adm8211.c_adm8211_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32, %struct.adm8211_priv* }
%struct.adm8211_priv = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"hardware reset failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to initialize rings\0A\00", align 1
@adm8211_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"adm8211\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"failed to register IRQ handler\0A\00", align 1
@IER = common dso_local global i32 0, align 4
@ADM8211_IER_NIE = common dso_local global i32 0, align 4
@ADM8211_IER_AIE = common dso_local global i32 0, align 4
@ADM8211_IER_RCIE = common dso_local global i32 0, align 4
@ADM8211_IER_TCIE = common dso_local global i32 0, align 4
@ADM8211_IER_TDUIE = common dso_local global i32 0, align 4
@ADM8211_IER_GPTIE = common dso_local global i32 0, align 4
@NL80211_IFTYPE_MONITOR = common dso_local global i32 0, align 4
@RDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @adm8211_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adm8211_start(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.adm8211_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %7 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %6, i32 0, i32 1
  %8 = load %struct.adm8211_priv*, %struct.adm8211_priv** %7, align 8
  store %struct.adm8211_priv* %8, %struct.adm8211_priv** %4, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %10 = call i32 @adm8211_hw_reset(%struct.ieee80211_hw* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %15 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @wiphy_err(i32 %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %75

18:                                               ; preds = %1
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %20 = call i32 @adm8211_init_rings(%struct.ieee80211_hw* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %25 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @wiphy_err(i32 %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %75

28:                                               ; preds = %18
  %29 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %30 = call i32 @adm8211_hw_init(%struct.ieee80211_hw* %29)
  %31 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %32 = load %struct.adm8211_priv*, %struct.adm8211_priv** %4, align 8
  %33 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @adm8211_rf_set_channel(%struct.ieee80211_hw* %31, i32 %34)
  %36 = load %struct.adm8211_priv*, %struct.adm8211_priv** %4, align 8
  %37 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @adm8211_interrupt, align 4
  %42 = load i32, i32* @IRQF_SHARED, align 4
  %43 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %44 = call i32 @request_irq(i32 %40, i32 %41, i32 %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %struct.ieee80211_hw* %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %28
  %48 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %49 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @wiphy_err(i32 %50, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %75

52:                                               ; preds = %28
  %53 = load i32, i32* @IER, align 4
  %54 = load i32, i32* @ADM8211_IER_NIE, align 4
  %55 = load i32, i32* @ADM8211_IER_AIE, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @ADM8211_IER_RCIE, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @ADM8211_IER_TCIE, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @ADM8211_IER_TDUIE, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @ADM8211_IER_GPTIE, align 4
  %64 = or i32 %62, %63
  %65 = call i32 @ADM8211_CSR_WRITE(i32 %53, i32 %64)
  %66 = load i32, i32* @NL80211_IFTYPE_MONITOR, align 4
  %67 = load %struct.adm8211_priv*, %struct.adm8211_priv** %4, align 8
  %68 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %70 = call i32 @adm8211_update_mode(%struct.ieee80211_hw* %69)
  %71 = load i32, i32* @RDR, align 4
  %72 = call i32 @ADM8211_CSR_WRITE(i32 %71, i32 0)
  %73 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %74 = call i32 @adm8211_set_interval(%struct.ieee80211_hw* %73, i32 100, i32 10)
  store i32 0, i32* %2, align 4
  br label %77

75:                                               ; preds = %47, %23, %13
  %76 = load i32, i32* %5, align 4
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %75, %52
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @adm8211_hw_reset(%struct.ieee80211_hw*) #1

declare dso_local i32 @wiphy_err(i32, i8*) #1

declare dso_local i32 @adm8211_init_rings(%struct.ieee80211_hw*) #1

declare dso_local i32 @adm8211_hw_init(%struct.ieee80211_hw*) #1

declare dso_local i32 @adm8211_rf_set_channel(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.ieee80211_hw*) #1

declare dso_local i32 @ADM8211_CSR_WRITE(i32, i32) #1

declare dso_local i32 @adm8211_update_mode(%struct.ieee80211_hw*) #1

declare dso_local i32 @adm8211_set_interval(%struct.ieee80211_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
