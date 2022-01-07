; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_airo.c_airo_end_xmit11.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_airo.c_airo_end_xmit11.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_4__, i32, %struct.airo_info* }
%struct.TYPE_4__ = type { i32 }
%struct.airo_info = type { i32*, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.sk_buff* }
%struct.sk_buff = type { i32 }

@JOB_XMIT11 = common dso_local global i32 0, align 4
@FLAG_PENDING_XMIT11 = common dso_local global i32 0, align 4
@MAX_FIDS = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @airo_end_xmit11 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @airo_end_xmit11(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.airo_info*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 2
  %11 = load %struct.airo_info*, %struct.airo_info** %10, align 8
  store %struct.airo_info* %11, %struct.airo_info** %5, align 8
  %12 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %13 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %12, i32 0, i32 4
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  store %struct.sk_buff* %15, %struct.sk_buff** %6, align 8
  %16 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %17 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %7, align 4
  %20 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %21 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %8, align 8
  %23 = load i32, i32* @JOB_XMIT11, align 4
  %24 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %25 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %24, i32 0, i32 3
  %26 = call i32 @clear_bit(i32 %23, i32* %25)
  %27 = load i32, i32* @FLAG_PENDING_XMIT11, align 4
  %28 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %29 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %28, i32 0, i32 2
  %30 = call i32 @clear_bit(i32 %27, i32* %29)
  %31 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @transmit_802_11_packet(%struct.airo_info* %31, i32 %36, i32 %39)
  store i64 %40, i64* %3, align 8
  %41 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %42 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %41, i32 0, i32 1
  %43 = call i32 @up(i32* %42)
  %44 = load i32, i32* @MAX_FIDS, align 4
  %45 = sdiv i32 %44, 2
  store i32 %45, i32* %4, align 4
  %46 = load i64, i64* %3, align 8
  %47 = load i64, i64* @SUCCESS, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %74

49:                                               ; preds = %1
  %50 = load i32, i32* @jiffies, align 4
  %51 = load %struct.net_device*, %struct.net_device** %2, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  br label %53

53:                                               ; preds = %70, %49
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @MAX_FIDS, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %53
  %58 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %59 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, -65536
  %66 = icmp ne i32 %65, 0
  br label %67

67:                                               ; preds = %57, %53
  %68 = phi i1 [ false, %53 ], [ %66, %57 ]
  br i1 %68, label %69, label %73

69:                                               ; preds = %67
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %4, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %4, align 4
  br label %53

73:                                               ; preds = %67
  br label %88

74:                                               ; preds = %1
  %75 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %76 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, 65535
  store i32 %82, i32* %80, align 4
  %83 = load %struct.net_device*, %struct.net_device** %2, align 8
  %84 = getelementptr inbounds %struct.net_device, %struct.net_device* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 8
  br label %88

88:                                               ; preds = %74, %73
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* @MAX_FIDS, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = load %struct.net_device*, %struct.net_device** %2, align 8
  %94 = call i32 @netif_wake_queue(%struct.net_device* %93)
  br label %95

95:                                               ; preds = %92, %88
  %96 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %97 = call i32 @dev_kfree_skb(%struct.sk_buff* %96)
  ret void
}

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @transmit_802_11_packet(%struct.airo_info*, i32, i32) #1

declare dso_local i32 @up(i32*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
