; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-mac.c_il4965_remove_default_wep_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-mac.c_il4965_remove_default_wep_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.ieee80211_key_conf = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"Removing default WEP key: idx=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Not sending C_WEPKEY command due to RFKILL.\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Remove default WEP key: idx=%d ret=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @il4965_remove_default_wep_key(%struct.il_priv* %0, %struct.ieee80211_key_conf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.il_priv*, align 8
  %5 = alloca %struct.ieee80211_key_conf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %4, align 8
  store %struct.ieee80211_key_conf* %1, %struct.ieee80211_key_conf** %5, align 8
  %8 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %5, align 8
  %9 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %7, align 4
  %11 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %12 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %11, i32 0, i32 1
  %13 = call i32 @lockdep_assert_held(i32* %12)
  %14 = load i32, i32* %7, align 4
  %15 = call i32 (i8*, ...) @D_WEP(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %17 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = call i32 @memset(i32* %22, i32 0, i32 4)
  %24 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %25 = call i64 @il_is_rfkill(%struct.il_priv* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = call i32 (i8*, ...) @D_WEP(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %36

29:                                               ; preds = %2
  %30 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %31 = call i32 @il4965_static_wepkey_cmd(%struct.il_priv* %30, i32 1)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 (i8*, ...) @D_WEP(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %32, i32 %33)
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %29, %27
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @D_WEP(i8*, ...) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @il_is_rfkill(%struct.il_priv*) #1

declare dso_local i32 @il4965_static_wepkey_cmd(%struct.il_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
