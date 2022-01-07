; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_dm9601.c_dm9601_tx_fixup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_dm9601.c_dm9601_tx_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32 }
%struct.sk_buff = type { i32, i32* }

@DM_TX_OVERHEAD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.usbnet*, %struct.sk_buff*, i32)* @dm9601_tx_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @dm9601_tx_fixup(%struct.usbnet* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.usbnet*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  store %struct.usbnet* %0, %struct.usbnet** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %8, align 4
  %13 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %14 = call i64 @skb_headroom(%struct.sk_buff* %13)
  %15 = load i64, i64* @DM_TX_OVERHEAD, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %3
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = load i64, i64* @DM_TX_OVERHEAD, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call %struct.sk_buff* @skb_copy_expand(%struct.sk_buff* %18, i64 %19, i32 0, i32 %20)
  store %struct.sk_buff* %21, %struct.sk_buff** %9, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %22)
  %24 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* %24, %struct.sk_buff** %6, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %26 = icmp ne %struct.sk_buff* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %17
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %57

28:                                               ; preds = %17
  br label %29

29:                                               ; preds = %28, %3
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = load i64, i64* @DM_TX_OVERHEAD, align 8
  %32 = call i32 @__skb_push(%struct.sk_buff* %30, i64 %31)
  %33 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %37 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = srem i32 %35, %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %29
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %41, %29
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  store i32 %45, i32* %49, align 4
  %50 = load i32, i32* %8, align 4
  %51 = ashr i32 %50, 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  store i32 %51, i32* %55, align 4
  %56 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %56, %struct.sk_buff** %4, align 8
  br label %57

57:                                               ; preds = %44, %27
  %58 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %58
}

declare dso_local i64 @skb_headroom(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_copy_expand(%struct.sk_buff*, i64, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @__skb_push(%struct.sk_buff*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
