; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl12xx/extr_scan.c_wl1271_scan_stm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl12xx/extr_scan.c_wl1271_scan_stm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.wl12xx_vif = type { i32* }

@IEEE80211_BAND_2GHZ = common dso_local global i32 0, align 4
@CONF_TX_CCK_RATES = common dso_local global i32 0, align 4
@CONF_TX_RATE_MASK_BASIC_P2P = common dso_local global i32 0, align 4
@WL1271_NOTHING_TO_SCAN = common dso_local global i32 0, align 4
@IEEE80211_BAND_5GHZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"invalid scan state\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wl1271_scan_stm(%struct.wl1271* %0, %struct.wl12xx_vif* %1) #0 {
  %3 = alloca %struct.wl1271*, align 8
  %4 = alloca %struct.wl12xx_vif*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %3, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %10 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %180 [
    i32 128, label %13
    i32 133, label %14
    i32 132, label %59
    i32 131, label %114
    i32 130, label %140
    i32 129, label %166
  ]

13:                                               ; preds = %2
  br label %182

14:                                               ; preds = %2
  %15 = load i32, i32* @IEEE80211_BAND_2GHZ, align 4
  store i32 %15, i32* %6, align 4
  %16 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %17 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %8, align 4
  %23 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %24 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %14
  %31 = load i32, i32* @CONF_TX_CCK_RATES, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %8, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %30
  %38 = load i32, i32* @CONF_TX_RATE_MASK_BASIC_P2P, align 4
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %37, %30
  br label %40

40:                                               ; preds = %39, %14
  %41 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @wl1271_tx_min_rate_get(%struct.wl1271* %41, i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %45 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @wl1271_scan_send(%struct.wl1271* %44, %struct.wl12xx_vif* %45, i32 %46, i32 0, i32 %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @WL1271_NOTHING_TO_SCAN, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %40
  %53 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %54 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i32 132, i32* %55, align 8
  %56 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %57 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  call void @wl1271_scan_stm(%struct.wl1271* %56, %struct.wl12xx_vif* %57)
  br label %58

58:                                               ; preds = %52, %40
  br label %182

59:                                               ; preds = %2
  %60 = load i32, i32* @IEEE80211_BAND_2GHZ, align 4
  store i32 %60, i32* %6, align 4
  %61 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %62 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %8, align 4
  %68 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %69 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %59
  %76 = load i32, i32* @CONF_TX_CCK_RATES, align 4
  %77 = xor i32 %76, -1
  %78 = load i32, i32* %8, align 4
  %79 = and i32 %78, %77
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %75
  %83 = load i32, i32* @CONF_TX_RATE_MASK_BASIC_P2P, align 4
  store i32 %83, i32* %8, align 4
  br label %84

84:                                               ; preds = %82, %75
  br label %85

85:                                               ; preds = %84, %59
  %86 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @wl1271_tx_min_rate_get(%struct.wl1271* %86, i32 %87)
  store i32 %88, i32* %7, align 4
  %89 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %90 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @wl1271_scan_send(%struct.wl1271* %89, %struct.wl12xx_vif* %90, i32 %91, i32 1, i32 %92)
  store i32 %93, i32* %5, align 4
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* @WL1271_NOTHING_TO_SCAN, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %113

97:                                               ; preds = %85
  %98 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %99 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %104 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  store i32 131, i32* %105, align 8
  br label %110

106:                                              ; preds = %97
  %107 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %108 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  store i32 129, i32* %109, align 8
  br label %110

110:                                              ; preds = %106, %102
  %111 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %112 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  call void @wl1271_scan_stm(%struct.wl1271* %111, %struct.wl12xx_vif* %112)
  br label %113

113:                                              ; preds = %110, %85
  br label %182

114:                                              ; preds = %2
  %115 = load i32, i32* @IEEE80211_BAND_5GHZ, align 4
  store i32 %115, i32* %6, align 4
  %116 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %117 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %118 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %6, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @wl1271_tx_min_rate_get(%struct.wl1271* %116, i32 %123)
  store i32 %124, i32* %7, align 4
  %125 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %126 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* %7, align 4
  %129 = call i32 @wl1271_scan_send(%struct.wl1271* %125, %struct.wl12xx_vif* %126, i32 %127, i32 0, i32 %128)
  store i32 %129, i32* %5, align 4
  %130 = load i32, i32* %5, align 4
  %131 = load i32, i32* @WL1271_NOTHING_TO_SCAN, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %139

133:                                              ; preds = %114
  %134 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %135 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  store i32 130, i32* %136, align 8
  %137 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %138 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  call void @wl1271_scan_stm(%struct.wl1271* %137, %struct.wl12xx_vif* %138)
  br label %139

139:                                              ; preds = %133, %114
  br label %182

140:                                              ; preds = %2
  %141 = load i32, i32* @IEEE80211_BAND_5GHZ, align 4
  store i32 %141, i32* %6, align 4
  %142 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %143 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %144 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %6, align 4
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @wl1271_tx_min_rate_get(%struct.wl1271* %142, i32 %149)
  store i32 %150, i32* %7, align 4
  %151 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %152 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %153 = load i32, i32* %6, align 4
  %154 = load i32, i32* %7, align 4
  %155 = call i32 @wl1271_scan_send(%struct.wl1271* %151, %struct.wl12xx_vif* %152, i32 %153, i32 1, i32 %154)
  store i32 %155, i32* %5, align 4
  %156 = load i32, i32* %5, align 4
  %157 = load i32, i32* @WL1271_NOTHING_TO_SCAN, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %165

159:                                              ; preds = %140
  %160 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %161 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  store i32 129, i32* %162, align 8
  %163 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %164 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  call void @wl1271_scan_stm(%struct.wl1271* %163, %struct.wl12xx_vif* %164)
  br label %165

165:                                              ; preds = %159, %140
  br label %182

166:                                              ; preds = %2
  %167 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %168 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 1
  store i32 0, i32* %169, align 4
  %170 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %171 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %170, i32 0, i32 0
  %172 = call i32 @cancel_delayed_work(i32* %171)
  %173 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %174 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %177 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %176, i32 0, i32 0
  %178 = call i32 @msecs_to_jiffies(i32 0)
  %179 = call i32 @ieee80211_queue_delayed_work(i32 %175, i32* %177, i32 %178)
  br label %182

180:                                              ; preds = %2
  %181 = call i32 @wl1271_error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %182

182:                                              ; preds = %180, %166, %165, %139, %113, %58, %13
  %183 = load i32, i32* %5, align 4
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %185, label %196

185:                                              ; preds = %182
  %186 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %187 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %186, i32 0, i32 0
  %188 = call i32 @cancel_delayed_work(i32* %187)
  %189 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %190 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %193 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %192, i32 0, i32 0
  %194 = call i32 @msecs_to_jiffies(i32 0)
  %195 = call i32 @ieee80211_queue_delayed_work(i32 %191, i32* %193, i32 %194)
  br label %196

196:                                              ; preds = %185, %182
  ret void
}

declare dso_local i32 @wl1271_tx_min_rate_get(%struct.wl1271*, i32) #1

declare dso_local i32 @wl1271_scan_send(%struct.wl1271*, %struct.wl12xx_vif*, i32, i32, i32) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @ieee80211_queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @wl1271_error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
