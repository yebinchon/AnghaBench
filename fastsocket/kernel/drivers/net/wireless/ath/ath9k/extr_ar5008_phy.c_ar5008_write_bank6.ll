; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar5008_phy.c_ar5008_write_bank6.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar5008_phy.c_ar5008_write_bank6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32*, %struct.ar5416IniArray }
%struct.ar5416IniArray = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, i32*)* @ar5008_write_bank6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar5008_write_bank6(%struct.ath_hw* %0, i32* %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ar5416IniArray*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %9 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %8, i32 0, i32 1
  store %struct.ar5416IniArray* %9, %struct.ar5416IniArray** %5, align 8
  %10 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %11 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %6, align 8
  %13 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %14 = call i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw* %13)
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %35, %2
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.ar5416IniArray*, %struct.ar5416IniArray** %5, align 8
  %18 = getelementptr inbounds %struct.ar5416IniArray, %struct.ar5416IniArray* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %38

21:                                               ; preds = %15
  %22 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %23 = load %struct.ar5416IniArray*, %struct.ar5416IniArray** %5, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @INI_RA(%struct.ar5416IniArray* %23, i32 %24, i32 0)
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @REG_WRITE(%struct.ath_hw* %22, i32 %25, i32 %30)
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @DO_DELAY(i32 %33)
  br label %35

35:                                               ; preds = %21
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  br label %15

38:                                               ; preds = %15
  %39 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %40 = call i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw* %39)
  ret void
}

declare dso_local i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw*) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @INI_RA(%struct.ar5416IniArray*, i32, i32) #1

declare dso_local i32 @DO_DELAY(i32) #1

declare dso_local i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
