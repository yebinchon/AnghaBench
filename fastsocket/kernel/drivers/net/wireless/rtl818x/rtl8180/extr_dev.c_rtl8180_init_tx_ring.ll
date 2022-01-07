; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rtl818x/rtl8180/extr_dev.c_rtl8180_init_tx_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rtl818x/rtl8180/extr_dev.c_rtl8180_init_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32, %struct.rtl8180_priv* }
%struct.rtl8180_priv = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i64, i64, %struct.rtl8180_tx_desc* }
%struct.rtl8180_tx_desc = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"Cannot allocate TX ring (prio = %d)\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32, i32)* @rtl8180_init_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8180_init_tx_ring(%struct.ieee80211_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rtl8180_priv*, align 8
  %9 = alloca %struct.rtl8180_tx_desc*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %13 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %12, i32 0, i32 1
  %14 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %13, align 8
  store %struct.rtl8180_priv* %14, %struct.rtl8180_priv** %8, align 8
  %15 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %8, align 8
  %16 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = zext i32 %18 to i64
  %20 = mul i64 4, %19
  %21 = trunc i64 %20 to i32
  %22 = call %struct.rtl8180_tx_desc* @pci_alloc_consistent(i32 %17, i32 %21, i64* %10)
  store %struct.rtl8180_tx_desc* %22, %struct.rtl8180_tx_desc** %9, align 8
  %23 = load %struct.rtl8180_tx_desc*, %struct.rtl8180_tx_desc** %9, align 8
  %24 = icmp ne %struct.rtl8180_tx_desc* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %3
  %26 = load %struct.rtl8180_tx_desc*, %struct.rtl8180_tx_desc** %9, align 8
  %27 = ptrtoint %struct.rtl8180_tx_desc* %26 to i64
  %28 = and i64 %27, 255
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %25, %3
  %31 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %32 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @wiphy_err(i32 %33, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %107

38:                                               ; preds = %25
  %39 = load %struct.rtl8180_tx_desc*, %struct.rtl8180_tx_desc** %9, align 8
  %40 = load i32, i32* %7, align 4
  %41 = zext i32 %40 to i64
  %42 = mul i64 4, %41
  %43 = trunc i64 %42 to i32
  %44 = call i32 @memset(%struct.rtl8180_tx_desc* %39, i32 0, i32 %43)
  %45 = load %struct.rtl8180_tx_desc*, %struct.rtl8180_tx_desc** %9, align 8
  %46 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %8, align 8
  %47 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 4
  store %struct.rtl8180_tx_desc* %45, %struct.rtl8180_tx_desc** %52, align 8
  %53 = load i64, i64* %10, align 8
  %54 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %8, align 8
  %55 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 3
  store i64 %53, i64* %60, align 8
  %61 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %8, align 8
  %62 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  store i64 0, i64* %67, align 8
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %8, align 8
  %70 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  store i32 %68, i32* %75, align 8
  %76 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %8, align 8
  %77 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = call i32 @skb_queue_head_init(i32* %82)
  store i32 0, i32* %11, align 4
  br label %84

84:                                               ; preds = %103, %38
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp ult i32 %85, %86
  br i1 %87, label %88, label %106

88:                                               ; preds = %84
  %89 = load i64, i64* %10, align 8
  %90 = load i32, i32* %11, align 4
  %91 = add nsw i32 %90, 1
  %92 = load i32, i32* %7, align 4
  %93 = urem i32 %91, %92
  %94 = zext i32 %93 to i64
  %95 = mul i64 %94, 4
  %96 = add i64 %89, %95
  %97 = call i32 @cpu_to_le32(i64 %96)
  %98 = load %struct.rtl8180_tx_desc*, %struct.rtl8180_tx_desc** %9, align 8
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.rtl8180_tx_desc, %struct.rtl8180_tx_desc* %98, i64 %100
  %102 = getelementptr inbounds %struct.rtl8180_tx_desc, %struct.rtl8180_tx_desc* %101, i32 0, i32 0
  store i32 %97, i32* %102, align 4
  br label %103

103:                                              ; preds = %88
  %104 = load i32, i32* %11, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %11, align 4
  br label %84

106:                                              ; preds = %84
  store i32 0, i32* %4, align 4
  br label %107

107:                                              ; preds = %106, %30
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local %struct.rtl8180_tx_desc* @pci_alloc_consistent(i32, i32, i64*) #1

declare dso_local i32 @wiphy_err(i32, i8*, i32) #1

declare dso_local i32 @memset(%struct.rtl8180_tx_desc*, i32, i32) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @cpu_to_le32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
