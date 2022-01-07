; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_3945-mac.c_il3945_store_measurement.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_3945-mac.c_il3945_store_measurement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.il_priv = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ieee80211_measurement_params = type { i8, i32, i32 }

@IL_MEASURE_BASIC = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [58 x i8] c"Invoking measurement of type %d on channel %d (for '%s')\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @il3945_store_measurement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @il3945_store_measurement(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.il_priv*, align 8
  %10 = alloca %struct.ieee80211_measurement_params, align 4
  %11 = alloca i8, align 1
  %12 = alloca [32 x i8], align 16
  %13 = alloca i8, align 1
  %14 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = call %struct.il_priv* @dev_get_drvdata(%struct.device* %15)
  store %struct.il_priv* %16, %struct.il_priv** %9, align 8
  %17 = getelementptr inbounds %struct.ieee80211_measurement_params, %struct.ieee80211_measurement_params* %10, i32 0, i32 0
  %18 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %19 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call signext i8 @le16_to_cpu(i32 %21)
  store i8 %22, i8* %17, align 4
  %23 = getelementptr inbounds %struct.ieee80211_measurement_params, %struct.ieee80211_measurement_params* %10, i32 0, i32 1
  %24 = call i32 @cpu_to_le16(i32 1)
  store i32 %24, i32* %23, align 4
  %25 = getelementptr inbounds %struct.ieee80211_measurement_params, %struct.ieee80211_measurement_params* %10, i32 0, i32 2
  %26 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %27 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @cpu_to_le64(i32 %29)
  store i32 %30, i32* %25, align 4
  %31 = load i8, i8* @IL_MEASURE_BASIC, align 1
  store i8 %31, i8* %11, align 1
  %32 = load i64, i64* %8, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %72

34:                                               ; preds = %4
  %35 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  store i8* %35, i8** %14, align 8
  %36 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 @strlcpy(i8* %36, i8* %37, i32 32)
  %39 = load i8*, i8** %14, align 8
  %40 = call signext i8 @simple_strtoul(i8* %39, i32* null, i32 0)
  store i8 %40, i8* %13, align 1
  %41 = load i8, i8* %13, align 1
  %42 = icmp ne i8 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %34
  %44 = load i8, i8* %13, align 1
  %45 = getelementptr inbounds %struct.ieee80211_measurement_params, %struct.ieee80211_measurement_params* %10, i32 0, i32 0
  store i8 %44, i8* %45, align 4
  br label %46

46:                                               ; preds = %43, %34
  %47 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  store i8* %47, i8** %14, align 8
  br label %48

48:                                               ; preds = %60, %46
  %49 = load i8*, i8** %14, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load i8*, i8** %14, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 32
  br label %58

58:                                               ; preds = %53, %48
  %59 = phi i1 [ false, %48 ], [ %57, %53 ]
  br i1 %59, label %60, label %63

60:                                               ; preds = %58
  %61 = load i8*, i8** %14, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %14, align 8
  br label %48

63:                                               ; preds = %58
  %64 = load i8*, i8** %14, align 8
  %65 = load i8, i8* %64, align 1
  %66 = icmp ne i8 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load i8*, i8** %14, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 1
  %70 = call signext i8 @simple_strtoul(i8* %69, i32* null, i32 0)
  store i8 %70, i8* %11, align 1
  br label %71

71:                                               ; preds = %67, %63
  br label %72

72:                                               ; preds = %71, %4
  %73 = load i8, i8* %11, align 1
  %74 = getelementptr inbounds %struct.ieee80211_measurement_params, %struct.ieee80211_measurement_params* %10, i32 0, i32 0
  %75 = load i8, i8* %74, align 4
  %76 = load i8*, i8** %7, align 8
  %77 = call i32 @D_INFO(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i8 signext %73, i8 signext %75, i8* %76)
  %78 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %79 = load i8, i8* %11, align 1
  %80 = call i32 @il3945_get_measurement(%struct.il_priv* %78, %struct.ieee80211_measurement_params* %10, i8 signext %79)
  %81 = load i64, i64* %8, align 8
  ret i64 %81
}

declare dso_local %struct.il_priv* @dev_get_drvdata(%struct.device*) #1

declare dso_local signext i8 @le16_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local signext i8 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @D_INFO(i8*, i8 signext, i8 signext, i8*) #1

declare dso_local i32 @il3945_get_measurement(%struct.il_priv*, %struct.ieee80211_measurement_params*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
