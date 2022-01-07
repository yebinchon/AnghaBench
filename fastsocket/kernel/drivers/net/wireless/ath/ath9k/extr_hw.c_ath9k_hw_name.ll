; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_name.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"Atheros AR%s Rev:%x\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Atheros AR%s MAC/BB Rev:%x AR%s RF Rev:%x\00", align 1
@AR_RADIO_SREV_MAJOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_hw_name(%struct.ath_hw* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %9 = call i64 @AR_SREV_9280_20_OR_LATER(%struct.ath_hw* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %3
  %12 = load i8*, i8** %5, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %15 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @ath9k_hw_mac_bb_name(i32 %17)
  %19 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %20 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i8*, i64, i8*, i8*, i32, ...) @snprintf(i8* %12, i64 %13, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %18, i32 %22)
  store i32 %23, i32* %7, align 4
  br label %48

24:                                               ; preds = %3
  %25 = load i8*, i8** %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %28 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @ath9k_hw_mac_bb_name(i32 %30)
  %32 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %33 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %37 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @AR_RADIO_SREV_MAJOR, align 4
  %41 = and i32 %39, %40
  %42 = call i8* @ath9k_hw_rf_name(i32 %41)
  %43 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %44 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i8*, i64, i8*, i8*, i32, ...) @snprintf(i8* %25, i64 %26, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %31, i32 %35, i8* %42, i32 %46)
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %24, %11
  %49 = load i8*, i8** %5, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  store i8 0, i8* %52, align 1
  ret void
}

declare dso_local i64 @AR_SREV_9280_20_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, i32, ...) #1

declare dso_local i8* @ath9k_hw_mac_bb_name(i32) #1

declare dso_local i8* @ath9k_hw_rf_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
