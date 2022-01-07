; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_phy.c_carl9170_init_phy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_phy.c_carl9170_init_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }
%struct.ar9170 = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@IEEE80211_BAND_2GHZ = common dso_local global i32 0, align 4
@ar5416_phy_init = common dso_local global %struct.TYPE_7__* null, align 8
@AR9170_PWR_REG_PLL_ADDAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar9170*, i32)* @carl9170_init_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @carl9170_init_phy(%struct.ar9170* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ar9170*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ar9170* %0, %struct.ar9170** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @IEEE80211_BAND_2GHZ, align 4
  %13 = icmp eq i32 %11, %12
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %9, align 4
  %15 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %16 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %15, i32 0, i32 1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = call i32 @conf_is_ht40(i32* %18)
  store i32 %19, i32* %10, align 4
  %20 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %21 = call i32 @carl9170_regwrite_begin(%struct.ar9170* %20)
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %75, %2
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ar5416_phy_init, align 8
  %25 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %24)
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %78

27:                                               ; preds = %22
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %27
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ar5416_phy_init, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %8, align 4
  br label %47

40:                                               ; preds = %30
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ar5416_phy_init, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %40, %33
  br label %66

48:                                               ; preds = %27
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %48
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ar5416_phy_init, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %8, align 4
  br label %65

58:                                               ; preds = %48
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ar5416_phy_init, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %58, %51
  br label %66

66:                                               ; preds = %65, %47
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ar5416_phy_init, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @carl9170_regwrite(i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %66
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %6, align 4
  br label %22

78:                                               ; preds = %22
  %79 = call i32 (...) @carl9170_regwrite_finish()
  %80 = call i32 (...) @carl9170_regwrite_result()
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load i32, i32* %7, align 4
  store i32 %84, i32* %3, align 4
  br label %117

85:                                               ; preds = %78
  %86 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @carl9170_init_phy_from_eeprom(%struct.ar9170* %86, i32 %87, i32 %88)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %85
  %93 = load i32, i32* %7, align 4
  store i32 %93, i32* %3, align 4
  br label %117

94:                                               ; preds = %85
  %95 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %96 = call i32 @carl9170_init_power_cal(%struct.ar9170* %95)
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = load i32, i32* %7, align 4
  store i32 %100, i32* %3, align 4
  br label %117

101:                                              ; preds = %94
  %102 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %103 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %115, label %107

107:                                              ; preds = %101
  %108 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %109 = load i32, i32* @AR9170_PWR_REG_PLL_ADDAC, align 4
  %110 = load i32, i32* %9, align 4
  %111 = icmp ne i32 %110, 0
  %112 = zext i1 %111 to i64
  %113 = select i1 %111, i32 20835, i32 20803
  %114 = call i32 @carl9170_write_reg(%struct.ar9170* %108, i32 %109, i32 %113)
  store i32 %114, i32* %7, align 4
  br label %115

115:                                              ; preds = %107, %101
  %116 = load i32, i32* %7, align 4
  store i32 %116, i32* %3, align 4
  br label %117

117:                                              ; preds = %115, %99, %92, %83
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i32 @conf_is_ht40(i32*) #1

declare dso_local i32 @carl9170_regwrite_begin(%struct.ar9170*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_7__*) #1

declare dso_local i32 @carl9170_regwrite(i32, i32) #1

declare dso_local i32 @carl9170_regwrite_finish(...) #1

declare dso_local i32 @carl9170_regwrite_result(...) #1

declare dso_local i32 @carl9170_init_phy_from_eeprom(%struct.ar9170*, i32, i32) #1

declare dso_local i32 @carl9170_init_power_cal(%struct.ar9170*) #1

declare dso_local i32 @carl9170_write_reg(%struct.ar9170*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
