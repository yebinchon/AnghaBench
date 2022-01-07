; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_main.c_carl9170_op_configure_filter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_main.c_carl9170_op_configure_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ar9170* }
%struct.ar9170 = type { i32, i32, i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@FIF_ALLMULTI = common dso_local global i32 0, align 4
@FIF_OTHER_BSS = common dso_local global i32 0, align 4
@FIF_PROMISC_IN_BSS = common dso_local global i32 0, align 4
@CARL9170_RX_FILTER_CTL_OTHER = common dso_local global i32 0, align 4
@FIF_FCSFAIL = common dso_local global i32 0, align 4
@FIF_PLCPFAIL = common dso_local global i32 0, align 4
@CARL9170_RX_FILTER_BAD = common dso_local global i32 0, align 4
@FIF_CONTROL = common dso_local global i32 0, align 4
@FIF_PSPOLL = common dso_local global i32 0, align 4
@CARL9170_RX_FILTER_CTL_PSPOLL = common dso_local global i32 0, align 4
@CARL9170_RX_FILTER_OTHER_RA = common dso_local global i32 0, align 4
@CARL9170_RX_FILTER_DECRY_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, i32*, i64)* @carl9170_op_configure_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @carl9170_op_configure_filter(%struct.ieee80211_hw* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ar9170*, align 8
  %10 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %11, i32 0, i32 0
  %13 = load %struct.ar9170*, %struct.ar9170** %12, align 8
  store %struct.ar9170* %13, %struct.ar9170** %9, align 8
  %14 = load i32, i32* @FIF_ALLMULTI, align 4
  %15 = load %struct.ar9170*, %struct.ar9170** %9, align 8
  %16 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = or i32 %14, %17
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, %18
  store i32 %21, i32* %19, align 4
  %22 = load %struct.ar9170*, %struct.ar9170** %9, align 8
  %23 = call i32 @IS_ACCEPTING_CMD(%struct.ar9170* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %4
  br label %153

26:                                               ; preds = %4
  %27 = load %struct.ar9170*, %struct.ar9170** %9, align 8
  %28 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %27, i32 0, i32 4
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ar9170*, %struct.ar9170** %9, align 8
  %33 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @FIF_ALLMULTI, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %26
  store i64 -1, i64* %8, align 8
  br label %40

40:                                               ; preds = %39, %26
  %41 = load i64, i64* %8, align 8
  %42 = load %struct.ar9170*, %struct.ar9170** %9, align 8
  %43 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %41, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load %struct.ar9170*, %struct.ar9170** %9, align 8
  %48 = load i64, i64* %8, align 8
  %49 = call i32 @carl9170_update_multicast(%struct.ar9170* %47, i64 %48)
  %50 = call i32 @WARN_ON(i32 %49)
  br label %51

51:                                               ; preds = %46, %40
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @FIF_OTHER_BSS, align 4
  %54 = load i32, i32* @FIF_PROMISC_IN_BSS, align 4
  %55 = or i32 %53, %54
  %56 = and i32 %52, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %74

58:                                               ; preds = %51
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @FIF_OTHER_BSS, align 4
  %62 = load i32, i32* @FIF_PROMISC_IN_BSS, align 4
  %63 = or i32 %61, %62
  %64 = and i32 %60, %63
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  %69 = load %struct.ar9170*, %struct.ar9170** %9, align 8
  %70 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 8
  %71 = load %struct.ar9170*, %struct.ar9170** %9, align 8
  %72 = call i32 @carl9170_set_operating_mode(%struct.ar9170* %71)
  %73 = call i32 @WARN_ON(i32 %72)
  br label %74

74:                                               ; preds = %58, %51
  %75 = load %struct.ar9170*, %struct.ar9170** %9, align 8
  %76 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %75, i32 0, i32 5
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %149

80:                                               ; preds = %74
  %81 = load i32, i32* %6, align 4
  %82 = load %struct.ar9170*, %struct.ar9170** %9, align 8
  %83 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = and i32 %81, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %149

87:                                               ; preds = %80
  store i32 0, i32* %10, align 4
  %88 = load %struct.ar9170*, %struct.ar9170** %9, align 8
  %89 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %88, i32 0, i32 5
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %87
  %94 = load i32, i32* @CARL9170_RX_FILTER_CTL_OTHER, align 4
  %95 = load i32, i32* %10, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %10, align 4
  br label %97

97:                                               ; preds = %93, %87
  %98 = load i32*, i32** %7, align 8
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @FIF_FCSFAIL, align 4
  %101 = load i32, i32* @FIF_PLCPFAIL, align 4
  %102 = or i32 %100, %101
  %103 = and i32 %99, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %97
  %106 = load i32, i32* @CARL9170_RX_FILTER_BAD, align 4
  %107 = load i32, i32* %10, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %10, align 4
  br label %109

109:                                              ; preds = %105, %97
  %110 = load i32*, i32** %7, align 8
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @FIF_CONTROL, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %119, label %115

115:                                              ; preds = %109
  %116 = load i32, i32* @CARL9170_RX_FILTER_CTL_OTHER, align 4
  %117 = load i32, i32* %10, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %10, align 4
  br label %119

119:                                              ; preds = %115, %109
  %120 = load i32*, i32** %7, align 8
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @FIF_PSPOLL, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %129, label %125

125:                                              ; preds = %119
  %126 = load i32, i32* @CARL9170_RX_FILTER_CTL_PSPOLL, align 4
  %127 = load i32, i32* %10, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %10, align 4
  br label %129

129:                                              ; preds = %125, %119
  %130 = load i32*, i32** %7, align 8
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @FIF_OTHER_BSS, align 4
  %133 = load i32, i32* @FIF_PROMISC_IN_BSS, align 4
  %134 = or i32 %132, %133
  %135 = and i32 %131, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %144, label %137

137:                                              ; preds = %129
  %138 = load i32, i32* @CARL9170_RX_FILTER_OTHER_RA, align 4
  %139 = load i32, i32* %10, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %10, align 4
  %141 = load i32, i32* @CARL9170_RX_FILTER_DECRY_FAIL, align 4
  %142 = load i32, i32* %10, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %10, align 4
  br label %144

144:                                              ; preds = %137, %129
  %145 = load %struct.ar9170*, %struct.ar9170** %9, align 8
  %146 = load i32, i32* %10, align 4
  %147 = call i32 @carl9170_rx_filter(%struct.ar9170* %145, i32 %146)
  %148 = call i32 @WARN_ON(i32 %147)
  br label %149

149:                                              ; preds = %144, %80, %74
  %150 = load %struct.ar9170*, %struct.ar9170** %9, align 8
  %151 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %150, i32 0, i32 4
  %152 = call i32 @mutex_unlock(i32* %151)
  br label %153

153:                                              ; preds = %149, %25
  ret void
}

declare dso_local i32 @IS_ACCEPTING_CMD(%struct.ar9170*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @carl9170_update_multicast(%struct.ar9170*, i64) #1

declare dso_local i32 @carl9170_set_operating_mode(%struct.ar9170*) #1

declare dso_local i32 @carl9170_rx_filter(%struct.ar9170*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
