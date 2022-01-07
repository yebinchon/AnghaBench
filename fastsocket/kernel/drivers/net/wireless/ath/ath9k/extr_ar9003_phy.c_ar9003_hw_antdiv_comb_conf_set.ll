; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_phy.c_ar9003_hw_antdiv_comb_conf_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_phy.c_ar9003_hw_antdiv_comb_conf_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath_hw_antcomb_conf = type { i32, i32, i32, i32, i32 }

@AR_PHY_MC_GAIN_CTRL = common dso_local global i32 0, align 4
@AR_PHY_ANT_DIV_MAIN_LNACONF = common dso_local global i32 0, align 4
@AR_PHY_ANT_DIV_ALT_LNACONF = common dso_local global i32 0, align 4
@AR_PHY_ANT_FAST_DIV_BIAS = common dso_local global i32 0, align 4
@AR_PHY_ANT_DIV_MAIN_GAINTB = common dso_local global i32 0, align 4
@AR_PHY_ANT_DIV_ALT_GAINTB = common dso_local global i32 0, align 4
@AR_PHY_ANT_DIV_MAIN_LNACONF_S = common dso_local global i32 0, align 4
@AR_PHY_ANT_DIV_ALT_LNACONF_S = common dso_local global i32 0, align 4
@AR_PHY_ANT_FAST_DIV_BIAS_S = common dso_local global i32 0, align 4
@AR_PHY_ANT_DIV_MAIN_GAINTB_S = common dso_local global i32 0, align 4
@AR_PHY_ANT_DIV_ALT_GAINTB_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, %struct.ath_hw_antcomb_conf*)* @ar9003_hw_antdiv_comb_conf_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_hw_antdiv_comb_conf_set(%struct.ath_hw* %0, %struct.ath_hw_antcomb_conf* %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath_hw_antcomb_conf*, align 8
  %5 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store %struct.ath_hw_antcomb_conf* %1, %struct.ath_hw_antcomb_conf** %4, align 8
  %6 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %7 = load i32, i32* @AR_PHY_MC_GAIN_CTRL, align 4
  %8 = call i32 @REG_READ(%struct.ath_hw* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @AR_PHY_ANT_DIV_MAIN_LNACONF, align 4
  %10 = load i32, i32* @AR_PHY_ANT_DIV_ALT_LNACONF, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @AR_PHY_ANT_FAST_DIV_BIAS, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @AR_PHY_ANT_DIV_MAIN_GAINTB, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @AR_PHY_ANT_DIV_ALT_GAINTB, align 4
  %17 = or i32 %15, %16
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %5, align 4
  %21 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %22 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @AR_PHY_ANT_DIV_MAIN_LNACONF_S, align 4
  %25 = shl i32 %23, %24
  %26 = load i32, i32* @AR_PHY_ANT_DIV_MAIN_LNACONF, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %5, align 4
  %30 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %31 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @AR_PHY_ANT_DIV_ALT_LNACONF_S, align 4
  %34 = shl i32 %32, %33
  %35 = load i32, i32* @AR_PHY_ANT_DIV_ALT_LNACONF, align 4
  %36 = and i32 %34, %35
  %37 = load i32, i32* %5, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %5, align 4
  %39 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %40 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @AR_PHY_ANT_FAST_DIV_BIAS_S, align 4
  %43 = shl i32 %41, %42
  %44 = load i32, i32* @AR_PHY_ANT_FAST_DIV_BIAS, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* %5, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %5, align 4
  %48 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %49 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @AR_PHY_ANT_DIV_MAIN_GAINTB_S, align 4
  %52 = shl i32 %50, %51
  %53 = load i32, i32* @AR_PHY_ANT_DIV_MAIN_GAINTB, align 4
  %54 = and i32 %52, %53
  %55 = load i32, i32* %5, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %5, align 4
  %57 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %58 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @AR_PHY_ANT_DIV_ALT_GAINTB_S, align 4
  %61 = shl i32 %59, %60
  %62 = load i32, i32* @AR_PHY_ANT_DIV_ALT_GAINTB, align 4
  %63 = and i32 %61, %62
  %64 = load i32, i32* %5, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %5, align 4
  %66 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %67 = load i32, i32* @AR_PHY_MC_GAIN_CTRL, align 4
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @REG_WRITE(%struct.ath_hw* %66, i32 %67, i32 %68)
  ret void
}

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
