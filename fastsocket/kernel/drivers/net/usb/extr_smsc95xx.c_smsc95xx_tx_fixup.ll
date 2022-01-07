; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_smsc95xx.c_smsc95xx_tx_fixup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_smsc95xx.c_smsc95xx_tx_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i64* }
%struct.sk_buff = type { i64, i32, i32 }
%struct.smsc95xx_priv = type { i64 }
%struct.TYPE_2__ = type { i32 }

@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@SMSC95XX_TX_OVERHEAD_CSUM = common dso_local global i32 0, align 4
@SMSC95XX_TX_OVERHEAD = common dso_local global i32 0, align 4
@TX_CMD_B_CSUM_ENABLE = common dso_local global i32 0, align 4
@TX_CMD_A_FIRST_SEG_ = common dso_local global i32 0, align 4
@TX_CMD_A_LAST_SEG_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.usbnet*, %struct.sk_buff*, i32)* @smsc95xx_tx_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @smsc95xx_tx_fixup(%struct.usbnet* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.usbnet*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.smsc95xx_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %16 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.smsc95xx_priv*
  store %struct.smsc95xx_priv* %20, %struct.smsc95xx_priv** %8, align 8
  %21 = load %struct.smsc95xx_priv*, %struct.smsc95xx_priv** %8, align 8
  %22 = getelementptr inbounds %struct.smsc95xx_priv, %struct.smsc95xx_priv* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %3
  %26 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %30 = icmp eq i64 %28, %29
  br label %31

31:                                               ; preds = %25, %3
  %32 = phi i1 [ false, %3 ], [ %30, %25 ]
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @SMSC95XX_TX_OVERHEAD_CSUM, align 4
  br label %40

38:                                               ; preds = %31
  %39 = load i32, i32* @SMSC95XX_TX_OVERHEAD, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  store i32 %41, i32* %10, align 4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %43 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %42)
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @BUG_ON(i32 %45)
  %47 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %48 = call i32 @skb_headroom(%struct.sk_buff* %47)
  %49 = load i32, i32* %10, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %40
  %52 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call %struct.sk_buff* @skb_copy_expand(%struct.sk_buff* %52, i32 %53, i32 0, i32 %54)
  store %struct.sk_buff* %55, %struct.sk_buff** %13, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %57 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %56)
  %58 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  store %struct.sk_buff* %58, %struct.sk_buff** %6, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %60 = icmp ne %struct.sk_buff* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %51
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %110

62:                                               ; preds = %51
  br label %63

63:                                               ; preds = %62, %40
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %63
  %67 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %68 = call i32 @smsc95xx_calc_csum_preamble(%struct.sk_buff* %67)
  store i32 %68, i32* %14, align 4
  %69 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %70 = call i32 @skb_push(%struct.sk_buff* %69, i32 4)
  %71 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %72 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @memcpy(i32 %73, i32* %14, i32 4)
  br label %75

75:                                               ; preds = %66, %63
  %76 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %77 = call i32 @skb_push(%struct.sk_buff* %76, i32 4)
  %78 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %79 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = sub nsw i32 %80, 4
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %75
  %85 = load i32, i32* @TX_CMD_B_CSUM_ENABLE, align 4
  %86 = load i32, i32* %12, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %12, align 4
  br label %88

88:                                               ; preds = %84, %75
  %89 = call i32 @cpu_to_le32s(i32* %12)
  %90 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %91 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @memcpy(i32 %92, i32* %12, i32 4)
  %94 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %95 = call i32 @skb_push(%struct.sk_buff* %94, i32 4)
  %96 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %97 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = sub nsw i32 %98, 8
  %100 = load i32, i32* @TX_CMD_A_FIRST_SEG_, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @TX_CMD_A_LAST_SEG_, align 4
  %103 = or i32 %101, %102
  store i32 %103, i32* %11, align 4
  %104 = call i32 @cpu_to_le32s(i32* %11)
  %105 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %106 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @memcpy(i32 %107, i32* %11, i32 4)
  %109 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %109, %struct.sk_buff** %4, align 8
  br label %110

110:                                              ; preds = %88, %61
  %111 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %111
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_headroom(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_copy_expand(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @smsc95xx_calc_csum_preamble(%struct.sk_buff*) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @cpu_to_le32s(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
