; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965.c_il4965_send_tx_power.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965.c_il4965_send_tx_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.il4965_txpowertable_cmd = type { i32, i32, i32, i32 }

@S_SCAN_HW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"TX Power requested while scanning!\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@IEEE80211_BAND_2GHZ = common dso_local global i64 0, align 8
@RXON_FLG_CTRL_CHANNEL_LOC_HI_MSK = common dso_local global i32 0, align 4
@C_TX_PWR_TBL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.il_priv*)* @il4965_send_tx_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il4965_send_tx_power(%struct.il_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.il_priv*, align 8
  %4 = alloca %struct.il4965_txpowertable_cmd, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %3, align 8
  %9 = bitcast %struct.il4965_txpowertable_cmd* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 16, i1 false)
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* @S_SCAN_HW, align 4
  %11 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %12 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %11, i32 0, i32 2
  %13 = call i32 @test_bit(i32 %10, i32* %12)
  %14 = call i64 @WARN_ONCE(i32 %13, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @EAGAIN, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %70

19:                                               ; preds = %1
  %20 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %21 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %6, align 4
  %26 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %27 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @iw4965_is_ht40_channel(i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %19
  %34 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %35 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @RXON_FLG_CTRL_CHANNEL_LOC_HI_MSK, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  store i32 1, i32* %8, align 4
  br label %42

42:                                               ; preds = %41, %33, %19
  %43 = load i32, i32* %6, align 4
  %44 = getelementptr inbounds %struct.il4965_txpowertable_cmd, %struct.il4965_txpowertable_cmd* %4, i32 0, i32 0
  store i32 %43, i32* %44, align 4
  %45 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %46 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.il4965_txpowertable_cmd, %struct.il4965_txpowertable_cmd* %4, i32 0, i32 2
  store i32 %48, i32* %49, align 4
  %50 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %53 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @le16_to_cpu(i32 %55)
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %8, align 4
  %59 = getelementptr inbounds %struct.il4965_txpowertable_cmd, %struct.il4965_txpowertable_cmd* %4, i32 0, i32 1
  %60 = call i32 @il4965_fill_txpower_tbl(%struct.il_priv* %50, i32 %51, i32 %56, i32 %57, i32 %58, i32* %59)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %42
  br label %68

64:                                               ; preds = %42
  %65 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %66 = load i32, i32* @C_TX_PWR_TBL, align 4
  %67 = call i32 @il_send_cmd_pdu(%struct.il_priv* %65, i32 %66, i32 16, %struct.il4965_txpowertable_cmd* %4)
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %64, %63
  %69 = load i32, i32* %5, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %68, %16
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @WARN_ONCE(i32, i8*) #2

declare dso_local i32 @test_bit(i32, i32*) #2

declare dso_local i32 @iw4965_is_ht40_channel(i32) #2

declare dso_local i32 @il4965_fill_txpower_tbl(%struct.il_priv*, i32, i32, i32, i32, i32*) #2

declare dso_local i32 @le16_to_cpu(i32) #2

declare dso_local i32 @il_send_cmd_pdu(%struct.il_priv*, i32, i32, %struct.il4965_txpowertable_cmd*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
