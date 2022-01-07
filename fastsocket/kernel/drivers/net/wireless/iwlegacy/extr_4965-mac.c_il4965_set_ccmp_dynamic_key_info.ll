; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-mac.c_il4965_set_ccmp_dynamic_key_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-mac.c_il4965_set_ccmp_dynamic_key_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32, %struct.TYPE_11__*, %struct.TYPE_7__, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_12__, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i64, %struct.il_addsta_cmd* }
%struct.il_addsta_cmd = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.il_addsta_cmd*, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.ieee80211_key_conf = type { i32, i32, %struct.TYPE_12__*, i32, i32 }

@STA_KEY_FLG_CCMP = common dso_local global i32 0, align 4
@STA_KEY_FLG_MAP_KEY_MSK = common dso_local global i32 0, align 4
@STA_KEY_FLG_KEYID_POS = common dso_local global i32 0, align 4
@STA_KEY_FLG_INVALID = common dso_local global i32 0, align 4
@STA_KEY_MULTICAST_MSK = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_GENERATE_IV = common dso_local global i32 0, align 4
@STA_KEY_FLG_ENCRYPT_MSK = common dso_local global i32 0, align 4
@STA_KEY_FLG_NO_ENC = common dso_local global i32 0, align 4
@WEP_INVALID_OFFSET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"no space for a new key\00", align 1
@STA_MODIFY_KEY_MASK = common dso_local global i32 0, align 4
@STA_CONTROL_MODIFY_MSK = common dso_local global i32 0, align 4
@CMD_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.il_priv*, %struct.ieee80211_key_conf*, i64)* @il4965_set_ccmp_dynamic_key_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il4965_set_ccmp_dynamic_key_info(%struct.il_priv* %0, %struct.ieee80211_key_conf* %1, i64 %2) #0 {
  %4 = alloca %struct.il_priv*, align 8
  %5 = alloca %struct.ieee80211_key_conf*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.il_addsta_cmd, align 4
  store %struct.il_priv* %0, %struct.il_priv** %4, align 8
  store %struct.ieee80211_key_conf* %1, %struct.ieee80211_key_conf** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %11 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %10, i32 0, i32 3
  %12 = call i32 @lockdep_assert_held(i32* %11)
  %13 = load i32, i32* @STA_KEY_FLG_CCMP, align 4
  %14 = load i32, i32* @STA_KEY_FLG_MAP_KEY_MSK, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* %8, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %8, align 4
  %18 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %5, align 8
  %19 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @STA_KEY_FLG_KEYID_POS, align 4
  %22 = shl i32 %20, %21
  %23 = call i32 @cpu_to_le16(i32 %22)
  %24 = load i32, i32* %8, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* @STA_KEY_FLG_INVALID, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %8, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %8, align 4
  %30 = load i64, i64* %6, align 8
  %31 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %32 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %30, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %3
  %37 = load i32, i32* @STA_KEY_MULTICAST_MSK, align 4
  %38 = load i32, i32* %8, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %36, %3
  %41 = load i32, i32* @IEEE80211_KEY_FLAG_GENERATE_IV, align 4
  %42 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %5, align 8
  %43 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %47 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %46, i32 0, i32 0
  %48 = load i64, i64* %7, align 8
  %49 = call i32 @spin_lock_irqsave(i32* %47, i64 %48)
  %50 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %5, align 8
  %51 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %54 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %53, i32 0, i32 1
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %54, align 8
  %56 = load i64, i64* %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 2
  store i32 %52, i32* %59, align 8
  %60 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %5, align 8
  %61 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %64 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %63, i32 0, i32 1
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %64, align 8
  %66 = load i64, i64* %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  store i32 %62, i32* %69, align 8
  %70 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %71 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %70, i32 0, i32 1
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %71, align 8
  %73 = load i64, i64* %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load %struct.il_addsta_cmd*, %struct.il_addsta_cmd** %76, align 8
  %78 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %5, align 8
  %79 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %78, i32 0, i32 2
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %79, align 8
  %81 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %5, align 8
  %82 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @memcpy(%struct.il_addsta_cmd* %77, %struct.TYPE_12__* %80, i32 %83)
  %85 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %86 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %85, i32 0, i32 1
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %86, align 8
  %88 = load i64, i64* %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 2
  %93 = load %struct.il_addsta_cmd*, %struct.il_addsta_cmd** %92, align 8
  %94 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %5, align 8
  %95 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %94, i32 0, i32 2
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %95, align 8
  %97 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %5, align 8
  %98 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @memcpy(%struct.il_addsta_cmd* %93, %struct.TYPE_12__* %96, i32 %99)
  %101 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %102 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %101, i32 0, i32 1
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %102, align 8
  %104 = load i64, i64* %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @STA_KEY_FLG_ENCRYPT_MSK, align 4
  %111 = and i32 %109, %110
  %112 = load i32, i32* @STA_KEY_FLG_NO_ENC, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %125

114:                                              ; preds = %40
  %115 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %116 = call i64 @il_get_free_ucode_key_idx(%struct.il_priv* %115)
  %117 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %118 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %117, i32 0, i32 1
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %118, align 8
  %120 = load i64, i64* %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 1
  store i64 %116, i64* %124, align 8
  br label %125

125:                                              ; preds = %114, %40
  %126 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %127 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %126, i32 0, i32 1
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %127, align 8
  %129 = load i64, i64* %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @WEP_INVALID_OFFSET, align 8
  %136 = icmp eq i64 %134, %135
  %137 = zext i1 %136 to i32
  %138 = call i32 @WARN(i32 %137, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %139 = load i32, i32* %8, align 4
  %140 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %141 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %140, i32 0, i32 1
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %141, align 8
  %143 = load i64, i64* %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 0
  store i32 %139, i32* %147, align 8
  %148 = load i32, i32* @STA_MODIFY_KEY_MASK, align 4
  %149 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %150 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %149, i32 0, i32 1
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %150, align 8
  %152 = load i64, i64* %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 0
  store i32 %148, i32* %156, align 4
  %157 = load i32, i32* @STA_CONTROL_MODIFY_MSK, align 4
  %158 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %159 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %158, i32 0, i32 1
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %159, align 8
  %161 = load i64, i64* %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 0
  store i32 %157, i32* %164, align 8
  %165 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %166 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %165, i32 0, i32 1
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %166, align 8
  %168 = load i64, i64* %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 0
  %171 = call i32 @memcpy(%struct.il_addsta_cmd* %9, %struct.TYPE_12__* %170, i32 4)
  %172 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %173 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %172, i32 0, i32 0
  %174 = load i64, i64* %7, align 8
  %175 = call i32 @spin_unlock_irqrestore(i32* %173, i64 %174)
  %176 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %177 = load i32, i32* @CMD_SYNC, align 4
  %178 = call i32 @il_send_add_sta(%struct.il_priv* %176, %struct.il_addsta_cmd* %9, i32 %177)
  ret i32 %178
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memcpy(%struct.il_addsta_cmd*, %struct.TYPE_12__*, i32) #1

declare dso_local i64 @il_get_free_ucode_key_idx(%struct.il_priv*) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @il_send_add_sta(%struct.il_priv*, %struct.il_addsta_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
