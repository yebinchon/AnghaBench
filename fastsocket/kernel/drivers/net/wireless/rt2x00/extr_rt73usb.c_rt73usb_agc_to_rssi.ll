; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt73usb.c_rt73usb_agc_to_rssi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt73usb.c_rt73usb_agc_to_rssi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32, i64, i32 }

@RXD_W1_RSSI_LNA = common dso_local global i32 0, align 4
@IEEE80211_BAND_5GHZ = common dso_local global i64 0, align 8
@CAPABILITY_EXTERNAL_LNA_A = common dso_local global i32 0, align 4
@RXD_W1_RSSI_AGC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*, i32)* @rt73usb_agc_to_rssi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt73usb_agc_to_rssi(%struct.rt2x00_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rt2x00_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %9 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @RXD_W1_RSSI_LNA, align 4
  %13 = call i32 @rt2x00_get_field32(i32 %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %24 [
    i32 3, label %15
    i32 2, label %18
    i32 1, label %21
  ]

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %16, 90
  store i32 %17, i32* %6, align 4
  br label %25

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %19, 74
  store i32 %20, i32* %6, align 4
  br label %25

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %22, 64
  store i32 %23, i32* %6, align 4
  br label %25

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %69

25:                                               ; preds = %21, %18, %15
  %26 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %27 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %62

31:                                               ; preds = %25
  %32 = load i32, i32* @CAPABILITY_EXTERNAL_LNA_A, align 4
  %33 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %34 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %33, i32 0, i32 2
  %35 = call i64 @test_bit(i32 %32, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %31
  %38 = load i32, i32* %7, align 4
  %39 = icmp eq i32 %38, 3
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %7, align 4
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %46

43:                                               ; preds = %40, %37
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 10
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %43, %40
  br label %61

47:                                               ; preds = %31
  %48 = load i32, i32* %7, align 4
  %49 = icmp eq i32 %48, 3
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 6
  store i32 %52, i32* %6, align 4
  br label %60

53:                                               ; preds = %47
  %54 = load i32, i32* %7, align 4
  %55 = icmp eq i32 %54, 2
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 8
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %56, %53
  br label %60

60:                                               ; preds = %59, %50
  br label %61

61:                                               ; preds = %60, %46
  br label %62

62:                                               ; preds = %61, %25
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @RXD_W1_RSSI_AGC, align 4
  %65 = call i32 @rt2x00_get_field32(i32 %63, i32 %64)
  %66 = mul nsw i32 %65, 2
  %67 = load i32, i32* %6, align 4
  %68 = sub nsw i32 %66, %67
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %62, %24
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @rt2x00_get_field32(i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
