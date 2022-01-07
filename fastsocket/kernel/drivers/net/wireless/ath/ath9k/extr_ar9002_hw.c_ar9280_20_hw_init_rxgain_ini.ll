; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9002_hw.c_ar9280_20_hw_init_rxgain_ini.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9002_hw.c_ar9280_20_hw_init_rxgain_ini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.ath_hw*, i32)* }

@EEP_MINOR_REV = common dso_local global i32 0, align 4
@AR5416_EEP_MINOR_VER_17 = common dso_local global i64 0, align 8
@EEP_RXGAIN_TYPE = common dso_local global i32 0, align 4
@AR5416_EEP_RXGAIN_13DB_BACKOFF = common dso_local global i64 0, align 8
@ar9280Modes_backoff_13db_rxgain_9280_2 = common dso_local global i32 0, align 4
@AR5416_EEP_RXGAIN_23DB_BACKOFF = common dso_local global i64 0, align 8
@ar9280Modes_backoff_23db_rxgain_9280_2 = common dso_local global i32 0, align 4
@ar9280Modes_original_rxgain_9280_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*)* @ar9280_20_hw_init_rxgain_ini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9280_20_hw_init_rxgain_ini(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca i64, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %4 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %5 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64 (%struct.ath_hw*, i32)*, i64 (%struct.ath_hw*, i32)** %7, align 8
  %9 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %10 = load i32, i32* @EEP_MINOR_REV, align 4
  %11 = call i64 %8(%struct.ath_hw* %9, i32 %10)
  %12 = load i64, i64* @AR5416_EEP_MINOR_VER_17, align 8
  %13 = icmp sge i64 %11, %12
  br i1 %13, label %14, label %47

14:                                               ; preds = %1
  %15 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %16 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64 (%struct.ath_hw*, i32)*, i64 (%struct.ath_hw*, i32)** %18, align 8
  %20 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %21 = load i32, i32* @EEP_RXGAIN_TYPE, align 4
  %22 = call i64 %19(%struct.ath_hw* %20, i32 %21)
  store i64 %22, i64* %3, align 8
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* @AR5416_EEP_RXGAIN_13DB_BACKOFF, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %14
  %27 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %28 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %27, i32 0, i32 0
  %29 = load i32, i32* @ar9280Modes_backoff_13db_rxgain_9280_2, align 4
  %30 = call i32 @INIT_INI_ARRAY(i32* %28, i32 %29)
  br label %46

31:                                               ; preds = %14
  %32 = load i64, i64* %3, align 8
  %33 = load i64, i64* @AR5416_EEP_RXGAIN_23DB_BACKOFF, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %37 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %36, i32 0, i32 0
  %38 = load i32, i32* @ar9280Modes_backoff_23db_rxgain_9280_2, align 4
  %39 = call i32 @INIT_INI_ARRAY(i32* %37, i32 %38)
  br label %45

40:                                               ; preds = %31
  %41 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %42 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %41, i32 0, i32 0
  %43 = load i32, i32* @ar9280Modes_original_rxgain_9280_2, align 4
  %44 = call i32 @INIT_INI_ARRAY(i32* %42, i32 %43)
  br label %45

45:                                               ; preds = %40, %35
  br label %46

46:                                               ; preds = %45, %26
  br label %52

47:                                               ; preds = %1
  %48 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %49 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %48, i32 0, i32 0
  %50 = load i32, i32* @ar9280Modes_original_rxgain_9280_2, align 4
  %51 = call i32 @INIT_INI_ARRAY(i32* %49, i32 %50)
  br label %52

52:                                               ; preds = %47, %46
  ret void
}

declare dso_local i32 @INIT_INI_ARRAY(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
