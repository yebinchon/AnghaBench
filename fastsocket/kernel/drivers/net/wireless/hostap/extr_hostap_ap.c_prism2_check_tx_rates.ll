; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_ap.c_prism2_check_tx_rates.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_ap.c_prism2_check_tx_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_info = type { i32, i32*, i32, i32, i32, i32 }

@WLAN_RATE_1M = common dso_local global i32 0, align 4
@WLAN_RATE_2M = common dso_local global i32 0, align 4
@WLAN_RATE_5M5 = common dso_local global i32 0, align 4
@WLAN_RATE_11M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sta_info*)* @prism2_check_tx_rates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prism2_check_tx_rates(%struct.sta_info* %0) #0 {
  %2 = alloca %struct.sta_info*, align 8
  %3 = alloca i32, align 4
  store %struct.sta_info* %0, %struct.sta_info** %2, align 8
  %4 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %5 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %4, i32 0, i32 0
  store i32 0, i32* %5, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %75, %1
  %7 = load i32, i32* %3, align 4
  %8 = sext i32 %7 to i64
  %9 = icmp ult i64 %8, 8
  br i1 %9, label %10, label %78

10:                                               ; preds = %6
  %11 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %12 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 127
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %20, label %26

20:                                               ; preds = %10
  %21 = load i32, i32* @WLAN_RATE_1M, align 4
  %22 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %23 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 8
  br label %26

26:                                               ; preds = %20, %10
  %27 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %28 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 127
  %35 = icmp eq i32 %34, 4
  br i1 %35, label %36, label %42

36:                                               ; preds = %26
  %37 = load i32, i32* @WLAN_RATE_2M, align 4
  %38 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %39 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 8
  br label %42

42:                                               ; preds = %36, %26
  %43 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %44 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 127
  %51 = icmp eq i32 %50, 11
  br i1 %51, label %52, label %58

52:                                               ; preds = %42
  %53 = load i32, i32* @WLAN_RATE_5M5, align 4
  %54 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %55 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 8
  br label %58

58:                                               ; preds = %52, %42
  %59 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %60 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %3, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, 127
  %67 = icmp eq i32 %66, 22
  br i1 %67, label %68, label %74

68:                                               ; preds = %58
  %69 = load i32, i32* @WLAN_RATE_11M, align 4
  %70 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %71 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 8
  br label %74

74:                                               ; preds = %68, %58
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %3, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %3, align 4
  br label %6

78:                                               ; preds = %6
  %79 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %80 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %79, i32 0, i32 4
  store i32 0, i32* %80, align 8
  %81 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %82 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %81, i32 0, i32 3
  store i32 0, i32* %82, align 4
  %83 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %84 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %83, i32 0, i32 2
  store i32 0, i32* %84, align 8
  %85 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %86 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @WLAN_RATE_1M, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %106

91:                                               ; preds = %78
  %92 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %93 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %92, i32 0, i32 2
  store i32 0, i32* %93, align 8
  %94 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %95 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %96 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @ap_tx_rate_ok(i32 0, %struct.sta_info* %94, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %91
  %101 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %102 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %101, i32 0, i32 3
  store i32 10, i32* %102, align 4
  %103 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %104 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %103, i32 0, i32 4
  store i32 0, i32* %104, align 8
  br label %105

105:                                              ; preds = %100, %91
  br label %106

106:                                              ; preds = %105, %78
  %107 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %108 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @WLAN_RATE_2M, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %128

113:                                              ; preds = %106
  %114 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %115 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %114, i32 0, i32 2
  store i32 1, i32* %115, align 8
  %116 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %117 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %118 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 4
  %120 = call i64 @ap_tx_rate_ok(i32 1, %struct.sta_info* %116, i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %113
  %123 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %124 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %123, i32 0, i32 3
  store i32 20, i32* %124, align 4
  %125 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %126 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %125, i32 0, i32 4
  store i32 1, i32* %126, align 8
  br label %127

127:                                              ; preds = %122, %113
  br label %128

128:                                              ; preds = %127, %106
  %129 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %130 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @WLAN_RATE_5M5, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %150

135:                                              ; preds = %128
  %136 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %137 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %136, i32 0, i32 2
  store i32 2, i32* %137, align 8
  %138 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %139 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %140 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 4
  %142 = call i64 @ap_tx_rate_ok(i32 2, %struct.sta_info* %138, i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %135
  %145 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %146 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %145, i32 0, i32 3
  store i32 55, i32* %146, align 4
  %147 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %148 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %147, i32 0, i32 4
  store i32 2, i32* %148, align 8
  br label %149

149:                                              ; preds = %144, %135
  br label %150

150:                                              ; preds = %149, %128
  %151 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %152 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @WLAN_RATE_11M, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %172

157:                                              ; preds = %150
  %158 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %159 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %158, i32 0, i32 2
  store i32 3, i32* %159, align 8
  %160 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %161 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %162 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %161, i32 0, i32 5
  %163 = load i32, i32* %162, align 4
  %164 = call i64 @ap_tx_rate_ok(i32 3, %struct.sta_info* %160, i32 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %157
  %167 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %168 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %167, i32 0, i32 3
  store i32 110, i32* %168, align 4
  %169 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %170 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %169, i32 0, i32 4
  store i32 3, i32* %170, align 8
  br label %171

171:                                              ; preds = %166, %157
  br label %172

172:                                              ; preds = %171, %150
  ret void
}

declare dso_local i64 @ap_tx_rate_ok(i32, %struct.sta_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
