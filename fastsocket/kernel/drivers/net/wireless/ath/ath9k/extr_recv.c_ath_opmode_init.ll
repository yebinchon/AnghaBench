; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_recv.c_ath_opmode_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_recv.c_ath_opmode_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { %struct.ath_hw* }
%struct.ath_hw = type { i32 }
%struct.ath_common = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_softc*)* @ath_opmode_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_opmode_init(%struct.ath_softc* %0) #0 {
  %2 = alloca %struct.ath_softc*, align 8
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath_common*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32], align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %2, align 8
  %7 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %8 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %7, i32 0, i32 0
  %9 = load %struct.ath_hw*, %struct.ath_hw** %8, align 8
  store %struct.ath_hw* %9, %struct.ath_hw** %3, align 8
  %10 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %11 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %10)
  store %struct.ath_common* %11, %struct.ath_common** %4, align 8
  %12 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %13 = call i32 @ath_calcrxfilter(%struct.ath_softc* %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @ath9k_hw_setrxfilter(%struct.ath_hw* %14, i32 %15)
  %17 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %18 = call i32 @ath_hw_setbssidmask(%struct.ath_common* %17)
  %19 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %20 = call i32 @ath9k_hw_setopmode(%struct.ath_hw* %19)
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 -1, i32* %21, align 4
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 -1, i32* %22, align 4
  %23 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ath9k_hw_setmcastfilter(%struct.ath_hw* %23, i32 %25, i32 %27)
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath_calcrxfilter(%struct.ath_softc*) #1

declare dso_local i32 @ath9k_hw_setrxfilter(%struct.ath_hw*, i32) #1

declare dso_local i32 @ath_hw_setbssidmask(%struct.ath_common*) #1

declare dso_local i32 @ath9k_hw_setopmode(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_setmcastfilter(%struct.ath_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
