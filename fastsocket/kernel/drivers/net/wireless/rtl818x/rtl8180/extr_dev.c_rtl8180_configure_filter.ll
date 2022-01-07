; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rtl818x/rtl8180/extr_dev.c_rtl8180_configure_filter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rtl818x/rtl8180/extr_dev.c_rtl8180_configure_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rtl8180_priv* }
%struct.rtl8180_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@FIF_FCSFAIL = common dso_local global i32 0, align 4
@RTL818X_RX_CONF_FCS = common dso_local global i32 0, align 4
@FIF_CONTROL = common dso_local global i32 0, align 4
@RTL818X_RX_CONF_CTRL = common dso_local global i32 0, align 4
@FIF_OTHER_BSS = common dso_local global i32 0, align 4
@RTL818X_RX_CONF_MONITOR = common dso_local global i32 0, align 4
@FIF_ALLMULTI = common dso_local global i32 0, align 4
@RTL818X_RX_CONF_MULTICAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, i32*, i64)* @rtl8180_configure_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8180_configure_filter(%struct.ieee80211_hw* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.rtl8180_priv*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %11 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %10, i32 0, i32 0
  %12 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %11, align 8
  store %struct.rtl8180_priv* %12, %struct.rtl8180_priv** %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @FIF_FCSFAIL, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %4
  %18 = load i32, i32* @RTL818X_RX_CONF_FCS, align 4
  %19 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %9, align 8
  %20 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = xor i32 %21, %18
  store i32 %22, i32* %20, align 8
  br label %23

23:                                               ; preds = %17, %4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @FIF_CONTROL, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load i32, i32* @RTL818X_RX_CONF_CTRL, align 4
  %30 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %9, align 8
  %31 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = xor i32 %32, %29
  store i32 %33, i32* %31, align 8
  br label %34

34:                                               ; preds = %28, %23
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @FIF_OTHER_BSS, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load i32, i32* @RTL818X_RX_CONF_MONITOR, align 4
  %41 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %9, align 8
  %42 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = xor i32 %43, %40
  store i32 %44, i32* %42, align 8
  br label %45

45:                                               ; preds = %39, %34
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @FIF_ALLMULTI, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %45
  %52 = load i64, i64* %8, align 8
  %53 = icmp sgt i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %51, %45
  %55 = load i32, i32* @RTL818X_RX_CONF_MULTICAST, align 4
  %56 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %9, align 8
  %57 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 8
  br label %67

60:                                               ; preds = %51
  %61 = load i32, i32* @RTL818X_RX_CONF_MULTICAST, align 4
  %62 = xor i32 %61, -1
  %63 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %9, align 8
  %64 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = and i32 %65, %62
  store i32 %66, i32* %64, align 8
  br label %67

67:                                               ; preds = %60, %54
  %68 = load i32*, i32** %7, align 8
  store i32 0, i32* %68, align 4
  %69 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %9, align 8
  %70 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @RTL818X_RX_CONF_FCS, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %67
  %76 = load i32, i32* @FIF_FCSFAIL, align 4
  %77 = load i32*, i32** %7, align 8
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %76
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %75, %67
  %81 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %9, align 8
  %82 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @RTL818X_RX_CONF_CTRL, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %80
  %88 = load i32, i32* @FIF_CONTROL, align 4
  %89 = load i32*, i32** %7, align 8
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %88
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %87, %80
  %93 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %9, align 8
  %94 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @RTL818X_RX_CONF_MONITOR, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %92
  %100 = load i32, i32* @FIF_OTHER_BSS, align 4
  %101 = load i32*, i32** %7, align 8
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, %100
  store i32 %103, i32* %101, align 4
  br label %104

104:                                              ; preds = %99, %92
  %105 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %9, align 8
  %106 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @RTL818X_RX_CONF_MULTICAST, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %104
  %112 = load i32, i32* @FIF_ALLMULTI, align 4
  %113 = load i32*, i32** %7, align 8
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %112
  store i32 %115, i32* %113, align 4
  br label %116

116:                                              ; preds = %111, %104
  %117 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %9, align 8
  %118 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %9, align 8
  %119 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %118, i32 0, i32 1
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %9, align 8
  %123 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @rtl818x_iowrite32(%struct.rtl8180_priv* %117, i32* %121, i32 %124)
  ret void
}

declare dso_local i32 @rtl818x_iowrite32(%struct.rtl8180_priv*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
