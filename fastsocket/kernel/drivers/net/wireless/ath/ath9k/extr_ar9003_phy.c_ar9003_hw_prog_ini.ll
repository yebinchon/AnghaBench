; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_phy.c_ar9003_hw_prog_ini.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_phy.c_ar9003_hw_prog_ini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ar5416IniArray = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, %struct.ar5416IniArray*, i32)* @ar9003_hw_prog_ini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_hw_prog_ini(%struct.ath_hw* %0, %struct.ar5416IniArray* %1, i32 %2) #0 {
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca %struct.ar5416IniArray*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store %struct.ar5416IniArray* %1, %struct.ar5416IniArray** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %11 = load %struct.ar5416IniArray*, %struct.ar5416IniArray** %5, align 8
  %12 = getelementptr inbounds %struct.ar5416IniArray, %struct.ar5416IniArray* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  br label %47

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.ar5416IniArray*, %struct.ar5416IniArray** %5, align 8
  %19 = getelementptr inbounds %struct.ar5416IniArray, %struct.ar5416IniArray* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp sge i32 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 1, i32* %6, align 4
  br label %23

23:                                               ; preds = %22, %16
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %44, %23
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.ar5416IniArray*, %struct.ar5416IniArray** %5, align 8
  %27 = getelementptr inbounds %struct.ar5416IniArray, %struct.ar5416IniArray* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ult i32 %25, %28
  br i1 %29, label %30, label %47

30:                                               ; preds = %24
  %31 = load %struct.ar5416IniArray*, %struct.ar5416IniArray** %5, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @INI_RA(%struct.ar5416IniArray* %31, i32 %32, i32 0)
  store i32 %33, i32* %9, align 4
  %34 = load %struct.ar5416IniArray*, %struct.ar5416IniArray** %5, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @INI_RA(%struct.ar5416IniArray* %34, i32 %35, i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @REG_WRITE(%struct.ath_hw* %38, i32 %39, i32 %40)
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @DO_DELAY(i32 %42)
  br label %44

44:                                               ; preds = %30
  %45 = load i32, i32* %7, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %24

47:                                               ; preds = %15, %24
  ret void
}

declare dso_local i32 @INI_RA(%struct.ar5416IniArray*, i32, i32) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @DO_DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
