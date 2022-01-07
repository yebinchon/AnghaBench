; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_zaurus.c_zaurus_tx_fixup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_zaurus.c_zaurus_tx_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32 }
%struct.sk_buff = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.usbnet*, %struct.sk_buff*, i32)* @zaurus_tx_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @zaurus_tx_fixup(%struct.usbnet* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.usbnet*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 2, i32* %7, align 4
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = call i32 @skb_cloned(%struct.sk_buff* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %3
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = call i32 @skb_tailroom(%struct.sk_buff* %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %7, align 4
  %18 = add nsw i32 %17, 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp sle i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %35

22:                                               ; preds = %14
  br label %23

23:                                               ; preds = %22, %3
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 4, %25
  %27 = load i32, i32* %6, align 4
  %28 = call %struct.sk_buff* @skb_copy_expand(%struct.sk_buff* %24, i32 0, i32 %26, i32 %27)
  store %struct.sk_buff* %28, %struct.sk_buff** %8, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %29)
  %31 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %31, %struct.sk_buff** %5, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = icmp ne %struct.sk_buff* %32, null
  br i1 %33, label %34, label %64

34:                                               ; preds = %23
  br label %35

35:                                               ; preds = %34, %21
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @crc32_le(i32 -1, i32 %38, i32 %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = xor i32 %43, -1
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = and i32 %45, 255
  %47 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %48 = call i32* @skb_put(%struct.sk_buff* %47, i32 1)
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %10, align 4
  %50 = ashr i32 %49, 8
  %51 = and i32 %50, 255
  %52 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %53 = call i32* @skb_put(%struct.sk_buff* %52, i32 1)
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %10, align 4
  %55 = ashr i32 %54, 16
  %56 = and i32 %55, 255
  %57 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %58 = call i32* @skb_put(%struct.sk_buff* %57, i32 1)
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* %10, align 4
  %60 = ashr i32 %59, 24
  %61 = and i32 %60, 255
  %62 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %63 = call i32* @skb_put(%struct.sk_buff* %62, i32 1)
  store i32 %61, i32* %63, align 4
  br label %64

64:                                               ; preds = %35, %23
  %65 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  ret %struct.sk_buff* %65
}

declare dso_local i32 @skb_cloned(%struct.sk_buff*) #1

declare dso_local i32 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_copy_expand(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @crc32_le(i32, i32, i32) #1

declare dso_local i32* @skb_put(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
