; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_link.c_ath_paprd_activate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_link.c_ath_paprd_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { %struct.ath_hw* }
%struct.ath_hw = type { i32, %struct.ath9k_hw_cal_data* }
%struct.ath9k_hw_cal_data = type { i32 }
%struct.ath_common = type { i32 }

@CALIBRATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to activate PAPRD\0A\00", align 1
@AR9300_MAX_CHAINS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Activating PAPRD\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_softc*)* @ath_paprd_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_paprd_activate(%struct.ath_softc* %0) #0 {
  %2 = alloca %struct.ath_softc*, align 8
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath_common*, align 8
  %5 = alloca %struct.ath9k_hw_cal_data*, align 8
  %6 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %2, align 8
  %7 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %8 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %7, i32 0, i32 0
  %9 = load %struct.ath_hw*, %struct.ath_hw** %8, align 8
  store %struct.ath_hw* %9, %struct.ath_hw** %3, align 8
  %10 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %11 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %10)
  store %struct.ath_common* %11, %struct.ath_common** %4, align 8
  %12 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %13 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %12, i32 0, i32 1
  %14 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %13, align 8
  store %struct.ath9k_hw_cal_data* %14, %struct.ath9k_hw_cal_data** %5, align 8
  %15 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %5, align 8
  %16 = icmp ne %struct.ath9k_hw_cal_data* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %5, align 8
  %19 = getelementptr inbounds %struct.ath9k_hw_cal_data, %struct.ath9k_hw_cal_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %17, %1
  %23 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %24 = load i32, i32* @CALIBRATE, align 4
  %25 = call i32 @ath_dbg(%struct.ath_common* %23, i32 %24, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %56

26:                                               ; preds = %17
  %27 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %28 = call i32 @ar9003_paprd_enable(%struct.ath_hw* %27, i32 0)
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %47, %26
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @AR9300_MAX_CHAINS, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %50

33:                                               ; preds = %29
  %34 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %35 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @BIT(i32 %37)
  %39 = and i32 %36, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %33
  br label %47

42:                                               ; preds = %33
  %43 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %44 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @ar9003_paprd_populate_single_table(%struct.ath_hw* %43, %struct.ath9k_hw_cal_data* %44, i32 %45)
  br label %47

47:                                               ; preds = %42, %41
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %29

50:                                               ; preds = %29
  %51 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %52 = load i32, i32* @CALIBRATE, align 4
  %53 = call i32 @ath_dbg(%struct.ath_common* %51, i32 %52, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %54 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %55 = call i32 @ar9003_paprd_enable(%struct.ath_hw* %54, i32 1)
  br label %56

56:                                               ; preds = %50, %22
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*) #1

declare dso_local i32 @ar9003_paprd_enable(%struct.ath_hw*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ar9003_paprd_populate_single_table(%struct.ath_hw*, %struct.ath9k_hw_cal_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
