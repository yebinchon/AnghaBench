; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rtl818x/rtl8180/extr_sa2400.c_sa2400_rf_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rtl818x/rtl8180/extr_sa2400.c_sa2400_rf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rtl8180_priv* }
%struct.rtl8180_priv = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@RF_PARAM_ANALOGPHY = common dso_local global i32 0, align 4
@ANAPARAM_TXDACOFF_SHIFT = common dso_local global i32 0, align 4
@ANAPARAM_PWR1_MASK = common dso_local global i32 0, align 4
@ANAPARAM_PWR0_MASK = common dso_local global i32 0, align 4
@SA2400_ANA_ANAPARAM_PWR1_ON = common dso_local global i32 0, align 4
@ANAPARAM_PWR1_SHIFT = common dso_local global i32 0, align 4
@SA2400_DIG_ANAPARAM_PWR1_ON = common dso_local global i32 0, align 4
@SA2400_ANAPARAM_PWR0_ON = common dso_local global i32 0, align 4
@ANAPARAM_PWR0_SHIFT = common dso_local global i32 0, align 4
@SA2400_REG4_FIRDAC_SHIFT = common dso_local global i32 0, align 4
@sa2400_chan = common dso_local global i32* null, align 8
@SA2400_MAX_SENS = common dso_local global i32 0, align 4
@RTL818X_TX_CONF_LOOPBACK_CONT = common dso_local global i32 0, align 4
@RTL818X_CONFIG2_ANTENNA_DIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @sa2400_rf_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sa2400_rf_init(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl8180_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %9 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %8, i32 0, i32 0
  %10 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %9, align 8
  store %struct.rtl8180_priv* %10, %struct.rtl8180_priv** %3, align 8
  %11 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %12 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @RF_PARAM_ANALOGPHY, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %7, align 4
  %16 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %17 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* @ANAPARAM_TXDACOFF_SHIFT, align 4
  %20 = shl i32 1, %19
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %4, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* @ANAPARAM_PWR1_MASK, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %4, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* @ANAPARAM_PWR0_MASK, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %4, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %1
  %35 = load i32, i32* @SA2400_ANA_ANAPARAM_PWR1_ON, align 4
  %36 = load i32, i32* @ANAPARAM_PWR1_SHIFT, align 4
  %37 = shl i32 %35, %36
  %38 = load i32, i32* %4, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %53

40:                                               ; preds = %1
  %41 = load i32, i32* @SA2400_DIG_ANAPARAM_PWR1_ON, align 4
  %42 = load i32, i32* @ANAPARAM_PWR1_SHIFT, align 4
  %43 = shl i32 %41, %42
  %44 = load i32, i32* %4, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* @SA2400_ANAPARAM_PWR0_ON, align 4
  %47 = load i32, i32* @ANAPARAM_PWR0_SHIFT, align 4
  %48 = shl i32 %46, %47
  %49 = load i32, i32* %4, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* @SA2400_REG4_FIRDAC_SHIFT, align 4
  %52 = shl i32 1, %51
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %40, %34
  %54 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @rtl8180_set_anaparam(%struct.rtl8180_priv* %54, i32 %55)
  %57 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %58 = load i32*, i32** @sa2400_chan, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @write_sa2400(%struct.ieee80211_hw* %57, i32 0, i32 %60)
  %62 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %63 = call i32 @write_sa2400(%struct.ieee80211_hw* %62, i32 1, i32 47952)
  %64 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %65 = call i32 @write_sa2400(%struct.ieee80211_hw* %64, i32 2, i32 128)
  %66 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %67 = call i32 @write_sa2400(%struct.ieee80211_hw* %66, i32 3, i32 0)
  %68 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %69 = load i32, i32* %6, align 4
  %70 = or i32 103232, %69
  %71 = call i32 @write_sa2400(%struct.ieee80211_hw* %68, i32 4, i32 %70)
  %72 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %73 = load i32, i32* @SA2400_MAX_SENS, align 4
  %74 = sub nsw i32 %73, 54
  %75 = shl i32 %74, 15
  %76 = or i32 7675, %75
  %77 = call i32 @write_sa2400(%struct.ieee80211_hw* %72, i32 5, i32 %76)
  %78 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %79 = load i32, i32* %6, align 4
  %80 = or i32 103240, %79
  %81 = call i32 @write_sa2400(%struct.ieee80211_hw* %78, i32 4, i32 %80)
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %53
  %85 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %86 = call i32 @write_sa2400(%struct.ieee80211_hw* %85, i32 4, i32 103308)
  br label %87

87:                                               ; preds = %84, %53
  %88 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %89 = load i32, i32* %6, align 4
  %90 = or i32 103232, %89
  %91 = call i32 @write_sa2400(%struct.ieee80211_hw* %88, i32 4, i32 %90)
  %92 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %93 = load i32*, i32** @sa2400_chan, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @write_sa2400(%struct.ieee80211_hw* %92, i32 0, i32 %95)
  %97 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %98 = call i32 @write_sa2400(%struct.ieee80211_hw* %97, i32 1, i32 47952)
  %99 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %100 = call i32 @write_sa2400(%struct.ieee80211_hw* %99, i32 2, i32 128)
  %101 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %102 = call i32 @write_sa2400(%struct.ieee80211_hw* %101, i32 3, i32 0)
  %103 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %104 = load i32, i32* %6, align 4
  %105 = or i32 103236, %104
  %106 = call i32 @write_sa2400(%struct.ieee80211_hw* %103, i32 4, i32 %105)
  %107 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %108 = call i32 @write_sa2400(%struct.ieee80211_hw* %107, i32 6, i32 8393727)
  %109 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %110 = call i32 @write_sa2400(%struct.ieee80211_hw* %109, i32 8, i32 0)
  %111 = load i32, i32* %7, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %149

113:                                              ; preds = %87
  %114 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* @ANAPARAM_TXDACOFF_SHIFT, align 4
  %117 = shl i32 1, %116
  %118 = or i32 %115, %117
  %119 = call i32 @rtl8180_set_anaparam(%struct.rtl8180_priv* %114, i32 %118)
  %120 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %121 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %122 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %121, i32 0, i32 3
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 1
  %125 = call i32 @rtl818x_ioread32(%struct.rtl8180_priv* %120, i32* %124)
  store i32 %125, i32* %5, align 4
  %126 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %127 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %128 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %127, i32 0, i32 3
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 1
  %131 = load i32, i32* %5, align 4
  %132 = load i32, i32* @RTL818X_TX_CONF_LOOPBACK_CONT, align 4
  %133 = or i32 %131, %132
  %134 = call i32 @rtl818x_iowrite32(%struct.rtl8180_priv* %126, i32* %130, i32 %133)
  %135 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %136 = call i32 @write_sa2400(%struct.ieee80211_hw* %135, i32 4, i32 103233)
  %137 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %138 = call i32 @write_sa2400(%struct.ieee80211_hw* %137, i32 4, i32 103237)
  %139 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %140 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %141 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %140, i32 0, i32 3
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 1
  %144 = load i32, i32* %5, align 4
  %145 = call i32 @rtl818x_iowrite32(%struct.rtl8180_priv* %139, i32* %143, i32 %144)
  %146 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %147 = load i32, i32* %4, align 4
  %148 = call i32 @rtl8180_set_anaparam(%struct.rtl8180_priv* %146, i32 %147)
  br label %149

149:                                              ; preds = %113, %87
  %150 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %151 = load i32, i32* %6, align 4
  %152 = or i32 103233, %151
  %153 = call i32 @write_sa2400(%struct.ieee80211_hw* %150, i32 4, i32 %152)
  %154 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %155 = call i32 @rtl8180_write_phy(%struct.ieee80211_hw* %154, i32 0, i32 152)
  %156 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %157 = call i32 @rtl8180_write_phy(%struct.ieee80211_hw* %156, i32 3, i32 56)
  %158 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %159 = call i32 @rtl8180_write_phy(%struct.ieee80211_hw* %158, i32 4, i32 224)
  %160 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %161 = call i32 @rtl8180_write_phy(%struct.ieee80211_hw* %160, i32 5, i32 144)
  %162 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %163 = call i32 @rtl8180_write_phy(%struct.ieee80211_hw* %162, i32 6, i32 26)
  %164 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %165 = call i32 @rtl8180_write_phy(%struct.ieee80211_hw* %164, i32 7, i32 100)
  %166 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %167 = call i32 @sa2400_write_phy_antenna(%struct.ieee80211_hw* %166, i32 1)
  %168 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %169 = call i32 @rtl8180_write_phy(%struct.ieee80211_hw* %168, i32 17, i32 128)
  %170 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %171 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %172 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %171, i32 0, i32 3
  %173 = load %struct.TYPE_2__*, %struct.TYPE_2__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 0
  %175 = call i32 @rtl818x_ioread8(%struct.rtl8180_priv* %170, i32* %174)
  %176 = load i32, i32* @RTL818X_CONFIG2_ANTENNA_DIV, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %149
  %180 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %181 = call i32 @rtl8180_write_phy(%struct.ieee80211_hw* %180, i32 18, i32 199)
  br label %185

182:                                              ; preds = %149
  %183 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %184 = call i32 @rtl8180_write_phy(%struct.ieee80211_hw* %183, i32 18, i32 71)
  br label %185

185:                                              ; preds = %182, %179
  %186 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %187 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %188 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = or i32 144, %189
  %191 = call i32 @rtl8180_write_phy(%struct.ieee80211_hw* %186, i32 19, i32 %190)
  %192 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %193 = call i32 @rtl8180_write_phy(%struct.ieee80211_hw* %192, i32 25, i32 0)
  %194 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %195 = call i32 @rtl8180_write_phy(%struct.ieee80211_hw* %194, i32 26, i32 160)
  ret void
}

declare dso_local i32 @rtl8180_set_anaparam(%struct.rtl8180_priv*, i32) #1

declare dso_local i32 @write_sa2400(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @rtl818x_ioread32(%struct.rtl8180_priv*, i32*) #1

declare dso_local i32 @rtl818x_iowrite32(%struct.rtl8180_priv*, i32*, i32) #1

declare dso_local i32 @rtl8180_write_phy(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @sa2400_write_phy_antenna(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @rtl818x_ioread8(%struct.rtl8180_priv*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
