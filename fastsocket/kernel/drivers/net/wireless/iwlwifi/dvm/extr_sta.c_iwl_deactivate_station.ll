; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_sta.c_iwl_deactivate_station.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_sta.c_iwl_deactivate_station.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i64, i32, %struct.TYPE_2__*, i32** }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"Unable to remove station %pM, device not ready.\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Deactivating STA: %pM (%d)\0A\00", align 1
@IWL_INVALID_STATION = common dso_local global i64 0, align 8
@IWL_STA_DRIVER_ACTIVE = common dso_local global i32 0, align 4
@IWL_MAX_TID_COUNT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_deactivate_station(%struct.iwl_priv* %0, i64 %1, i64* %2) #0 {
  %4 = alloca %struct.iwl_priv*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  %8 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %9 = call i32 @iwl_is_ready(%struct.iwl_priv* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %13 = load i64*, i64** %6, align 8
  %14 = call i32 @IWL_DEBUG_INFO(%struct.iwl_priv* %12, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64* %13)
  br label %90

15:                                               ; preds = %3
  %16 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %17 = load i64*, i64** %6, align 8
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @IWL_DEBUG_ASSOC(%struct.iwl_priv* %16, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64* %17, i64 %18)
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @IWL_INVALID_STATION, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i64 @WARN_ON_ONCE(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  br label %90

27:                                               ; preds = %15
  %28 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %29 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %28, i32 0, i32 1
  %30 = call i32 @spin_lock_bh(i32* %29)
  %31 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %32 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i64, i64* %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @IWL_STA_DRIVER_ACTIVE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i64 @WARN_ON_ONCE(i32 %42)
  store i64 0, i64* %7, align 8
  br label %44

44:                                               ; preds = %58, %27
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* @IWL_MAX_TID_COUNT, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %61

48:                                               ; preds = %44
  %49 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %50 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %49, i32 0, i32 3
  %51 = load i32**, i32*** %50, align 8
  %52 = load i64, i64* %5, align 8
  %53 = getelementptr inbounds i32*, i32** %51, i64 %52
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* %7, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = call i32 @memset(i32* %56, i32 0, i32 4)
  br label %58

58:                                               ; preds = %48
  %59 = load i64, i64* %7, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %7, align 8
  br label %44

61:                                               ; preds = %44
  %62 = load i32, i32* @IWL_STA_DRIVER_ACTIVE, align 4
  %63 = xor i32 %62, -1
  %64 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %65 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %64, i32 0, i32 2
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i64, i64* %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, %63
  store i32 %71, i32* %69, align 4
  %72 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %73 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %74, -1
  store i64 %75, i64* %73, align 8
  %76 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %77 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp slt i64 %78, 0
  %80 = zext i1 %79 to i32
  %81 = call i64 @WARN_ON_ONCE(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %61
  %84 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %85 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %84, i32 0, i32 0
  store i64 0, i64* %85, align 8
  br label %86

86:                                               ; preds = %83, %61
  %87 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %88 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %87, i32 0, i32 1
  %89 = call i32 @spin_unlock_bh(i32* %88)
  br label %90

90:                                               ; preds = %86, %26, %11
  ret void
}

declare dso_local i32 @iwl_is_ready(%struct.iwl_priv*) #1

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_priv*, i8*, i64*) #1

declare dso_local i32 @IWL_DEBUG_ASSOC(%struct.iwl_priv*, i8*, i64*, i64) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
