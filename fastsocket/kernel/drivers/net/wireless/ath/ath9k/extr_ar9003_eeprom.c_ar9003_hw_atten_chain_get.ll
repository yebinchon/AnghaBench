; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9003_hw_atten_chain_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9003_hw_atten_chain_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.ar9300_eeprom }
%struct.ar9300_eeprom = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i32*, i32* }
%struct.TYPE_6__ = type { i32* }
%struct.ath9k_channel = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*, i32, %struct.ath9k_channel*)* @ar9003_hw_atten_chain_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar9003_hw_atten_chain_get(%struct.ath_hw* %0, i32 %1, %struct.ath9k_channel* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath9k_channel*, align 8
  %8 = alloca [3 x i32], align 4
  %9 = alloca [3 x i32], align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ar9300_eeprom*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ath9k_channel* %2, %struct.ath9k_channel** %7, align 8
  %12 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %13 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store %struct.ar9300_eeprom* %14, %struct.ar9300_eeprom** %11, align 8
  %15 = load i32, i32* %6, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %91

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 3
  br i1 %19, label %20, label %91

20:                                               ; preds = %17
  %21 = load %struct.ath9k_channel*, %struct.ath9k_channel** %7, align 8
  %22 = call i64 @IS_CHAN_2GHZ(%struct.ath9k_channel* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %20
  %25 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %11, align 8
  %26 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %4, align 4
  br label %92

33:                                               ; preds = %20
  %34 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %11, align 8
  %35 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %82

43:                                               ; preds = %33
  %44 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %11, align 8
  %45 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  store i32 %51, i32* %52, align 4
  %53 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  store i32 5180, i32* %53, align 4
  %54 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %11, align 8
  %55 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  store i32 %61, i32* %62, align 4
  %63 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  store i32 5500, i32* %63, align 4
  %64 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %11, align 8
  %65 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 2
  store i32 %71, i32* %72, align 4
  %73 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  store i32 5785, i32* %73, align 4
  %74 = load %struct.ath9k_channel*, %struct.ath9k_channel** %7, align 8
  %75 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = trunc i64 %76 to i32
  %78 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %79 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %80 = call i32 @ar9003_hw_power_interpolate(i32 %77, i32* %78, i32* %79, i32 3)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  store i32 %81, i32* %4, align 4
  br label %92

82:                                               ; preds = %33
  %83 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %11, align 8
  %84 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %4, align 4
  br label %92

91:                                               ; preds = %17, %3
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %91, %82, %43, %24
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i64 @IS_CHAN_2GHZ(%struct.ath9k_channel*) #1

declare dso_local i32 @ar9003_hw_power_interpolate(i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
