; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_init.c_ath9k_init_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_init.c_ath9k_init_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath9k_htc_priv = type { %struct.ath_hw*, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ieee80211_hw*, %struct.TYPE_2__ }
%struct.ath_hw = type { i32 }
%struct.ieee80211_hw = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ath_common = type { %struct.ath_regulatory }
%struct.ath_regulatory = type { i32 }

@ath9k_reg_notifier = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Unable to create debugfs files\0A\00", align 1
@CONFIG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [71 x i8] c"WMI:%d, BCN:%d, CAB:%d, UAPSD:%d, MGMT:%d, BE:%d, BK:%d, VI:%d, VO:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@IEEE80211_TPT_LEDTRIG_FL_RADIO = common dso_local global i32 0, align 4
@ath9k_htc_tpt_blink = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath9k_htc_priv*, i32, i8*, i32)* @ath9k_init_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_init_device(%struct.ath9k_htc_priv* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath9k_htc_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ieee80211_hw*, align 8
  %11 = alloca %struct.ath_common*, align 8
  %12 = alloca %struct.ath_hw*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ath_regulatory*, align 8
  %15 = alloca [64 x i8], align 16
  store %struct.ath9k_htc_priv* %0, %struct.ath9k_htc_priv** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %6, align 8
  %17 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %16, i32 0, i32 10
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %17, align 8
  store %struct.ieee80211_hw* %18, %struct.ieee80211_hw** %10, align 8
  store i32 0, i32* %13, align 4
  %19 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i8*, i8** %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @ath9k_init_priv(%struct.ath9k_htc_priv* %19, i32 %20, i8* %21, i32 %22)
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %13, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  br label %163

27:                                               ; preds = %4
  %28 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %6, align 8
  %29 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %28, i32 0, i32 0
  %30 = load %struct.ath_hw*, %struct.ath_hw** %29, align 8
  store %struct.ath_hw* %30, %struct.ath_hw** %12, align 8
  %31 = load %struct.ath_hw*, %struct.ath_hw** %12, align 8
  %32 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %31)
  store %struct.ath_common* %32, %struct.ath_common** %11, align 8
  %33 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %6, align 8
  %34 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %10, align 8
  %35 = call i32 @ath9k_set_hw_capab(%struct.ath9k_htc_priv* %33, %struct.ieee80211_hw* %34)
  %36 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %6, align 8
  %37 = call i32 @ath9k_init_firmware_version(%struct.ath9k_htc_priv* %36)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %27
  br label %160

41:                                               ; preds = %27
  %42 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %43 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %42, i32 0, i32 0
  %44 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %6, align 8
  %45 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %44, i32 0, i32 10
  %46 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %45, align 8
  %47 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @ath9k_reg_notifier, align 4
  %50 = call i32 @ath_regd_init(%struct.ath_regulatory* %43, i32 %48, i32 %49)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %41
  br label %159

54:                                               ; preds = %41
  %55 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %56 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %55, i32 0, i32 0
  store %struct.ath_regulatory* %56, %struct.ath_regulatory** %14, align 8
  %57 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %6, align 8
  %58 = call i32 @ath9k_tx_init(%struct.ath9k_htc_priv* %57)
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %158

62:                                               ; preds = %54
  %63 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %6, align 8
  %64 = call i32 @ath9k_rx_init(%struct.ath9k_htc_priv* %63)
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %13, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %155

68:                                               ; preds = %62
  %69 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %6, align 8
  %70 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %69, i32 0, i32 0
  %71 = load %struct.ath_hw*, %struct.ath_hw** %70, align 8
  %72 = call i32 @ath9k_hw_disable(%struct.ath_hw* %71)
  %73 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %10, align 8
  %74 = call i32 @ieee80211_register_hw(%struct.ieee80211_hw* %73)
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %13, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %68
  br label %152

78:                                               ; preds = %68
  %79 = load %struct.ath_regulatory*, %struct.ath_regulatory** %14, align 8
  %80 = call i32 @ath_is_world_regd(%struct.ath_regulatory* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %94, label %82

82:                                               ; preds = %78
  %83 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %10, align 8
  %84 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.ath_regulatory*, %struct.ath_regulatory** %14, align 8
  %87 = getelementptr inbounds %struct.ath_regulatory, %struct.ath_regulatory* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @regulatory_hint(i32 %85, i32 %88)
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* %13, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %82
  br label %149

93:                                               ; preds = %82
  br label %94

94:                                               ; preds = %93, %78
  %95 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %6, align 8
  %96 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %95, i32 0, i32 0
  %97 = load %struct.ath_hw*, %struct.ath_hw** %96, align 8
  %98 = call i32 @ath9k_htc_init_debug(%struct.ath_hw* %97)
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %13, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %94
  %102 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %103 = call i32 @ath_err(%struct.ath_common* %102, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %149

104:                                              ; preds = %94
  %105 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %106 = load i32, i32* @CONFIG, align 4
  %107 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %6, align 8
  %108 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %107, i32 0, i32 9
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %6, align 8
  %111 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %110, i32 0, i32 8
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %6, align 8
  %114 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %113, i32 0, i32 7
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %6, align 8
  %117 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %116, i32 0, i32 6
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %6, align 8
  %120 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %6, align 8
  %123 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %6, align 8
  %126 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %6, align 8
  %129 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %6, align 8
  %132 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @ath_dbg(%struct.ath_common* %105, i32 %106, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 %109, i32 %112, i32 %115, i32 %118, i32 %121, i32 %124, i32 %127, i32 %130, i32 %133)
  %135 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %6, align 8
  %136 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %135, i32 0, i32 0
  %137 = load %struct.ath_hw*, %struct.ath_hw** %136, align 8
  %138 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %139 = call i32 @ath9k_hw_name(%struct.ath_hw* %137, i8* %138, i32 64)
  %140 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %10, align 8
  %141 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %144 = call i32 @wiphy_info(i32 %142, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %143)
  %145 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %6, align 8
  %146 = call i32 @ath9k_init_leds(%struct.ath9k_htc_priv* %145)
  %147 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %6, align 8
  %148 = call i32 @ath9k_start_rfkill_poll(%struct.ath9k_htc_priv* %147)
  store i32 0, i32* %5, align 4
  br label %165

149:                                              ; preds = %101, %92
  %150 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %10, align 8
  %151 = call i32 @ieee80211_unregister_hw(%struct.ieee80211_hw* %150)
  br label %152

152:                                              ; preds = %149, %77
  %153 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %6, align 8
  %154 = call i32 @ath9k_rx_cleanup(%struct.ath9k_htc_priv* %153)
  br label %155

155:                                              ; preds = %152, %67
  %156 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %6, align 8
  %157 = call i32 @ath9k_tx_cleanup(%struct.ath9k_htc_priv* %156)
  br label %158

158:                                              ; preds = %155, %61
  br label %159

159:                                              ; preds = %158, %53
  br label %160

160:                                              ; preds = %159, %40
  %161 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %6, align 8
  %162 = call i32 @ath9k_deinit_priv(%struct.ath9k_htc_priv* %161)
  br label %163

163:                                              ; preds = %160, %26
  %164 = load i32, i32* %13, align 4
  store i32 %164, i32* %5, align 4
  br label %165

165:                                              ; preds = %163, %104
  %166 = load i32, i32* %5, align 4
  ret i32 %166
}

declare dso_local i32 @ath9k_init_priv(%struct.ath9k_htc_priv*, i32, i8*, i32) #1

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_set_hw_capab(%struct.ath9k_htc_priv*, %struct.ieee80211_hw*) #1

declare dso_local i32 @ath9k_init_firmware_version(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @ath_regd_init(%struct.ath_regulatory*, i32, i32) #1

declare dso_local i32 @ath9k_tx_init(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @ath9k_rx_init(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @ath9k_hw_disable(%struct.ath_hw*) #1

declare dso_local i32 @ieee80211_register_hw(%struct.ieee80211_hw*) #1

declare dso_local i32 @ath_is_world_regd(%struct.ath_regulatory*) #1

declare dso_local i32 @regulatory_hint(i32, i32) #1

declare dso_local i32 @ath9k_htc_init_debug(%struct.ath_hw*) #1

declare dso_local i32 @ath_err(%struct.ath_common*, i8*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ath9k_hw_name(%struct.ath_hw*, i8*, i32) #1

declare dso_local i32 @wiphy_info(i32, i8*, i8*) #1

declare dso_local i32 @ath9k_init_leds(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @ath9k_start_rfkill_poll(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @ieee80211_unregister_hw(%struct.ieee80211_hw*) #1

declare dso_local i32 @ath9k_rx_cleanup(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @ath9k_tx_cleanup(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @ath9k_deinit_priv(%struct.ath9k_htc_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
