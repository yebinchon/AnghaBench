; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_debug.c_ath_debug_stat_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_debug.c_ath_debug_stat_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.ath_buf = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.ath_tx_status = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ath_txq = type { i32 }

@tx_pkts_all = common dso_local global i32 0, align 4
@ATH_TX_ERROR = common dso_local global i32 0, align 4
@a_xretries = common dso_local global i32 0, align 4
@a_completed = common dso_local global i32 0, align 4
@ATH9K_TXERR_XRETRY = common dso_local global i32 0, align 4
@xretries = common dso_local global i32 0, align 4
@completed = common dso_local global i32 0, align 4
@ATH9K_TXERR_FILT = common dso_local global i32 0, align 4
@txerr_filtered = common dso_local global i32 0, align 4
@ATH9K_TXERR_FIFO = common dso_local global i32 0, align 4
@fifo_underrun = common dso_local global i32 0, align 4
@ATH9K_TXERR_XTXOP = common dso_local global i32 0, align 4
@xtxop = common dso_local global i32 0, align 4
@ATH9K_TXERR_TIMER_EXPIRED = common dso_local global i32 0, align 4
@timer_exp = common dso_local global i32 0, align 4
@ATH9K_TX_DESC_CFG_ERR = common dso_local global i32 0, align 4
@desc_cfg_err = common dso_local global i32 0, align 4
@ATH9K_TX_DATA_UNDERRUN = common dso_local global i32 0, align 4
@data_underrun = common dso_local global i32 0, align 4
@ATH9K_TX_DELIM_UNDERRUN = common dso_local global i32 0, align 4
@delim_underrun = common dso_local global i32 0, align 4
@ATH9K_TXERR_MASK = common dso_local global i32 0, align 4
@ATH9K_TX_BA = common dso_local global i32 0, align 4
@ATH_DBG_MAX_SAMPLES = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath_debug_stat_tx(%struct.ath_softc* %0, %struct.ath_buf* %1, %struct.ath_tx_status* %2, %struct.ath_txq* %3, i32 %4) #0 {
  %6 = alloca %struct.ath_softc*, align 8
  %7 = alloca %struct.ath_buf*, align 8
  %8 = alloca %struct.ath_tx_status*, align 8
  %9 = alloca %struct.ath_txq*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %6, align 8
  store %struct.ath_buf* %1, %struct.ath_buf** %7, align 8
  store %struct.ath_tx_status* %2, %struct.ath_tx_status** %8, align 8
  store %struct.ath_txq* %3, %struct.ath_txq** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load %struct.ath_txq*, %struct.ath_txq** %9, align 8
  %13 = getelementptr inbounds %struct.ath_txq, %struct.ath_txq* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = load i32, i32* @tx_pkts_all, align 4
  %17 = call i32 @TX_STAT_INC(i32 %15, i32 %16)
  %18 = load %struct.ath_buf*, %struct.ath_buf** %7, align 8
  %19 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %18, i32 0, i32 0
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %24 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %33, %22
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %31, align 4
  %36 = load %struct.ath_buf*, %struct.ath_buf** %7, align 8
  %37 = call i64 @bf_isampdu(%struct.ath_buf* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %5
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @ATH_TX_ERROR, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @a_xretries, align 4
  %47 = call i32 @TX_STAT_INC(i32 %45, i32 %46)
  br label %52

48:                                               ; preds = %39
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @a_completed, align 4
  %51 = call i32 @TX_STAT_INC(i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %48, %44
  br label %69

53:                                               ; preds = %5
  %54 = load %struct.ath_tx_status*, %struct.ath_tx_status** %8, align 8
  %55 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @ATH9K_TXERR_XRETRY, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %53
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @xretries, align 4
  %63 = call i32 @TX_STAT_INC(i32 %61, i32 %62)
  br label %68

64:                                               ; preds = %53
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* @completed, align 4
  %67 = call i32 @TX_STAT_INC(i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %64, %60
  br label %69

69:                                               ; preds = %68, %52
  %70 = load %struct.ath_tx_status*, %struct.ath_tx_status** %8, align 8
  %71 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @ATH9K_TXERR_FILT, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %69
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* @txerr_filtered, align 4
  %79 = call i32 @TX_STAT_INC(i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %76, %69
  %81 = load %struct.ath_tx_status*, %struct.ath_tx_status** %8, align 8
  %82 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @ATH9K_TXERR_FIFO, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %80
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* @fifo_underrun, align 4
  %90 = call i32 @TX_STAT_INC(i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %87, %80
  %92 = load %struct.ath_tx_status*, %struct.ath_tx_status** %8, align 8
  %93 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @ATH9K_TXERR_XTXOP, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %91
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* @xtxop, align 4
  %101 = call i32 @TX_STAT_INC(i32 %99, i32 %100)
  br label %102

102:                                              ; preds = %98, %91
  %103 = load %struct.ath_tx_status*, %struct.ath_tx_status** %8, align 8
  %104 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @ATH9K_TXERR_TIMER_EXPIRED, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %102
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* @timer_exp, align 4
  %112 = call i32 @TX_STAT_INC(i32 %110, i32 %111)
  br label %113

113:                                              ; preds = %109, %102
  %114 = load %struct.ath_tx_status*, %struct.ath_tx_status** %8, align 8
  %115 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @ATH9K_TX_DESC_CFG_ERR, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %113
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* @desc_cfg_err, align 4
  %123 = call i32 @TX_STAT_INC(i32 %121, i32 %122)
  br label %124

124:                                              ; preds = %120, %113
  %125 = load %struct.ath_tx_status*, %struct.ath_tx_status** %8, align 8
  %126 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @ATH9K_TX_DATA_UNDERRUN, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %124
  %132 = load i32, i32* %11, align 4
  %133 = load i32, i32* @data_underrun, align 4
  %134 = call i32 @TX_STAT_INC(i32 %132, i32 %133)
  br label %135

135:                                              ; preds = %131, %124
  %136 = load %struct.ath_tx_status*, %struct.ath_tx_status** %8, align 8
  %137 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @ATH9K_TX_DELIM_UNDERRUN, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %135
  %143 = load i32, i32* %11, align 4
  %144 = load i32, i32* @delim_underrun, align 4
  %145 = call i32 @TX_STAT_INC(i32 %143, i32 %144)
  br label %146

146:                                              ; preds = %142, %135
  ret void
}

declare dso_local i32 @TX_STAT_INC(i32, i32) #1

declare dso_local i64 @bf_isampdu(%struct.ath_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
