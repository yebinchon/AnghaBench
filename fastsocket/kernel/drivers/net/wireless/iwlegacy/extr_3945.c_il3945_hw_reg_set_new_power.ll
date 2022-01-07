; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_3945.c_il3945_hw_reg_set_new_power.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_3945.c_il3945_hw_reg_set_new_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }
%struct.il_channel_info = type { i64, %struct.il3945_channel_power_info*, i32 }
%struct.il3945_channel_power_info = type { i32, i64 }

@RATE_6M_IDX_TBL = common dso_local global i32 0, align 4
@RATE_54M_IDX_TBL = common dso_local global i32 0, align 4
@RATE_12M_IDX_TBL = common dso_local global i64 0, align 8
@IL_CCK_FROM_OFDM_POWER_DIFF = common dso_local global i32 0, align 4
@RATE_1M_IDX_TBL = common dso_local global i32 0, align 4
@RATE_11M_IDX_TBL = common dso_local global i32 0, align 4
@IL_CCK_FROM_OFDM_IDX_DIFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.il_priv*, %struct.il_channel_info*)* @il3945_hw_reg_set_new_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il3945_hw_reg_set_new_power(%struct.il_priv* %0, %struct.il_channel_info* %1) #0 {
  %3 = alloca %struct.il_priv*, align 8
  %4 = alloca %struct.il_channel_info*, align 8
  %5 = alloca %struct.il3945_channel_power_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %3, align 8
  store %struct.il_channel_info* %1, %struct.il_channel_info** %4, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %12 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = load %struct.il_channel_info*, %struct.il_channel_info** %4, align 8
  %16 = getelementptr inbounds %struct.il_channel_info, %struct.il_channel_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %8, align 8
  %21 = load %struct.il_channel_info*, %struct.il_channel_info** %4, align 8
  %22 = getelementptr inbounds %struct.il_channel_info, %struct.il_channel_info* %21, i32 0, i32 1
  %23 = load %struct.il3945_channel_power_info*, %struct.il3945_channel_power_info** %22, align 8
  store %struct.il3945_channel_power_info* %23, %struct.il3945_channel_power_info** %5, align 8
  %24 = load i32, i32* @RATE_6M_IDX_TBL, align 4
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %61, %2
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @RATE_54M_IDX_TBL, align 4
  %28 = icmp sle i32 %26, %27
  br i1 %28, label %29, label %66

29:                                               ; preds = %25
  %30 = load %struct.il_channel_info*, %struct.il_channel_info** %4, align 8
  %31 = getelementptr inbounds %struct.il_channel_info, %struct.il_channel_info* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @min(i32 %32, i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.il3945_channel_power_info*, %struct.il3945_channel_power_info** %5, align 8
  %41 = getelementptr inbounds %struct.il3945_channel_power_info, %struct.il3945_channel_power_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %29
  br label %61

45:                                               ; preds = %29
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.il3945_channel_power_info*, %struct.il3945_channel_power_info** %5, align 8
  %48 = getelementptr inbounds %struct.il3945_channel_power_info, %struct.il3945_channel_power_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sub nsw i32 %46, %49
  %51 = mul nsw i32 %50, 2
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = load %struct.il3945_channel_power_info*, %struct.il3945_channel_power_info** %5, align 8
  %55 = getelementptr inbounds %struct.il3945_channel_power_info, %struct.il3945_channel_power_info* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = sub nsw i64 %56, %53
  store i64 %57, i64* %55, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.il3945_channel_power_info*, %struct.il3945_channel_power_info** %5, align 8
  %60 = getelementptr inbounds %struct.il3945_channel_power_info, %struct.il3945_channel_power_info* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  store i32 1, i32* %6, align 4
  br label %61

61:                                               ; preds = %45, %44
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  %64 = load %struct.il3945_channel_power_info*, %struct.il3945_channel_power_info** %5, align 8
  %65 = getelementptr inbounds %struct.il3945_channel_power_info, %struct.il3945_channel_power_info* %64, i32 1
  store %struct.il3945_channel_power_info* %65, %struct.il3945_channel_power_info** %5, align 8
  br label %25

66:                                               ; preds = %25
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %105

69:                                               ; preds = %66
  %70 = load %struct.il_channel_info*, %struct.il_channel_info** %4, align 8
  %71 = getelementptr inbounds %struct.il_channel_info, %struct.il_channel_info* %70, i32 0, i32 1
  %72 = load %struct.il3945_channel_power_info*, %struct.il3945_channel_power_info** %71, align 8
  %73 = load i64, i64* @RATE_12M_IDX_TBL, align 8
  %74 = getelementptr inbounds %struct.il3945_channel_power_info, %struct.il3945_channel_power_info* %72, i64 %73
  %75 = getelementptr inbounds %struct.il3945_channel_power_info, %struct.il3945_channel_power_info* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @IL_CCK_FROM_OFDM_POWER_DIFF, align 4
  %78 = add nsw i32 %76, %77
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* @RATE_1M_IDX_TBL, align 4
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %101, %69
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @RATE_11M_IDX_TBL, align 4
  %83 = icmp sle i32 %81, %82
  br i1 %83, label %84, label %104

84:                                               ; preds = %80
  %85 = load i32, i32* %9, align 4
  %86 = load %struct.il3945_channel_power_info*, %struct.il3945_channel_power_info** %5, align 8
  %87 = getelementptr inbounds %struct.il3945_channel_power_info, %struct.il3945_channel_power_info* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load %struct.il_channel_info*, %struct.il_channel_info** %4, align 8
  %89 = getelementptr inbounds %struct.il_channel_info, %struct.il_channel_info* %88, i32 0, i32 1
  %90 = load %struct.il3945_channel_power_info*, %struct.il3945_channel_power_info** %89, align 8
  %91 = load i64, i64* @RATE_12M_IDX_TBL, align 8
  %92 = getelementptr inbounds %struct.il3945_channel_power_info, %struct.il3945_channel_power_info* %90, i64 %91
  %93 = getelementptr inbounds %struct.il3945_channel_power_info, %struct.il3945_channel_power_info* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @IL_CCK_FROM_OFDM_IDX_DIFF, align 8
  %96 = add nsw i64 %94, %95
  %97 = load %struct.il3945_channel_power_info*, %struct.il3945_channel_power_info** %5, align 8
  %98 = getelementptr inbounds %struct.il3945_channel_power_info, %struct.il3945_channel_power_info* %97, i32 0, i32 1
  store i64 %96, i64* %98, align 8
  %99 = load %struct.il3945_channel_power_info*, %struct.il3945_channel_power_info** %5, align 8
  %100 = getelementptr inbounds %struct.il3945_channel_power_info, %struct.il3945_channel_power_info* %99, i32 1
  store %struct.il3945_channel_power_info* %100, %struct.il3945_channel_power_info** %5, align 8
  br label %101

101:                                              ; preds = %84
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %7, align 4
  br label %80

104:                                              ; preds = %80
  br label %105

105:                                              ; preds = %104, %66
  ret i32 0
}

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
