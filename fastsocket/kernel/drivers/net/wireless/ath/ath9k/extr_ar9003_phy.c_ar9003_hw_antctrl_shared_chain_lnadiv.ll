; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_phy.c_ar9003_hw_antctrl_shared_chain_lnadiv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_phy.c_ar9003_hw_antctrl_shared_chain_lnadiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ath_hw*, i32)* }

@EEP_ANT_DIV_CTL1 = common dso_local global i32 0, align 4
@AR_PHY_MC_GAIN_CTRL = common dso_local global i32 0, align 4
@AR_ANT_DIV_CTRL_ALL = common dso_local global i32 0, align 4
@AR_ANT_DIV_CTRL_ALL_S = common dso_local global i32 0, align 4
@AR_PHY_ANT_DIV_LNADIV = common dso_local global i32 0, align 4
@AR_PHY_ANT_DIV_LNADIV_S = common dso_local global i32 0, align 4
@AR_ANT_DIV_ENABLE = common dso_local global i32 0, align 4
@AR_PHY_CCK_DETECT = common dso_local global i32 0, align 4
@AR_FAST_DIV_ENABLE = common dso_local global i32 0, align 4
@AR_FAST_DIV_ENABLE_S = common dso_local global i32 0, align 4
@AR_PHY_ANT_SW_RX_PROT_S = common dso_local global i32 0, align 4
@AR_PHY_RESTART = common dso_local global i32 0, align 4
@AR_PHY_RESTART_ENABLE_DIV_M2FLAG = common dso_local global i32 0, align 4
@AR_BTCOEX_WL_LNADIV = common dso_local global i32 0, align 4
@AR_BTCOEX_WL_LNADIV_FORCE_ON = common dso_local global i32 0, align 4
@AR_PHY_ANT_DIV_MAIN_LNACONF = common dso_local global i32 0, align 4
@AR_PHY_ANT_DIV_ALT_LNACONF = common dso_local global i32 0, align 4
@AR_PHY_ANT_DIV_MAIN_GAINTB = common dso_local global i32 0, align 4
@AR_PHY_ANT_DIV_ALT_GAINTB = common dso_local global i32 0, align 4
@AR_PHY_ANT_DIV_LNA1 = common dso_local global i32 0, align 4
@AR_PHY_ANT_DIV_MAIN_LNACONF_S = common dso_local global i32 0, align 4
@AR_PHY_ANT_DIV_LNA2 = common dso_local global i32 0, align 4
@AR_PHY_ANT_DIV_ALT_LNACONF_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, i32)* @ar9003_hw_antctrl_shared_chain_lnadiv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_hw_antctrl_shared_chain_lnadiv(%struct.ath_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %8 = call i32 @AR_SREV_9565(%struct.ath_hw* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %156

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %14 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %16 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.ath_hw*, i32)*, i32 (%struct.ath_hw*, i32)** %18, align 8
  %20 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %21 = load i32, i32* @EEP_ANT_DIV_CTL1, align 4
  %22 = call i32 %19(%struct.ath_hw* %20, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %24 = load i32, i32* @AR_PHY_MC_GAIN_CTRL, align 4
  %25 = call i32 @REG_READ(%struct.ath_hw* %23, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* @AR_ANT_DIV_CTRL_ALL, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %5, align 4
  %31 = and i32 %30, 63
  %32 = load i32, i32* @AR_ANT_DIV_CTRL_ALL_S, align 4
  %33 = shl i32 %31, %32
  %34 = load i32, i32* %6, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* @AR_PHY_ANT_DIV_LNADIV, align 4
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %6, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %5, align 4
  %41 = ashr i32 %40, 6
  %42 = and i32 %41, 1
  %43 = load i32, i32* @AR_PHY_ANT_DIV_LNADIV_S, align 4
  %44 = shl i32 %42, %43
  %45 = load i32, i32* %6, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %11
  %50 = load i32, i32* @AR_ANT_DIV_ENABLE, align 4
  %51 = load i32, i32* %6, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %49, %11
  %54 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %55 = load i32, i32* @AR_PHY_MC_GAIN_CTRL, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @REG_WRITE(%struct.ath_hw* %54, i32 %55, i32 %56)
  %58 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %59 = load i32, i32* @AR_PHY_CCK_DETECT, align 4
  %60 = call i32 @REG_READ(%struct.ath_hw* %58, i32 %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* @AR_FAST_DIV_ENABLE, align 4
  %62 = xor i32 %61, -1
  %63 = load i32, i32* %6, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %5, align 4
  %66 = ashr i32 %65, 7
  %67 = and i32 %66, 1
  %68 = load i32, i32* @AR_FAST_DIV_ENABLE_S, align 4
  %69 = shl i32 %67, %68
  %70 = load i32, i32* %6, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %4, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %53
  %75 = load i32, i32* @AR_FAST_DIV_ENABLE, align 4
  %76 = load i32, i32* %6, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %6, align 4
  br label %78

78:                                               ; preds = %74, %53
  %79 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %80 = load i32, i32* @AR_PHY_CCK_DETECT, align 4
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @REG_WRITE(%struct.ath_hw* %79, i32 %80, i32 %81)
  %83 = load i32, i32* %4, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %111

85:                                               ; preds = %78
  %86 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %87 = load i32, i32* @AR_PHY_MC_GAIN_CTRL, align 4
  %88 = load i32, i32* @AR_PHY_ANT_SW_RX_PROT_S, align 4
  %89 = shl i32 1, %88
  %90 = call i32 @REG_SET_BIT(%struct.ath_hw* %86, i32 %87, i32 %89)
  %91 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %92 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %106

95:                                               ; preds = %85
  %96 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %97 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = call i64 @IS_CHAN_2GHZ(i64 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %95
  %102 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %103 = load i32, i32* @AR_PHY_RESTART, align 4
  %104 = load i32, i32* @AR_PHY_RESTART_ENABLE_DIV_M2FLAG, align 4
  %105 = call i32 @REG_SET_BIT(%struct.ath_hw* %102, i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %101, %95, %85
  %107 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %108 = load i32, i32* @AR_BTCOEX_WL_LNADIV, align 4
  %109 = load i32, i32* @AR_BTCOEX_WL_LNADIV_FORCE_ON, align 4
  %110 = call i32 @REG_SET_BIT(%struct.ath_hw* %107, i32 %108, i32 %109)
  br label %156

111:                                              ; preds = %78
  %112 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %113 = load i32, i32* @AR_PHY_MC_GAIN_CTRL, align 4
  %114 = load i32, i32* @AR_ANT_DIV_ENABLE, align 4
  %115 = call i32 @REG_CLR_BIT(%struct.ath_hw* %112, i32 %113, i32 %114)
  %116 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %117 = load i32, i32* @AR_PHY_MC_GAIN_CTRL, align 4
  %118 = load i32, i32* @AR_PHY_ANT_SW_RX_PROT_S, align 4
  %119 = shl i32 1, %118
  %120 = call i32 @REG_CLR_BIT(%struct.ath_hw* %116, i32 %117, i32 %119)
  %121 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %122 = load i32, i32* @AR_PHY_CCK_DETECT, align 4
  %123 = load i32, i32* @AR_FAST_DIV_ENABLE, align 4
  %124 = call i32 @REG_CLR_BIT(%struct.ath_hw* %121, i32 %122, i32 %123)
  %125 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %126 = load i32, i32* @AR_BTCOEX_WL_LNADIV, align 4
  %127 = load i32, i32* @AR_BTCOEX_WL_LNADIV_FORCE_ON, align 4
  %128 = call i32 @REG_CLR_BIT(%struct.ath_hw* %125, i32 %126, i32 %127)
  %129 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %130 = load i32, i32* @AR_PHY_MC_GAIN_CTRL, align 4
  %131 = call i32 @REG_READ(%struct.ath_hw* %129, i32 %130)
  store i32 %131, i32* %6, align 4
  %132 = load i32, i32* @AR_PHY_ANT_DIV_MAIN_LNACONF, align 4
  %133 = load i32, i32* @AR_PHY_ANT_DIV_ALT_LNACONF, align 4
  %134 = or i32 %132, %133
  %135 = load i32, i32* @AR_PHY_ANT_DIV_MAIN_GAINTB, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* @AR_PHY_ANT_DIV_ALT_GAINTB, align 4
  %138 = or i32 %136, %137
  %139 = xor i32 %138, -1
  %140 = load i32, i32* %6, align 4
  %141 = and i32 %140, %139
  store i32 %141, i32* %6, align 4
  %142 = load i32, i32* @AR_PHY_ANT_DIV_LNA1, align 4
  %143 = load i32, i32* @AR_PHY_ANT_DIV_MAIN_LNACONF_S, align 4
  %144 = shl i32 %142, %143
  %145 = load i32, i32* %6, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %6, align 4
  %147 = load i32, i32* @AR_PHY_ANT_DIV_LNA2, align 4
  %148 = load i32, i32* @AR_PHY_ANT_DIV_ALT_LNACONF_S, align 4
  %149 = shl i32 %147, %148
  %150 = load i32, i32* %6, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %6, align 4
  %152 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %153 = load i32, i32* @AR_PHY_MC_GAIN_CTRL, align 4
  %154 = load i32, i32* %6, align 4
  %155 = call i32 @REG_WRITE(%struct.ath_hw* %152, i32 %153, i32 %154)
  br label %156

156:                                              ; preds = %10, %111, %106
  ret void
}

declare dso_local i32 @AR_SREV_9565(%struct.ath_hw*) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i64 @IS_CHAN_2GHZ(i64) #1

declare dso_local i32 @REG_CLR_BIT(%struct.ath_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
