; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_sta.c_iwl_remove_station.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_sta.c_iwl_remove_station.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i64, i32, %struct.TYPE_2__*, i32** }
%struct.TYPE_2__ = type { i32, i32* }

@.str = private unnamed_addr constant [49 x i8] c"Unable to remove station %pM, device not ready.\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Removing STA from driver:%d  %pM\0A\00", align 1
@IWL_INVALID_STATION = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IWL_STA_DRIVER_ACTIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Removing %pM but non DRIVER active\0A\00", align 1
@IWL_STA_UCODE_ACTIVE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Removing %pM but non UCODE active\0A\00", align 1
@IWL_STA_LOCAL = common dso_local global i32 0, align 4
@IWL_MAX_TID_COUNT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_remove_station(%struct.iwl_priv* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_priv*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %9 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %10 = call i32 @iwl_is_ready(%struct.iwl_priv* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %3
  %13 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %14 = load i64*, i64** %7, align 8
  %15 = call i32 @IWL_DEBUG_INFO(%struct.iwl_priv* %13, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64* %14)
  store i32 0, i32* %4, align 4
  br label %146

16:                                               ; preds = %3
  %17 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load i64*, i64** %7, align 8
  %20 = call i32 @IWL_DEBUG_ASSOC(%struct.iwl_priv* %17, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %18, i64* %19)
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @IWL_INVALID_STATION, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i64 @WARN_ON(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %16
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %146

30:                                               ; preds = %16
  %31 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %32 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %31, i32 0, i32 1
  %33 = call i32 @spin_lock_bh(i32* %32)
  %34 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %35 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %34, i32 0, i32 2
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i64, i64* %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @IWL_STA_DRIVER_ACTIVE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %30
  %45 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %46 = load i64*, i64** %7, align 8
  %47 = call i32 @IWL_DEBUG_INFO(%struct.iwl_priv* %45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i64* %46)
  br label %140

48:                                               ; preds = %30
  %49 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %50 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %49, i32 0, i32 2
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i64, i64* %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @IWL_STA_UCODE_ACTIVE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %48
  %60 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %61 = load i64*, i64** %7, align 8
  %62 = call i32 @IWL_DEBUG_INFO(%struct.iwl_priv* %60, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i64* %61)
  br label %140

63:                                               ; preds = %48
  %64 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %65 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %64, i32 0, i32 2
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i64, i64* %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @IWL_STA_LOCAL, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %89

74:                                               ; preds = %63
  %75 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %76 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %75, i32 0, i32 2
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = load i64, i64* %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @kfree(i32* %81)
  %83 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %84 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %83, i32 0, i32 2
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = load i64, i64* %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  store i32* null, i32** %88, align 8
  br label %89

89:                                               ; preds = %74, %63
  store i64 0, i64* %8, align 8
  br label %90

90:                                               ; preds = %104, %89
  %91 = load i64, i64* %8, align 8
  %92 = load i64, i64* @IWL_MAX_TID_COUNT, align 8
  %93 = icmp ult i64 %91, %92
  br i1 %93, label %94, label %107

94:                                               ; preds = %90
  %95 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %96 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %95, i32 0, i32 3
  %97 = load i32**, i32*** %96, align 8
  %98 = load i64, i64* %6, align 8
  %99 = getelementptr inbounds i32*, i32** %97, i64 %98
  %100 = load i32*, i32** %99, align 8
  %101 = load i64, i64* %8, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = call i32 @memset(i32* %102, i32 0, i32 4)
  br label %104

104:                                              ; preds = %94
  %105 = load i64, i64* %8, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %8, align 8
  br label %90

107:                                              ; preds = %90
  %108 = load i32, i32* @IWL_STA_DRIVER_ACTIVE, align 4
  %109 = xor i32 %108, -1
  %110 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %111 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %110, i32 0, i32 2
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = load i64, i64* %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = and i32 %116, %109
  store i32 %117, i32* %115, align 8
  %118 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %119 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = add nsw i64 %120, -1
  store i64 %121, i64* %119, align 8
  %122 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %123 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp slt i64 %124, 0
  %126 = zext i1 %125 to i32
  %127 = call i64 @WARN_ON(i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %107
  %130 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %131 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %130, i32 0, i32 0
  store i64 0, i64* %131, align 8
  br label %132

132:                                              ; preds = %129, %107
  %133 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %134 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %133, i32 0, i32 1
  %135 = call i32 @spin_unlock_bh(i32* %134)
  %136 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %137 = load i64*, i64** %7, align 8
  %138 = load i64, i64* %6, align 8
  %139 = call i32 @iwl_send_remove_station(%struct.iwl_priv* %136, i64* %137, i64 %138, i32 0)
  store i32 %139, i32* %4, align 4
  br label %146

140:                                              ; preds = %59, %44
  %141 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %142 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %141, i32 0, i32 1
  %143 = call i32 @spin_unlock_bh(i32* %142)
  %144 = load i32, i32* @EINVAL, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %4, align 4
  br label %146

146:                                              ; preds = %140, %132, %27, %12
  %147 = load i32, i32* %4, align 4
  ret i32 %147
}

declare dso_local i32 @iwl_is_ready(%struct.iwl_priv*) #1

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_priv*, i8*, i64*) #1

declare dso_local i32 @IWL_DEBUG_ASSOC(%struct.iwl_priv*, i8*, i64, i64*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @iwl_send_remove_station(%struct.iwl_priv*, i64*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
