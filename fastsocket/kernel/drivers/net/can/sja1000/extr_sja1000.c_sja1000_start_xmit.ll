; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/can/sja1000/extr_sja1000.c_sja1000_start_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/can/sja1000/extr_sja1000.c_sja1000_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.net_device = type { i32 }
%struct.sja1000_priv = type { i32 (%struct.sja1000_priv*, i32, i32)* }
%struct.can_frame = type { i32, i32, i32* }

@CAN_RTR_FLAG = common dso_local global i32 0, align 4
@FI_RTR = common dso_local global i32 0, align 4
@CAN_EFF_FLAG = common dso_local global i32 0, align 4
@FI_FF = common dso_local global i32 0, align 4
@EFF_BUF = common dso_local global i32 0, align 4
@REG_FI = common dso_local global i32 0, align 4
@REG_ID1 = common dso_local global i32 0, align 4
@REG_ID2 = common dso_local global i32 0, align 4
@REG_ID3 = common dso_local global i32 0, align 4
@REG_ID4 = common dso_local global i32 0, align 4
@SFF_BUF = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@REG_CMR = common dso_local global i32 0, align 4
@CMD_TR = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @sja1000_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sja1000_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.sja1000_priv*, align 8
  %6 = alloca %struct.can_frame*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.sja1000_priv* @netdev_priv(%struct.net_device* %12)
  store %struct.sja1000_priv* %13, %struct.sja1000_priv** %5, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.can_frame*
  store %struct.can_frame* %17, %struct.can_frame** %6, align 8
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = call i32 @netif_stop_queue(%struct.net_device* %18)
  %20 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %21 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %8, align 4
  store i32 %22, i32* %7, align 4
  %23 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %24 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @CAN_RTR_FLAG, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %2
  %31 = load i32, i32* @FI_RTR, align 4
  %32 = load i32, i32* %7, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %30, %2
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @CAN_EFF_FLAG, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %87

39:                                               ; preds = %34
  %40 = load i32, i32* @FI_FF, align 4
  %41 = load i32, i32* %7, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* @EFF_BUF, align 4
  store i32 %43, i32* %10, align 4
  %44 = load %struct.sja1000_priv*, %struct.sja1000_priv** %5, align 8
  %45 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %44, i32 0, i32 0
  %46 = load i32 (%struct.sja1000_priv*, i32, i32)*, i32 (%struct.sja1000_priv*, i32, i32)** %45, align 8
  %47 = load %struct.sja1000_priv*, %struct.sja1000_priv** %5, align 8
  %48 = load i32, i32* @REG_FI, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 %46(%struct.sja1000_priv* %47, i32 %48, i32 %49)
  %51 = load %struct.sja1000_priv*, %struct.sja1000_priv** %5, align 8
  %52 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %51, i32 0, i32 0
  %53 = load i32 (%struct.sja1000_priv*, i32, i32)*, i32 (%struct.sja1000_priv*, i32, i32)** %52, align 8
  %54 = load %struct.sja1000_priv*, %struct.sja1000_priv** %5, align 8
  %55 = load i32, i32* @REG_ID1, align 4
  %56 = load i32, i32* %9, align 4
  %57 = and i32 %56, 534773760
  %58 = ashr i32 %57, 21
  %59 = call i32 %53(%struct.sja1000_priv* %54, i32 %55, i32 %58)
  %60 = load %struct.sja1000_priv*, %struct.sja1000_priv** %5, align 8
  %61 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %60, i32 0, i32 0
  %62 = load i32 (%struct.sja1000_priv*, i32, i32)*, i32 (%struct.sja1000_priv*, i32, i32)** %61, align 8
  %63 = load %struct.sja1000_priv*, %struct.sja1000_priv** %5, align 8
  %64 = load i32, i32* @REG_ID2, align 4
  %65 = load i32, i32* %9, align 4
  %66 = and i32 %65, 2088960
  %67 = ashr i32 %66, 13
  %68 = call i32 %62(%struct.sja1000_priv* %63, i32 %64, i32 %67)
  %69 = load %struct.sja1000_priv*, %struct.sja1000_priv** %5, align 8
  %70 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %69, i32 0, i32 0
  %71 = load i32 (%struct.sja1000_priv*, i32, i32)*, i32 (%struct.sja1000_priv*, i32, i32)** %70, align 8
  %72 = load %struct.sja1000_priv*, %struct.sja1000_priv** %5, align 8
  %73 = load i32, i32* @REG_ID3, align 4
  %74 = load i32, i32* %9, align 4
  %75 = and i32 %74, 8160
  %76 = ashr i32 %75, 5
  %77 = call i32 %71(%struct.sja1000_priv* %72, i32 %73, i32 %76)
  %78 = load %struct.sja1000_priv*, %struct.sja1000_priv** %5, align 8
  %79 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %78, i32 0, i32 0
  %80 = load i32 (%struct.sja1000_priv*, i32, i32)*, i32 (%struct.sja1000_priv*, i32, i32)** %79, align 8
  %81 = load %struct.sja1000_priv*, %struct.sja1000_priv** %5, align 8
  %82 = load i32, i32* @REG_ID4, align 4
  %83 = load i32, i32* %9, align 4
  %84 = and i32 %83, 31
  %85 = shl i32 %84, 3
  %86 = call i32 %80(%struct.sja1000_priv* %81, i32 %82, i32 %85)
  br label %114

87:                                               ; preds = %34
  %88 = load i32, i32* @SFF_BUF, align 4
  store i32 %88, i32* %10, align 4
  %89 = load %struct.sja1000_priv*, %struct.sja1000_priv** %5, align 8
  %90 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %89, i32 0, i32 0
  %91 = load i32 (%struct.sja1000_priv*, i32, i32)*, i32 (%struct.sja1000_priv*, i32, i32)** %90, align 8
  %92 = load %struct.sja1000_priv*, %struct.sja1000_priv** %5, align 8
  %93 = load i32, i32* @REG_FI, align 4
  %94 = load i32, i32* %7, align 4
  %95 = call i32 %91(%struct.sja1000_priv* %92, i32 %93, i32 %94)
  %96 = load %struct.sja1000_priv*, %struct.sja1000_priv** %5, align 8
  %97 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %96, i32 0, i32 0
  %98 = load i32 (%struct.sja1000_priv*, i32, i32)*, i32 (%struct.sja1000_priv*, i32, i32)** %97, align 8
  %99 = load %struct.sja1000_priv*, %struct.sja1000_priv** %5, align 8
  %100 = load i32, i32* @REG_ID1, align 4
  %101 = load i32, i32* %9, align 4
  %102 = and i32 %101, 2040
  %103 = ashr i32 %102, 3
  %104 = call i32 %98(%struct.sja1000_priv* %99, i32 %100, i32 %103)
  %105 = load %struct.sja1000_priv*, %struct.sja1000_priv** %5, align 8
  %106 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %105, i32 0, i32 0
  %107 = load i32 (%struct.sja1000_priv*, i32, i32)*, i32 (%struct.sja1000_priv*, i32, i32)** %106, align 8
  %108 = load %struct.sja1000_priv*, %struct.sja1000_priv** %5, align 8
  %109 = load i32, i32* @REG_ID2, align 4
  %110 = load i32, i32* %9, align 4
  %111 = and i32 %110, 7
  %112 = shl i32 %111, 5
  %113 = call i32 %107(%struct.sja1000_priv* %108, i32 %109, i32 %112)
  br label %114

114:                                              ; preds = %87, %39
  store i32 0, i32* %11, align 4
  br label %115

115:                                              ; preds = %134, %114
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* %8, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %137

119:                                              ; preds = %115
  %120 = load %struct.sja1000_priv*, %struct.sja1000_priv** %5, align 8
  %121 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %120, i32 0, i32 0
  %122 = load i32 (%struct.sja1000_priv*, i32, i32)*, i32 (%struct.sja1000_priv*, i32, i32)** %121, align 8
  %123 = load %struct.sja1000_priv*, %struct.sja1000_priv** %5, align 8
  %124 = load i32, i32* %10, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %10, align 4
  %126 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %127 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %126, i32 0, i32 2
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %11, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = call i32 %122(%struct.sja1000_priv* %123, i32 %124, i32 %132)
  br label %134

134:                                              ; preds = %119
  %135 = load i32, i32* %11, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %11, align 4
  br label %115

137:                                              ; preds = %115
  %138 = load i32, i32* @jiffies, align 4
  %139 = load %struct.net_device*, %struct.net_device** %4, align 8
  %140 = getelementptr inbounds %struct.net_device, %struct.net_device* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 4
  %141 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %142 = load %struct.net_device*, %struct.net_device** %4, align 8
  %143 = call i32 @can_put_echo_skb(%struct.sk_buff* %141, %struct.net_device* %142, i32 0)
  %144 = load %struct.sja1000_priv*, %struct.sja1000_priv** %5, align 8
  %145 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %144, i32 0, i32 0
  %146 = load i32 (%struct.sja1000_priv*, i32, i32)*, i32 (%struct.sja1000_priv*, i32, i32)** %145, align 8
  %147 = load %struct.sja1000_priv*, %struct.sja1000_priv** %5, align 8
  %148 = load i32, i32* @REG_CMR, align 4
  %149 = load i32, i32* @CMD_TR, align 4
  %150 = call i32 %146(%struct.sja1000_priv* %147, i32 %148, i32 %149)
  %151 = load i32, i32* @NETDEV_TX_OK, align 4
  ret i32 %151
}

declare dso_local %struct.sja1000_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @can_put_echo_skb(%struct.sk_buff*, %struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
