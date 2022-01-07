; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_ps_restore.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_ps_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i64, i32, i32, i32, i64, i64 }
%struct.ath_common = type { i32 }

@ATH9K_PM_FULL_SLEEP = common dso_local global i32 0, align 4
@PS_WAIT_FOR_BEACON = common dso_local global i32 0, align 4
@PS_WAIT_FOR_CAB = common dso_local global i32 0, align 4
@PS_WAIT_FOR_PSPOLL_DATA = common dso_local global i32 0, align 4
@PS_WAIT_FOR_TX_ACK = common dso_local global i32 0, align 4
@PS_WAIT_FOR_ANI = common dso_local global i32 0, align 4
@ATH9K_PM_NETWORK_SLEEP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_ps_restore(%struct.ath_softc* %0) #0 {
  %2 = alloca %struct.ath_softc*, align 8
  %3 = alloca %struct.ath_common*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %2, align 8
  %7 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %8 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.ath_common* @ath9k_hw_common(i32 %9)
  store %struct.ath_common* %10, %struct.ath_common** %3, align 8
  %11 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %12 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %11, i32 0, i32 2
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %16 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, -1
  store i64 %18, i64* %16, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %83

21:                                               ; preds = %1
  %22 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %23 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %22, i32 0, i32 5
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  %27 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %28 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @ath9k_hw_setrxabort(i32 %29, i32 1)
  %31 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %32 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @ath9k_hw_stopdmarecv(i32 %33, i32* %6)
  %35 = load i32, i32* @ATH9K_PM_FULL_SLEEP, align 4
  store i32 %35, i32* %4, align 4
  br label %69

36:                                               ; preds = %21
  %37 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %38 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %67

41:                                               ; preds = %36
  %42 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %43 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @PS_WAIT_FOR_BEACON, align 4
  %46 = load i32, i32* @PS_WAIT_FOR_CAB, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @PS_WAIT_FOR_PSPOLL_DATA, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @PS_WAIT_FOR_TX_ACK, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @PS_WAIT_FOR_ANI, align 4
  %53 = or i32 %51, %52
  %54 = and i32 %44, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %67, label %56

56:                                               ; preds = %41
  %57 = load i32, i32* @ATH9K_PM_NETWORK_SLEEP, align 4
  store i32 %57, i32* %4, align 4
  %58 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %59 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @ath9k_hw_btcoex_is_enabled(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %65 = call i32 @ath9k_btcoex_stop_gen_timer(%struct.ath_softc* %64)
  br label %66

66:                                               ; preds = %63, %56
  br label %68

67:                                               ; preds = %41, %36
  br label %83

68:                                               ; preds = %66
  br label %69

69:                                               ; preds = %68, %26
  %70 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %71 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %70, i32 0, i32 0
  %72 = call i32 @spin_lock(i32* %71)
  %73 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %74 = call i32 @ath_hw_cycle_counters_update(%struct.ath_common* %73)
  %75 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %76 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %75, i32 0, i32 0
  %77 = call i32 @spin_unlock(i32* %76)
  %78 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %79 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @ath9k_hw_setpower(i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %69, %67, %20
  %84 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %85 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %84, i32 0, i32 2
  %86 = load i64, i64* %5, align 8
  %87 = call i32 @spin_unlock_irqrestore(i32* %85, i64 %86)
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ath9k_hw_setrxabort(i32, i32) #1

declare dso_local i32 @ath9k_hw_stopdmarecv(i32, i32*) #1

declare dso_local i64 @ath9k_hw_btcoex_is_enabled(i32) #1

declare dso_local i32 @ath9k_btcoex_stop_gen_timer(%struct.ath_softc*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ath_hw_cycle_counters_update(%struct.ath_common*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ath9k_hw_setpower(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
