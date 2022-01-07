; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_tx.c_wlcore_lnk_dequeue_high_prio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_tx.c_wlcore_lnk_dequeue_high_prio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.wl1271 = type { %struct.wl1271_link* }
%struct.wl1271_link = type { i32* }

@WL12XX_INVALID_LINK_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.wl1271*, i64, i64, i64*)* @wlcore_lnk_dequeue_high_prio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @wlcore_lnk_dequeue_high_prio(%struct.wl1271* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.wl1271*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.wl1271_link*, align 8
  store %struct.wl1271* %0, %struct.wl1271** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %11 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %12 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %11, i32 0, i32 0
  %13 = load %struct.wl1271_link*, %struct.wl1271_link** %12, align 8
  %14 = load i64, i64* %7, align 8
  %15 = getelementptr inbounds %struct.wl1271_link, %struct.wl1271_link* %13, i64 %14
  store %struct.wl1271_link* %15, %struct.wl1271_link** %10, align 8
  %16 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load %struct.wl1271_link*, %struct.wl1271_link** %10, align 8
  %19 = call i32 @wlcore_hw_lnk_high_prio(%struct.wl1271* %16, i64 %17, %struct.wl1271_link* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %44, label %21

21:                                               ; preds = %4
  %22 = load i64*, i64** %9, align 8
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @WL12XX_INVALID_LINK_ID, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %43

26:                                               ; preds = %21
  %27 = load %struct.wl1271_link*, %struct.wl1271_link** %10, align 8
  %28 = getelementptr inbounds %struct.wl1271_link, %struct.wl1271_link* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* %8, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = call i32 @skb_queue_empty(i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %26
  %35 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load %struct.wl1271_link*, %struct.wl1271_link** %10, align 8
  %38 = call i64 @wlcore_hw_lnk_low_prio(%struct.wl1271* %35, i64 %36, %struct.wl1271_link* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i64, i64* %7, align 8
  %42 = load i64*, i64** %9, align 8
  store i64 %41, i64* %42, align 8
  br label %43

43:                                               ; preds = %40, %34, %26, %21
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  br label %49

44:                                               ; preds = %4
  %45 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %46 = load %struct.wl1271_link*, %struct.wl1271_link** %10, align 8
  %47 = load i64, i64* %8, align 8
  %48 = call %struct.sk_buff* @wlcore_lnk_dequeue(%struct.wl1271* %45, %struct.wl1271_link* %46, i64 %47)
  store %struct.sk_buff* %48, %struct.sk_buff** %5, align 8
  br label %49

49:                                               ; preds = %44, %43
  %50 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  ret %struct.sk_buff* %50
}

declare dso_local i32 @wlcore_hw_lnk_high_prio(%struct.wl1271*, i64, %struct.wl1271_link*) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i64 @wlcore_hw_lnk_low_prio(%struct.wl1271*, i64, %struct.wl1271_link*) #1

declare dso_local %struct.sk_buff* @wlcore_lnk_dequeue(%struct.wl1271*, %struct.wl1271_link*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
