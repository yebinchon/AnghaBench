; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_post_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_post_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { {}*, {}* }
%struct.ath_common = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@ATH_USB = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Eeprom VER: %d, REV: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*)* @ath9k_hw_post_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_hw_post_init(%struct.ath_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath_common*, align 8
  %5 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  %6 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %7 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %6)
  store %struct.ath_common* %7, %struct.ath_common** %4, align 8
  %8 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %9 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @ATH_USB, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %17 = call i32 @ath9k_hw_chip_test(%struct.ath_hw* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %72

22:                                               ; preds = %15
  br label %23

23:                                               ; preds = %22, %1
  %24 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %25 = call i32 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %23
  %28 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %29 = call i32 @ar9002_hw_rf_claim(%struct.ath_hw* %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %2, align 4
  br label %72

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %34, %23
  %36 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %37 = call i32 @ath9k_hw_eeprom_init(%struct.ath_hw* %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %72

42:                                               ; preds = %35
  %43 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %44 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %43)
  %45 = load i32, i32* @CONFIG, align 4
  %46 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %47 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = bitcast {}** %49 to i32 (%struct.ath_hw*)**
  %51 = load i32 (%struct.ath_hw*)*, i32 (%struct.ath_hw*)** %50, align 8
  %52 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %53 = call i32 %51(%struct.ath_hw* %52)
  %54 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %55 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = bitcast {}** %57 to i32 (%struct.ath_hw*)**
  %59 = load i32 (%struct.ath_hw*)*, i32 (%struct.ath_hw*)** %58, align 8
  %60 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %61 = call i32 %59(%struct.ath_hw* %60)
  %62 = call i32 @ath_dbg(%struct.ath_common* %44, i32 %45, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %61)
  %63 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %64 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %42
  %69 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %70 = call i32 @ath9k_hw_ani_init(%struct.ath_hw* %69)
  br label %71

71:                                               ; preds = %68, %42
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %71, %40, %32, %19
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_chip_test(%struct.ath_hw*) #1

declare dso_local i32 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @ar9002_hw_rf_claim(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_eeprom_init(%struct.ath_hw*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32, i32) #1

declare dso_local i32 @ath9k_hw_ani_init(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
