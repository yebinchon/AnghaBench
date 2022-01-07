; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-mac.c_il4965_hdl_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-mac.c_il4965_hdl_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32, i32, i32, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.il_rx_buf = type { i32 }
%struct.il_rx_pkt = type { %struct.TYPE_16__, %struct.TYPE_15__, i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }

@.str = private unnamed_addr constant [46 x i8] c"Statistics notification received (%d vs %d).\0A\00", align 1
@IL_RX_FRAME_SIZE_MSK = common dso_local global i32 0, align 4
@STATS_REPLY_FLG_HT40_MODE_MSK = common dso_local global i32 0, align 4
@S_STATS = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@S_SCANNING = common dso_local global i32 0, align 4
@N_STATS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.il_priv*, %struct.il_rx_buf*)* @il4965_hdl_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @il4965_hdl_stats(%struct.il_priv* %0, %struct.il_rx_buf* %1) #0 {
  %3 = alloca %struct.il_priv*, align 8
  %4 = alloca %struct.il_rx_buf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.il_rx_pkt*, align 8
  store %struct.il_priv* %0, %struct.il_priv** %3, align 8
  store %struct.il_rx_buf* %1, %struct.il_rx_buf** %4, align 8
  store i32 60, i32* %5, align 4
  %8 = load %struct.il_rx_buf*, %struct.il_rx_buf** %4, align 8
  %9 = call %struct.il_rx_pkt* @rxb_addr(%struct.il_rx_buf* %8)
  store %struct.il_rx_pkt* %9, %struct.il_rx_pkt** %7, align 8
  %10 = load %struct.il_rx_pkt*, %struct.il_rx_pkt** %7, align 8
  %11 = getelementptr inbounds %struct.il_rx_pkt, %struct.il_rx_pkt* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @le32_to_cpu(i32 %12)
  %14 = load i32, i32* @IL_RX_FRAME_SIZE_MSK, align 4
  %15 = and i32 %13, %14
  %16 = call i32 @D_RX(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 4, i32 %15)
  %17 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %18 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.il_rx_pkt*, %struct.il_rx_pkt** %7, align 8
  %25 = getelementptr inbounds %struct.il_rx_pkt, %struct.il_rx_pkt* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %23, %30
  br i1 %31, label %48, label %32

32:                                               ; preds = %2
  %33 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %34 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @STATS_REPLY_FLG_HT40_MODE_MSK, align 4
  %39 = and i32 %37, %38
  %40 = load %struct.il_rx_pkt*, %struct.il_rx_pkt** %7, align 8
  %41 = getelementptr inbounds %struct.il_rx_pkt, %struct.il_rx_pkt* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @STATS_REPLY_FLG_HT40_MODE_MSK, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %39, %46
  br label %48

48:                                               ; preds = %32, %2
  %49 = phi i1 [ true, %2 ], [ %47, %32 ]
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %6, align 4
  %51 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %52 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load %struct.il_rx_pkt*, %struct.il_rx_pkt** %7, align 8
  %55 = getelementptr inbounds %struct.il_rx_pkt, %struct.il_rx_pkt* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %57 = call i32 @memcpy(%struct.TYPE_17__* %53, %struct.TYPE_18__* %56, i32 16)
  %58 = load i32, i32* @S_STATS, align 4
  %59 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %60 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %59, i32 0, i32 2
  %61 = call i32 @set_bit(i32 %58, i32* %60)
  %62 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %63 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %62, i32 0, i32 3
  %64 = load i64, i64* @jiffies, align 8
  %65 = call i64 @msecs_to_jiffies(i32 60000)
  %66 = add nsw i64 %64, %65
  %67 = call i32 @mod_timer(i32* %63, i64 %66)
  %68 = load i32, i32* @S_SCANNING, align 4
  %69 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %70 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %69, i32 0, i32 2
  %71 = call i32 @test_bit(i32 %68, i32* %70)
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = call i64 @unlikely(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %93

77:                                               ; preds = %48
  %78 = load %struct.il_rx_pkt*, %struct.il_rx_pkt** %7, align 8
  %79 = getelementptr inbounds %struct.il_rx_pkt, %struct.il_rx_pkt* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @N_STATS, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %93

84:                                               ; preds = %77
  %85 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %86 = call i32 @il4965_rx_calc_noise(%struct.il_priv* %85)
  %87 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %88 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %91 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %90, i32 0, i32 0
  %92 = call i32 @queue_work(i32 %89, i32* %91)
  br label %93

93:                                               ; preds = %84, %77, %48
  %94 = load i32, i32* %6, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %98 = call i32 @il4965_temperature_calib(%struct.il_priv* %97)
  br label %99

99:                                               ; preds = %96, %93
  ret void
}

declare dso_local %struct.il_rx_pkt* @rxb_addr(%struct.il_rx_buf*) #1

declare dso_local i32 @D_RX(i8*, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_17__*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @il4965_rx_calc_noise(%struct.il_priv*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @il4965_temperature_calib(%struct.il_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
