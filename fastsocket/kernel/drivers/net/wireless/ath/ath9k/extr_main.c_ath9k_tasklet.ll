; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_tasklet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32, i32, i32, i32, i64, %struct.ath_hw* }
%struct.ath_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ath_common = type { i32 }

@ATH9K_INT_FATAL = common dso_local global i32 0, align 4
@ATH9K_INT_BB_WATCHDOG = common dso_local global i32 0, align 4
@RESET_TYPE_FATAL_INT = common dso_local global i32 0, align 4
@RESET_TYPE_BB_WATCHDOG = common dso_local global i32 0, align 4
@ATH9K_INT_TSFOOR = common dso_local global i32 0, align 4
@PS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"TSFOOR - Sync with next Beacon\0A\00", align 1
@PS_WAIT_FOR_BEACON = common dso_local global i32 0, align 4
@PS_BEACON_SYNC = common dso_local global i32 0, align 4
@ATH9K_HW_CAP_EDMA = common dso_local global i32 0, align 4
@ATH9K_INT_RXHP = common dso_local global i32 0, align 4
@ATH9K_INT_RXLP = common dso_local global i32 0, align 4
@ATH9K_INT_RXEOL = common dso_local global i32 0, align 4
@ATH9K_INT_RXORN = common dso_local global i32 0, align 4
@ATH9K_INT_RX = common dso_local global i32 0, align 4
@ATH9K_INT_TX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_tasklet(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca %struct.ath_common*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %10 = load i64, i64* %2, align 8
  %11 = inttoptr i64 %10 to %struct.ath_softc*
  store %struct.ath_softc* %11, %struct.ath_softc** %3, align 8
  %12 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %13 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %12, i32 0, i32 5
  %14 = load %struct.ath_hw*, %struct.ath_hw** %13, align 8
  store %struct.ath_hw* %14, %struct.ath_hw** %4, align 8
  %15 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %16 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %15)
  store %struct.ath_common* %16, %struct.ath_common** %5, align 8
  %17 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %18 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %8, align 4
  %20 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %21 = call i32 @ath9k_ps_wakeup(%struct.ath_softc* %20)
  %22 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %23 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %22, i32 0, i32 2
  %24 = call i32 @spin_lock(i32* %23)
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @ATH9K_INT_FATAL, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %1
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @ATH9K_INT_BB_WATCHDOG, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %29, %1
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @ATH9K_INT_FATAL, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @RESET_TYPE_FATAL_INT, align 4
  store i32 %40, i32* %6, align 4
  br label %43

41:                                               ; preds = %34
  %42 = load i32, i32* @RESET_TYPE_BB_WATCHDOG, align 4
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @ath9k_queue_reset(%struct.ath_softc* %44, i32 %45)
  br label %146

47:                                               ; preds = %29
  %48 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %49 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %48, i32 0, i32 3
  %50 = load i64, i64* %7, align 8
  %51 = call i32 @spin_lock_irqsave(i32* %49, i64 %50)
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @ATH9K_INT_TSFOOR, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %72

56:                                               ; preds = %47
  %57 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %58 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %56
  %62 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %63 = load i32, i32* @PS, align 4
  %64 = call i32 @ath_dbg(%struct.ath_common* %62, i32 %63, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %65 = load i32, i32* @PS_WAIT_FOR_BEACON, align 4
  %66 = load i32, i32* @PS_BEACON_SYNC, align 4
  %67 = or i32 %65, %66
  %68 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %69 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %61, %56, %47
  %73 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %74 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %73, i32 0, i32 3
  %75 = load i64, i64* %7, align 8
  %76 = call i32 @spin_unlock_irqrestore(i32* %74, i64 %75)
  %77 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %78 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @ATH9K_HW_CAP_EDMA, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %72
  %85 = load i32, i32* @ATH9K_INT_RXHP, align 4
  %86 = load i32, i32* @ATH9K_INT_RXLP, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @ATH9K_INT_RXEOL, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @ATH9K_INT_RXORN, align 4
  %91 = or i32 %89, %90
  store i32 %91, i32* %9, align 4
  br label %98

92:                                               ; preds = %72
  %93 = load i32, i32* @ATH9K_INT_RX, align 4
  %94 = load i32, i32* @ATH9K_INT_RXEOL, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @ATH9K_INT_RXORN, align 4
  %97 = or i32 %95, %96
  store i32 %97, i32* %9, align 4
  br label %98

98:                                               ; preds = %92, %84
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %9, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %122

103:                                              ; preds = %98
  %104 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %105 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @ATH9K_HW_CAP_EDMA, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %103
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* @ATH9K_INT_RXHP, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %118 = call i32 @ath_rx_tasklet(%struct.ath_softc* %117, i32 0, i32 1)
  br label %119

119:                                              ; preds = %116, %111, %103
  %120 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %121 = call i32 @ath_rx_tasklet(%struct.ath_softc* %120, i32 0, i32 0)
  br label %122

122:                                              ; preds = %119, %98
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* @ATH9K_INT_TX, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %142

127:                                              ; preds = %122
  %128 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %129 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @ATH9K_HW_CAP_EDMA, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %127
  %136 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %137 = call i32 @ath_tx_edma_tasklet(%struct.ath_softc* %136)
  br label %141

138:                                              ; preds = %127
  %139 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %140 = call i32 @ath_tx_tasklet(%struct.ath_softc* %139)
  br label %141

141:                                              ; preds = %138, %135
  br label %142

142:                                              ; preds = %141, %122
  %143 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %144 = load i32, i32* %8, align 4
  %145 = call i32 @ath9k_btcoex_handle_interrupt(%struct.ath_softc* %143, i32 %144)
  br label %146

146:                                              ; preds = %142, %43
  %147 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %148 = call i32 @ath9k_hw_enable_interrupts(%struct.ath_hw* %147)
  %149 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %150 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %149, i32 0, i32 2
  %151 = call i32 @spin_unlock(i32* %150)
  %152 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %153 = call i32 @ath9k_ps_restore(%struct.ath_softc* %152)
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_ps_wakeup(%struct.ath_softc*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ath9k_queue_reset(%struct.ath_softc*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ath_rx_tasklet(%struct.ath_softc*, i32, i32) #1

declare dso_local i32 @ath_tx_edma_tasklet(%struct.ath_softc*) #1

declare dso_local i32 @ath_tx_tasklet(%struct.ath_softc*) #1

declare dso_local i32 @ath9k_btcoex_handle_interrupt(%struct.ath_softc*, i32) #1

declare dso_local i32 @ath9k_hw_enable_interrupts(%struct.ath_hw*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ath9k_ps_restore(%struct.ath_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
