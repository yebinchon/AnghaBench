; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_ethtool.c_ixgbe_run_loopback_test.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_ethtool.c_ixgbe_run_loopback_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { %struct.ixgbe_ring, %struct.ixgbe_ring }
%struct.ixgbe_ring = type { i32 }
%struct.sk_buff = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_adapter*)* @ixgbe_run_loopback_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_run_loopback_test(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ixgbe_adapter*, align 8
  %4 = alloca %struct.ixgbe_ring*, align 8
  %5 = alloca %struct.ixgbe_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sk_buff*, align 8
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %3, align 8
  %14 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %14, i32 0, i32 1
  store %struct.ixgbe_ring* %15, %struct.ixgbe_ring** %4, align 8
  %16 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %16, i32 0, i32 0
  store %struct.ixgbe_ring* %17, %struct.ixgbe_ring** %5, align 8
  store i32 0, i32* %10, align 4
  store i32 1024, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.sk_buff* @alloc_skb(i32 %18, i32 %19)
  store %struct.sk_buff* %20, %struct.sk_buff** %13, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %22 = icmp ne %struct.sk_buff* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  store i32 11, i32* %2, align 4
  br label %99

24:                                               ; preds = %1
  %25 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @ixgbe_create_lbtest_frame(%struct.sk_buff* %25, i32 %26)
  %28 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @skb_put(%struct.sk_buff* %28, i32 %29)
  %31 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %32 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %35 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp sle i32 %33, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %24
  %39 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %40 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sdiv i32 %41, 64
  %43 = mul nsw i32 %42, 2
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %52

45:                                               ; preds = %24
  %46 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %47 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sdiv i32 %48, 64
  %50 = mul nsw i32 %49, 2
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %45, %38
  store i32 0, i32* %7, align 4
  br label %53

53:                                               ; preds = %92, %52
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp sle i32 %54, %55
  br i1 %56, label %57, label %95

57:                                               ; preds = %53
  store i32 0, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %75, %57
  %59 = load i32, i32* %6, align 4
  %60 = icmp slt i32 %59, 64
  br i1 %60, label %61, label %78

61:                                               ; preds = %58
  %62 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %63 = call i32 @skb_get(%struct.sk_buff* %62)
  %64 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %65 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %66 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %67 = call i32 @ixgbe_xmit_frame_ring(%struct.sk_buff* %64, %struct.ixgbe_adapter* %65, %struct.ixgbe_ring* %66)
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* @NETDEV_TX_OK, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %61
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %9, align 4
  br label %74

74:                                               ; preds = %71, %61
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %6, align 4
  br label %58

78:                                               ; preds = %58
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 64
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  store i32 12, i32* %10, align 4
  br label %95

82:                                               ; preds = %78
  %83 = call i32 @msleep(i32 200)
  %84 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %85 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @ixgbe_clean_test_rings(%struct.ixgbe_ring* %84, %struct.ixgbe_ring* %85, i32 %86)
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 64
  br i1 %89, label %90, label %91

90:                                               ; preds = %82
  store i32 13, i32* %10, align 4
  br label %95

91:                                               ; preds = %82
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %7, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %7, align 4
  br label %53

95:                                               ; preds = %90, %81, %53
  %96 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %97 = call i32 @kfree_skb(%struct.sk_buff* %96)
  %98 = load i32, i32* %10, align 4
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %95, %23
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @ixgbe_create_lbtest_frame(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_get(%struct.sk_buff*) #1

declare dso_local i32 @ixgbe_xmit_frame_ring(%struct.sk_buff*, %struct.ixgbe_adapter*, %struct.ixgbe_ring*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @ixgbe_clean_test_rings(%struct.ixgbe_ring*, %struct.ixgbe_ring*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
