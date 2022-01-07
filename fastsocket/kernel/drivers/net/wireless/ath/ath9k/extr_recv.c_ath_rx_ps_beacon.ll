; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_recv.c_ath_rx_ps_beacon.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_recv.c_ath_rx_ps_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.ath_common = type { i32 }

@PS_WAIT_FOR_BEACON = common dso_local global i32 0, align 4
@PS_BEACON_SYNC = common dso_local global i32 0, align 4
@PS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Reconfigure beacon timers based on synchronized timestamp\0A\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"Received DTIM beacon indicating buffered broadcast/multicast frame(s)\0A\00", align 1
@PS_WAIT_FOR_CAB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"PS wait for CAB frames timed out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_softc*, %struct.sk_buff*)* @ath_rx_ps_beacon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_rx_ps_beacon(%struct.ath_softc* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ath_common*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %7 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.ath_common* @ath9k_hw_common(i32 %8)
  store %struct.ath_common* %9, %struct.ath_common** %5, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %12, 36
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %72

15:                                               ; preds = %2
  %16 = load i32, i32* @PS_WAIT_FOR_BEACON, align 4
  %17 = xor i32 %16, -1
  %18 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %19 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %23 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @PS_BEACON_SYNC, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %15
  %29 = load i32, i32* @PS_BEACON_SYNC, align 4
  %30 = xor i32 %29, -1
  %31 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %32 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %36 = load i32, i32* @PS, align 4
  %37 = call i32 @ath_dbg(%struct.ath_common* %35, i32 %36, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %39 = call i32 @ath9k_set_beacon(%struct.ath_softc* %38)
  br label %40

40:                                               ; preds = %28, %15
  %41 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %42 = call i64 @ath_beacon_dtim_pending_cab(%struct.sk_buff* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %40
  %45 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %46 = load i32, i32* @PS, align 4
  %47 = call i32 @ath_dbg(%struct.ath_common* %45, i32 %46, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @PS_WAIT_FOR_CAB, align 4
  %49 = load i32, i32* @PS_WAIT_FOR_BEACON, align 4
  %50 = or i32 %48, %49
  %51 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %52 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  br label %72

55:                                               ; preds = %40
  %56 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %57 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @PS_WAIT_FOR_CAB, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %55
  %63 = load i32, i32* @PS_WAIT_FOR_CAB, align 4
  %64 = xor i32 %63, -1
  %65 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %66 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, %64
  store i32 %68, i32* %66, align 4
  %69 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %70 = load i32, i32* @PS, align 4
  %71 = call i32 @ath_dbg(%struct.ath_common* %69, i32 %70, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %72

72:                                               ; preds = %14, %44, %62, %55
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(i32) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*) #1

declare dso_local i32 @ath9k_set_beacon(%struct.ath_softc*) #1

declare dso_local i64 @ath_beacon_dtim_pending_cab(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
