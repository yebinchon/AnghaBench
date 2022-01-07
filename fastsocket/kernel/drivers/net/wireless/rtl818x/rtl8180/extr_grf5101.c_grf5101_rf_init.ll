; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rtl818x/rtl8180/extr_grf5101.c_grf5101_rf_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rtl818x/rtl8180/extr_grf5101.c_grf5101_rf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rtl8180_priv* }
%struct.rtl8180_priv = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@RTL818X_CONFIG2_ANTENNA_DIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @grf5101_rf_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @grf5101_rf_init(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl8180_priv*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %4 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %5 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %4, i32 0, i32 0
  %6 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  store %struct.rtl8180_priv* %6, %struct.rtl8180_priv** %3, align 8
  %7 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %8 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %9 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @rtl8180_set_anaparam(%struct.rtl8180_priv* %7, i32 %10)
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %13 = call i32 @write_grf5101(%struct.ieee80211_hw* %12, i32 31, i32 0)
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %15 = call i32 @write_grf5101(%struct.ieee80211_hw* %14, i32 31, i32 0)
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %17 = call i32 @write_grf5101(%struct.ieee80211_hw* %16, i32 31, i32 64)
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %19 = call i32 @write_grf5101(%struct.ieee80211_hw* %18, i32 31, i32 96)
  %20 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %21 = call i32 @write_grf5101(%struct.ieee80211_hw* %20, i32 31, i32 97)
  %22 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %23 = call i32 @write_grf5101(%struct.ieee80211_hw* %22, i32 31, i32 97)
  %24 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %25 = call i32 @write_grf5101(%struct.ieee80211_hw* %24, i32 0, i32 2788)
  %26 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %27 = call i32 @write_grf5101(%struct.ieee80211_hw* %26, i32 31, i32 1)
  %28 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %29 = call i32 @write_grf5101(%struct.ieee80211_hw* %28, i32 31, i32 65)
  %30 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %31 = call i32 @write_grf5101(%struct.ieee80211_hw* %30, i32 31, i32 97)
  %32 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %33 = call i32 @write_grf5101(%struct.ieee80211_hw* %32, i32 1, i32 6691)
  %34 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %35 = call i32 @write_grf5101(%struct.ieee80211_hw* %34, i32 2, i32 18801)
  %36 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %37 = call i32 @write_grf5101(%struct.ieee80211_hw* %36, i32 3, i32 16862)
  %38 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %39 = call i32 @write_grf5101(%struct.ieee80211_hw* %38, i32 4, i32 11648)
  %40 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %41 = call i32 @write_grf5101(%struct.ieee80211_hw* %40, i32 5, i32 26879)
  %42 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %43 = call i32 @write_grf5101(%struct.ieee80211_hw* %42, i32 6, i32 0)
  %44 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %45 = call i32 @write_grf5101(%struct.ieee80211_hw* %44, i32 7, i32 0)
  %46 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %47 = call i32 @write_grf5101(%struct.ieee80211_hw* %46, i32 8, i32 30003)
  %48 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %49 = call i32 @write_grf5101(%struct.ieee80211_hw* %48, i32 9, i32 50177)
  %50 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %51 = call i32 @write_grf5101(%struct.ieee80211_hw* %50, i32 10, i32 0)
  %52 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %53 = call i32 @write_grf5101(%struct.ieee80211_hw* %52, i32 12, i32 455)
  %54 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %55 = call i32 @write_grf5101(%struct.ieee80211_hw* %54, i32 13, i32 10707)
  %56 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %57 = call i32 @write_grf5101(%struct.ieee80211_hw* %56, i32 14, i32 744)
  %58 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %59 = call i32 @write_grf5101(%struct.ieee80211_hw* %58, i32 16, i32 402)
  %60 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %61 = call i32 @write_grf5101(%struct.ieee80211_hw* %60, i32 17, i32 584)
  %62 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %63 = call i32 @write_grf5101(%struct.ieee80211_hw* %62, i32 18, i32 0)
  %64 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %65 = call i32 @write_grf5101(%struct.ieee80211_hw* %64, i32 19, i32 8388)
  %66 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %67 = call i32 @write_grf5101(%struct.ieee80211_hw* %66, i32 20, i32 62716)
  %68 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %69 = call i32 @write_grf5101(%struct.ieee80211_hw* %68, i32 21, i32 0)
  %70 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %71 = call i32 @write_grf5101(%struct.ieee80211_hw* %70, i32 22, i32 5376)
  %72 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %73 = call i32 @write_grf5101(%struct.ieee80211_hw* %72, i32 7, i32 4096)
  %74 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %75 = call i32 @rtl8180_write_phy(%struct.ieee80211_hw* %74, i32 0, i32 168)
  %76 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %77 = call i32 @rtl8180_write_phy(%struct.ieee80211_hw* %76, i32 3, i32 0)
  %78 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %79 = call i32 @rtl8180_write_phy(%struct.ieee80211_hw* %78, i32 4, i32 192)
  %80 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %81 = call i32 @rtl8180_write_phy(%struct.ieee80211_hw* %80, i32 5, i32 144)
  %82 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %83 = call i32 @rtl8180_write_phy(%struct.ieee80211_hw* %82, i32 6, i32 30)
  %84 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %85 = call i32 @rtl8180_write_phy(%struct.ieee80211_hw* %84, i32 7, i32 100)
  %86 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %87 = call i32 @grf5101_write_phy_antenna(%struct.ieee80211_hw* %86, i32 1)
  %88 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %89 = call i32 @rtl8180_write_phy(%struct.ieee80211_hw* %88, i32 17, i32 136)
  %90 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %91 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %92 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %91, i32 0, i32 1
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = call i32 @rtl818x_ioread8(%struct.rtl8180_priv* %90, i32* %94)
  %96 = load i32, i32* @RTL818X_CONFIG2_ANTENNA_DIV, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %1
  %100 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %101 = call i32 @rtl8180_write_phy(%struct.ieee80211_hw* %100, i32 18, i32 192)
  br label %105

102:                                              ; preds = %1
  %103 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %104 = call i32 @rtl8180_write_phy(%struct.ieee80211_hw* %103, i32 18, i32 64)
  br label %105

105:                                              ; preds = %102, %99
  %106 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %107 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %108 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = or i32 144, %109
  %111 = call i32 @rtl8180_write_phy(%struct.ieee80211_hw* %106, i32 19, i32 %110)
  %112 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %113 = call i32 @rtl8180_write_phy(%struct.ieee80211_hw* %112, i32 25, i32 0)
  %114 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %115 = call i32 @rtl8180_write_phy(%struct.ieee80211_hw* %114, i32 26, i32 160)
  %116 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %117 = call i32 @rtl8180_write_phy(%struct.ieee80211_hw* %116, i32 27, i32 68)
  ret void
}

declare dso_local i32 @rtl8180_set_anaparam(%struct.rtl8180_priv*, i32) #1

declare dso_local i32 @write_grf5101(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @rtl8180_write_phy(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @grf5101_write_phy_antenna(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @rtl818x_ioread8(%struct.rtl8180_priv*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
