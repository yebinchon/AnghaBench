; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c_il_mac_add_interface.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c_il_mac_add_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.il_priv* }
%struct.il_priv = type { i32, i32, %struct.ieee80211_vif* }
%struct.ieee80211_vif = type { i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"enter: type %d, addr %pM\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Try to add interface when device not ready\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Fail to set mode %d\0A\00", align 1
@NL80211_IFTYPE_STATION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"leave err %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @il_mac_add_interface(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.il_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %9 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %8, i32 0, i32 0
  %10 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  store %struct.il_priv* %10, %struct.il_priv** %5, align 8
  %11 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %12 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %15 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %18 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 (i8*, i32, ...) @D_MAC80211(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %19)
  %21 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %22 = call i32 @il_is_ready_rf(%struct.il_priv* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %2
  %25 = call i32 (i8*, ...) @IL_WARN(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %73

28:                                               ; preds = %2
  %29 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %30 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %29, i32 0, i32 2
  %31 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %30, align 8
  %32 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %33 = icmp eq %struct.ieee80211_vif* %31, %32
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %7, align 4
  %35 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %36 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %35, i32 0, i32 2
  %37 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %36, align 8
  %38 = icmp ne %struct.ieee80211_vif* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %28
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* @EOPNOTSUPP, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %73

45:                                               ; preds = %39, %28
  %46 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %47 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %48 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %47, i32 0, i32 2
  store %struct.ieee80211_vif* %46, %struct.ieee80211_vif** %48, align 8
  %49 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %50 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %53 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %55 = call i32 @il_set_mode(%struct.il_priv* %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %45
  %59 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %60 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i8*, ...) @IL_WARN(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %58
  %66 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %67 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %66, i32 0, i32 2
  store %struct.ieee80211_vif* null, %struct.ieee80211_vif** %67, align 8
  %68 = load i32, i32* @NL80211_IFTYPE_STATION, align 4
  %69 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %70 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  br label %71

71:                                               ; preds = %65, %58
  br label %72

72:                                               ; preds = %71, %45
  br label %73

73:                                               ; preds = %72, %42, %24
  %74 = load i32, i32* %6, align 4
  %75 = call i32 (i8*, i32, ...) @D_MAC80211(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %74)
  %76 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %77 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %76, i32 0, i32 0
  %78 = call i32 @mutex_unlock(i32* %77)
  %79 = load i32, i32* %6, align 4
  ret i32 %79
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @D_MAC80211(i8*, i32, ...) #1

declare dso_local i32 @il_is_ready_rf(%struct.il_priv*) #1

declare dso_local i32 @IL_WARN(i8*, ...) #1

declare dso_local i32 @il_set_mode(%struct.il_priv*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
