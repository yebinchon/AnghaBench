; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_antenna.c_ath_ant_comb_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_antenna.c_ath_ant_comb_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32, %struct.ath_hw* }
%struct.ath_hw = type { i32 }
%struct.ath_common = type { i64 }
%struct.ath_hw_antcomb_conf = type { i8*, i8* }

@ATH_ANT_DIV_COMB_LNA1 = common dso_local global i8* null, align 8
@ATH_ANT_DIV_COMB_LNA2 = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath_ant_comb_update(%struct.ath_softc* %0) #0 {
  %2 = alloca %struct.ath_softc*, align 8
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath_common*, align 8
  %5 = alloca %struct.ath_hw_antcomb_conf, align 8
  %6 = alloca i8*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %2, align 8
  %7 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %8 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %7, i32 0, i32 1
  %9 = load %struct.ath_hw*, %struct.ath_hw** %8, align 8
  store %struct.ath_hw* %9, %struct.ath_hw** %3, align 8
  %10 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %11 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %10)
  store %struct.ath_common* %11, %struct.ath_common** %4, align 8
  %12 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %13 = call i32 @ath9k_hw_antdiv_comb_conf_get(%struct.ath_hw* %12, %struct.ath_hw_antcomb_conf* %5)
  %14 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %15 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i8*, i8** @ATH_ANT_DIV_COMB_LNA1, align 8
  store i8* %19, i8** %6, align 8
  br label %22

20:                                               ; preds = %1
  %21 = load i8*, i8** @ATH_ANT_DIV_COMB_LNA2, align 8
  store i8* %21, i8** %6, align 8
  br label %22

22:                                               ; preds = %20, %18
  %23 = load i8*, i8** %6, align 8
  %24 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %5, i32 0, i32 1
  store i8* %23, i8** %24, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %5, i32 0, i32 0
  store i8* %25, i8** %26, align 8
  %27 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %28 = call i32 @ath9k_hw_antdiv_comb_conf_set(%struct.ath_hw* %27, %struct.ath_hw_antcomb_conf* %5)
  %29 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %30 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %22
  %34 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %35 = call i32 @ath9k_hw_antctrl_shared_chain_lnadiv(%struct.ath_hw* %34, i32 1)
  br label %36

36:                                               ; preds = %33, %22
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_antdiv_comb_conf_get(%struct.ath_hw*, %struct.ath_hw_antcomb_conf*) #1

declare dso_local i32 @ath9k_hw_antdiv_comb_conf_set(%struct.ath_hw*, %struct.ath_hw_antcomb_conf*) #1

declare dso_local i32 @ath9k_hw_antctrl_shared_chain_lnadiv(%struct.ath_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
