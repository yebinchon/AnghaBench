; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt61pci.c_rt61pci_agc_to_rssi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt61pci.c_rt61pci_agc_to_rssi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32, i64 }

@RXD_W1_RSSI_LNA = common dso_local global i32 0, align 4
@IEEE80211_BAND_5GHZ = common dso_local global i64 0, align 8
@RXD_W1_RSSI_AGC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*, i32)* @rt61pci_agc_to_rssi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt61pci_agc_to_rssi(%struct.rt2x00_dev* %0, i32 %1) #0 {
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
  br label %48

25:                                               ; preds = %21, %18, %15
  %26 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %27 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %25
  %32 = load i32, i32* %7, align 4
  %33 = icmp eq i32 %32, 3
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %7, align 4
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %37, label %40

37:                                               ; preds = %34, %31
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 10
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %37, %34
  br label %41

41:                                               ; preds = %40, %25
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @RXD_W1_RSSI_AGC, align 4
  %44 = call i32 @rt2x00_get_field32(i32 %42, i32 %43)
  %45 = mul nsw i32 %44, 2
  %46 = load i32, i32* %6, align 4
  %47 = sub nsw i32 %45, %46
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %41, %24
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @rt2x00_get_field32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
