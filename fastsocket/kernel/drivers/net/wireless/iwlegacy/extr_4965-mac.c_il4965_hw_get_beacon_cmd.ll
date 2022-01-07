; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-mac.c_il4965_hw_get_beacon_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-mac.c_il4965_hw_get_beacon_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.il_frame = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.il_tx_beacon_cmd }
%struct.il_tx_beacon_cmd = type { %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [50 x i8] c"Trying to build beacon without beaconing enabled\0A\00", align 1
@MAX_MPDU_SIZE = common dso_local global i64 0, align 8
@TX_CMD_LIFE_TIME_INFINITE = common dso_local global i32 0, align 4
@TX_CMD_FLG_SEQ_CTL_MSK = common dso_local global i32 0, align 4
@TX_CMD_FLG_TSF_MSK = common dso_local global i32 0, align 4
@TX_CMD_FLG_STA_RATE_MSK = common dso_local global i32 0, align 4
@RATE_MCS_ANT_POS = common dso_local global i64 0, align 8
@IL_FIRST_CCK_RATE = common dso_local global i64 0, align 8
@IL_LAST_CCK_RATE = common dso_local global i64 0, align 8
@RATE_MCS_CCK_MSK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.il_priv*, %struct.il_frame*)* @il4965_hw_get_beacon_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il4965_hw_get_beacon_cmd(%struct.il_priv* %0, %struct.il_frame* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.il_priv*, align 8
  %5 = alloca %struct.il_frame*, align 8
  %6 = alloca %struct.il_tx_beacon_cmd*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.il_priv* %0, %struct.il_priv** %4, align 8
  store %struct.il_frame* %1, %struct.il_frame** %5, align 8
  %10 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %11 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %10, i32 0, i32 3
  %12 = call i32 @lockdep_assert_held(i32* %11)
  %13 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %14 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = call i32 @IL_ERR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %114

19:                                               ; preds = %2
  %20 = load %struct.il_frame*, %struct.il_frame** %5, align 8
  %21 = getelementptr inbounds %struct.il_frame, %struct.il_frame* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store %struct.il_tx_beacon_cmd* %22, %struct.il_tx_beacon_cmd** %6, align 8
  %23 = load %struct.il_tx_beacon_cmd*, %struct.il_tx_beacon_cmd** %6, align 8
  %24 = call i32 @memset(%struct.il_tx_beacon_cmd* %23, i32 0, i32 32)
  %25 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %26 = load %struct.il_tx_beacon_cmd*, %struct.il_tx_beacon_cmd** %6, align 8
  %27 = getelementptr inbounds %struct.il_tx_beacon_cmd, %struct.il_tx_beacon_cmd* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @il4965_fill_beacon_frame(%struct.il_priv* %25, i64 %28, i32 0)
  store i64 %29, i64* %7, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* @MAX_MPDU_SIZE, align 8
  %32 = icmp sgt i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i64 @WARN_ON_ONCE(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %114

37:                                               ; preds = %19
  %38 = load i64, i64* %7, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %114

41:                                               ; preds = %37
  %42 = load i64, i64* %7, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i32 @cpu_to_le16(i32 %43)
  %45 = load %struct.il_tx_beacon_cmd*, %struct.il_tx_beacon_cmd** %6, align 8
  %46 = getelementptr inbounds %struct.il_tx_beacon_cmd, %struct.il_tx_beacon_cmd* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 4
  store i32 %44, i32* %47, align 8
  %48 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %49 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.il_tx_beacon_cmd*, %struct.il_tx_beacon_cmd** %6, align 8
  %53 = getelementptr inbounds %struct.il_tx_beacon_cmd, %struct.il_tx_beacon_cmd* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 3
  store i32 %51, i32* %54, align 4
  %55 = load i32, i32* @TX_CMD_LIFE_TIME_INFINITE, align 4
  %56 = load %struct.il_tx_beacon_cmd*, %struct.il_tx_beacon_cmd** %6, align 8
  %57 = getelementptr inbounds %struct.il_tx_beacon_cmd, %struct.il_tx_beacon_cmd* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  store i32 %55, i32* %59, align 8
  %60 = load i32, i32* @TX_CMD_FLG_SEQ_CTL_MSK, align 4
  %61 = load i32, i32* @TX_CMD_FLG_TSF_MSK, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @TX_CMD_FLG_STA_RATE_MSK, align 4
  %64 = or i32 %62, %63
  %65 = load %struct.il_tx_beacon_cmd*, %struct.il_tx_beacon_cmd** %6, align 8
  %66 = getelementptr inbounds %struct.il_tx_beacon_cmd, %struct.il_tx_beacon_cmd* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 8
  %68 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %69 = load %struct.il_tx_beacon_cmd*, %struct.il_tx_beacon_cmd** %6, align 8
  %70 = load %struct.il_tx_beacon_cmd*, %struct.il_tx_beacon_cmd** %6, align 8
  %71 = getelementptr inbounds %struct.il_tx_beacon_cmd, %struct.il_tx_beacon_cmd* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to i32*
  %74 = load i64, i64* %7, align 8
  %75 = call i32 @il4965_set_beacon_tim(%struct.il_priv* %68, %struct.il_tx_beacon_cmd* %69, i32* %73, i64 %74)
  %76 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %77 = call i64 @il_get_lowest_plcp(%struct.il_priv* %76)
  store i64 %77, i64* %9, align 8
  %78 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %79 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %80 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %79, i32 0, i32 0
  %81 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %82 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @il4965_toggle_tx_ant(%struct.il_priv* %78, i32* %80, i32 %84)
  %86 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %87 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @BIT(i32 %88)
  %90 = load i64, i64* @RATE_MCS_ANT_POS, align 8
  %91 = shl i64 %89, %90
  store i64 %91, i64* %8, align 8
  %92 = load i64, i64* %9, align 8
  %93 = load i64, i64* @IL_FIRST_CCK_RATE, align 8
  %94 = icmp sge i64 %92, %93
  br i1 %94, label %95, label %103

95:                                               ; preds = %41
  %96 = load i64, i64* %9, align 8
  %97 = load i64, i64* @IL_LAST_CCK_RATE, align 8
  %98 = icmp sle i64 %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = load i64, i64* @RATE_MCS_CCK_MSK, align 8
  %101 = load i64, i64* %8, align 8
  %102 = or i64 %101, %100
  store i64 %102, i64* %8, align 8
  br label %103

103:                                              ; preds = %99, %95, %41
  %104 = load i64, i64* %9, align 8
  %105 = load i64, i64* %8, align 8
  %106 = or i64 %104, %105
  %107 = call i32 @cpu_to_le32(i64 %106)
  %108 = load %struct.il_tx_beacon_cmd*, %struct.il_tx_beacon_cmd** %6, align 8
  %109 = getelementptr inbounds %struct.il_tx_beacon_cmd, %struct.il_tx_beacon_cmd* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 1
  store i32 %107, i32* %110, align 4
  %111 = load i64, i64* %7, align 8
  %112 = add i64 32, %111
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %103, %40, %36, %17
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @IL_ERR(i8*) #1

declare dso_local i32 @memset(%struct.il_tx_beacon_cmd*, i32, i32) #1

declare dso_local i64 @il4965_fill_beacon_frame(%struct.il_priv*, i64, i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @il4965_set_beacon_tim(%struct.il_priv*, %struct.il_tx_beacon_cmd*, i32*, i64) #1

declare dso_local i64 @il_get_lowest_plcp(%struct.il_priv*) #1

declare dso_local i32 @il4965_toggle_tx_ant(%struct.il_priv*, i32*, i32) #1

declare dso_local i64 @BIT(i32) #1

declare dso_local i32 @cpu_to_le32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
