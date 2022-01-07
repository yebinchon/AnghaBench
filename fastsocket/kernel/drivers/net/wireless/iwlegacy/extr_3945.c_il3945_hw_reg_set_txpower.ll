; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_3945.c_il3945_hw_reg_set_txpower.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_3945.c_il3945_hw_reg_set_txpower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i64, i64, %struct.il_channel_info* }
%struct.il_channel_info = type { i64 }

@.str = private unnamed_addr constant [50 x i8] c"Requested Tx power same as current limit: %ddBm.\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Setting upper limit clamp to %ddBm.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @il3945_hw_reg_set_txpower(%struct.il_priv* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.il_priv*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.il_channel_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.il_priv* %0, %struct.il_priv** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %11 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* %5, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @D_POWER(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %16)
  store i32 0, i32* %3, align 4
  br label %64

18:                                               ; preds = %2
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @D_POWER(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %19)
  %21 = load i64, i64* %5, align 8
  %22 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %23 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  store i64 0, i64* %9, align 8
  br label %24

24:                                               ; preds = %56, %18
  %25 = load i64, i64* %9, align 8
  %26 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %27 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ult i64 %25, %28
  br i1 %29, label %30, label %59

30:                                               ; preds = %24
  %31 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %32 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %31, i32 0, i32 2
  %33 = load %struct.il_channel_info*, %struct.il_channel_info** %32, align 8
  %34 = load i64, i64* %9, align 8
  %35 = getelementptr inbounds %struct.il_channel_info, %struct.il_channel_info* %33, i64 %34
  store %struct.il_channel_info* %35, %struct.il_channel_info** %6, align 8
  %36 = load %struct.il_channel_info*, %struct.il_channel_info** %6, align 8
  %37 = call i64 @il_is_channel_a_band(%struct.il_channel_info* %36)
  store i64 %37, i64* %8, align 8
  %38 = load %struct.il_channel_info*, %struct.il_channel_info** %6, align 8
  %39 = call i64 @il3945_hw_reg_get_ch_txpower_limit(%struct.il_channel_info* %38)
  store i64 %39, i64* %7, align 8
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* %7, align 8
  %42 = call i64 @min(i64 %40, i64 %41)
  store i64 %42, i64* %7, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load %struct.il_channel_info*, %struct.il_channel_info** %6, align 8
  %45 = getelementptr inbounds %struct.il_channel_info, %struct.il_channel_info* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %43, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %30
  %49 = load i64, i64* %7, align 8
  %50 = load %struct.il_channel_info*, %struct.il_channel_info** %6, align 8
  %51 = getelementptr inbounds %struct.il_channel_info, %struct.il_channel_info* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %53 = load %struct.il_channel_info*, %struct.il_channel_info** %6, align 8
  %54 = call i32 @il3945_hw_reg_set_new_power(%struct.il_priv* %52, %struct.il_channel_info* %53)
  br label %55

55:                                               ; preds = %48, %30
  br label %56

56:                                               ; preds = %55
  %57 = load i64, i64* %9, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %9, align 8
  br label %24

59:                                               ; preds = %24
  %60 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %61 = call i32 @il3945_is_temp_calib_needed(%struct.il_priv* %60)
  %62 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %63 = call i32 @il3945_hw_reg_comp_txpower_temp(%struct.il_priv* %62)
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %59, %15
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @D_POWER(i8*, i64) #1

declare dso_local i64 @il_is_channel_a_band(%struct.il_channel_info*) #1

declare dso_local i64 @il3945_hw_reg_get_ch_txpower_limit(%struct.il_channel_info*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @il3945_hw_reg_set_new_power(%struct.il_priv*, %struct.il_channel_info*) #1

declare dso_local i32 @il3945_is_temp_calib_needed(%struct.il_priv*) #1

declare dso_local i32 @il3945_hw_reg_comp_txpower_temp(%struct.il_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
