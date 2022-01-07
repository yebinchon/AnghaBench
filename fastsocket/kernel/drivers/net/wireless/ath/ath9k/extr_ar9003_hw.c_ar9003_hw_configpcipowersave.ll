; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_hw.c_ar9003_hw_configpcipowersave.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_hw.c_ar9003_hw_configpcipowersave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.TYPE_2__, i64 }
%struct.ar5416IniArray = type { i32 }
%struct.TYPE_2__ = type { i64, i64 }

@AR_PCIE_PM_CTRL = common dso_local global i32 0, align 4
@AR_PCIE_PM_CTRL_ENA = common dso_local global i32 0, align 4
@AR_WA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, i32)* @ar9003_hw_configpcipowersave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_hw_configpcipowersave(%struct.ath_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ar5416IniArray*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %35, label %9

9:                                                ; preds = %2
  %10 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %11 = load i32, i32* @AR_PCIE_PM_CTRL, align 4
  %12 = load i32, i32* @AR_PCIE_PM_CTRL_ENA, align 4
  %13 = call i32 @REG_SET_BIT(%struct.ath_hw* %10, i32 %11, i32 %12)
  %14 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %15 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %9
  %20 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %21 = load i64, i64* @AR_WA, align 8
  %22 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %23 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @REG_WRITE(%struct.ath_hw* %20, i64 %21, i64 %25)
  br label %34

27:                                               ; preds = %9
  %28 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %29 = load i64, i64* @AR_WA, align 8
  %30 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %31 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @REG_WRITE(%struct.ath_hw* %28, i64 %29, i64 %32)
  br label %34

34:                                               ; preds = %27, %19
  br label %35

35:                                               ; preds = %34, %2
  %36 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %37 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %71

41:                                               ; preds = %35
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %46 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %45, i32 0, i32 1
  br label %50

47:                                               ; preds = %41
  %48 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %49 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %48, i32 0, i32 0
  br label %50

50:                                               ; preds = %47, %44
  %51 = phi %struct.ar5416IniArray* [ %46, %44 ], [ %49, %47 ]
  store %struct.ar5416IniArray* %51, %struct.ar5416IniArray** %6, align 8
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %67, %50
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.ar5416IniArray*, %struct.ar5416IniArray** %6, align 8
  %55 = getelementptr inbounds %struct.ar5416IniArray, %struct.ar5416IniArray* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ult i32 %53, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %52
  %59 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %60 = load %struct.ar5416IniArray*, %struct.ar5416IniArray** %6, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i64 @INI_RA(%struct.ar5416IniArray* %60, i32 %61, i32 0)
  %63 = load %struct.ar5416IniArray*, %struct.ar5416IniArray** %6, align 8
  %64 = load i32, i32* %5, align 4
  %65 = call i64 @INI_RA(%struct.ar5416IniArray* %63, i32 %64, i32 1)
  %66 = call i32 @REG_WRITE(%struct.ath_hw* %59, i64 %62, i64 %65)
  br label %67

67:                                               ; preds = %58
  %68 = load i32, i32* %5, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %5, align 4
  br label %52

70:                                               ; preds = %52
  br label %71

71:                                               ; preds = %70, %35
  ret void
}

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i64, i64) #1

declare dso_local i64 @INI_RA(%struct.ar5416IniArray*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
