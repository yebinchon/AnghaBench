; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/can/sja1000/extr_sja1000.c_sja1000_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/can/sja1000/extr_sja1000.c_sja1000_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32 }
%struct.sja1000_priv = type { i32 (%struct.sja1000_priv*, i32)*, i32 (%struct.sja1000_priv*, i32, i32)* }
%struct.can_frame = type { i32, i32, i32* }
%struct.sk_buff = type { i32, %struct.net_device* }

@ETH_P_CAN = common dso_local global i32 0, align 4
@REG_FI = common dso_local global i32 0, align 4
@FI_FF = common dso_local global i32 0, align 4
@EFF_BUF = common dso_local global i32 0, align 4
@REG_ID1 = common dso_local global i32 0, align 4
@REG_ID2 = common dso_local global i32 0, align 4
@REG_ID3 = common dso_local global i32 0, align 4
@REG_ID4 = common dso_local global i32 0, align 4
@CAN_EFF_FLAG = common dso_local global i32 0, align 4
@SFF_BUF = common dso_local global i32 0, align 4
@FI_RTR = common dso_local global i32 0, align 4
@CAN_RTR_FLAG = common dso_local global i32 0, align 4
@REG_CMR = common dso_local global i32 0, align 4
@CMD_RRB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @sja1000_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sja1000_rx(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.sja1000_priv*, align 8
  %4 = alloca %struct.net_device_stats*, align 8
  %5 = alloca %struct.can_frame*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = call %struct.sja1000_priv* @netdev_priv(%struct.net_device* %12)
  store %struct.sja1000_priv* %13, %struct.sja1000_priv** %3, align 8
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  store %struct.net_device_stats* %15, %struct.net_device_stats** %4, align 8
  %16 = call %struct.sk_buff* @dev_alloc_skb(i32 16)
  store %struct.sk_buff* %16, %struct.sk_buff** %6, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = icmp eq %struct.sk_buff* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %166

20:                                               ; preds = %1
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 1
  store %struct.net_device* %21, %struct.net_device** %23, align 8
  %24 = load i32, i32* @ETH_P_CAN, align 4
  %25 = call i32 @htons(i32 %24)
  %26 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %29 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %28, i32 0, i32 0
  %30 = load i32 (%struct.sja1000_priv*, i32)*, i32 (%struct.sja1000_priv*, i32)** %29, align 8
  %31 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %32 = load i32, i32* @REG_FI, align 4
  %33 = call i32 %30(%struct.sja1000_priv* %31, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = and i32 %34, 15
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @FI_FF, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %76

40:                                               ; preds = %20
  %41 = load i32, i32* @EFF_BUF, align 4
  store i32 %41, i32* %8, align 4
  %42 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %43 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %42, i32 0, i32 0
  %44 = load i32 (%struct.sja1000_priv*, i32)*, i32 (%struct.sja1000_priv*, i32)** %43, align 8
  %45 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %46 = load i32, i32* @REG_ID1, align 4
  %47 = call i32 %44(%struct.sja1000_priv* %45, i32 %46)
  %48 = shl i32 %47, 21
  %49 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %50 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %49, i32 0, i32 0
  %51 = load i32 (%struct.sja1000_priv*, i32)*, i32 (%struct.sja1000_priv*, i32)** %50, align 8
  %52 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %53 = load i32, i32* @REG_ID2, align 4
  %54 = call i32 %51(%struct.sja1000_priv* %52, i32 %53)
  %55 = shl i32 %54, 13
  %56 = or i32 %48, %55
  %57 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %58 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %57, i32 0, i32 0
  %59 = load i32 (%struct.sja1000_priv*, i32)*, i32 (%struct.sja1000_priv*, i32)** %58, align 8
  %60 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %61 = load i32, i32* @REG_ID3, align 4
  %62 = call i32 %59(%struct.sja1000_priv* %60, i32 %61)
  %63 = shl i32 %62, 5
  %64 = or i32 %56, %63
  %65 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %66 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %65, i32 0, i32 0
  %67 = load i32 (%struct.sja1000_priv*, i32)*, i32 (%struct.sja1000_priv*, i32)** %66, align 8
  %68 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %69 = load i32, i32* @REG_ID4, align 4
  %70 = call i32 %67(%struct.sja1000_priv* %68, i32 %69)
  %71 = ashr i32 %70, 3
  %72 = or i32 %64, %71
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* @CAN_EFF_FLAG, align 4
  %74 = load i32, i32* %9, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %9, align 4
  br label %93

76:                                               ; preds = %20
  %77 = load i32, i32* @SFF_BUF, align 4
  store i32 %77, i32* %8, align 4
  %78 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %79 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %78, i32 0, i32 0
  %80 = load i32 (%struct.sja1000_priv*, i32)*, i32 (%struct.sja1000_priv*, i32)** %79, align 8
  %81 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %82 = load i32, i32* @REG_ID1, align 4
  %83 = call i32 %80(%struct.sja1000_priv* %81, i32 %82)
  %84 = shl i32 %83, 3
  %85 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %86 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %85, i32 0, i32 0
  %87 = load i32 (%struct.sja1000_priv*, i32)*, i32 (%struct.sja1000_priv*, i32)** %86, align 8
  %88 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %89 = load i32, i32* @REG_ID2, align 4
  %90 = call i32 %87(%struct.sja1000_priv* %88, i32 %89)
  %91 = ashr i32 %90, 5
  %92 = or i32 %84, %91
  store i32 %92, i32* %9, align 4
  br label %93

93:                                               ; preds = %76, %40
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @FI_RTR, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = load i32, i32* @CAN_RTR_FLAG, align 4
  %100 = load i32, i32* %9, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %9, align 4
  br label %102

102:                                              ; preds = %98, %93
  %103 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %104 = call i64 @skb_put(%struct.sk_buff* %103, i32 16)
  %105 = inttoptr i64 %104 to %struct.can_frame*
  store %struct.can_frame* %105, %struct.can_frame** %5, align 8
  %106 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %107 = call i32 @memset(%struct.can_frame* %106, i32 0, i32 16)
  %108 = load i32, i32* %9, align 4
  %109 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %110 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  %111 = load i32, i32* %10, align 4
  %112 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %113 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  store i32 0, i32* %11, align 4
  br label %114

114:                                              ; preds = %132, %102
  %115 = load i32, i32* %11, align 4
  %116 = load i32, i32* %10, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %135

118:                                              ; preds = %114
  %119 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %120 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %119, i32 0, i32 0
  %121 = load i32 (%struct.sja1000_priv*, i32)*, i32 (%struct.sja1000_priv*, i32)** %120, align 8
  %122 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %123 = load i32, i32* %8, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %8, align 4
  %125 = call i32 %121(%struct.sja1000_priv* %122, i32 %123)
  %126 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %127 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %126, i32 0, i32 2
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %11, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  store i32 %125, i32* %131, align 4
  br label %132

132:                                              ; preds = %118
  %133 = load i32, i32* %11, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %11, align 4
  br label %114

135:                                              ; preds = %114
  br label %136

136:                                              ; preds = %139, %135
  %137 = load i32, i32* %11, align 4
  %138 = icmp slt i32 %137, 8
  br i1 %138, label %139, label %147

139:                                              ; preds = %136
  %140 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %141 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %140, i32 0, i32 2
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %11, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %11, align 4
  %145 = sext i32 %143 to i64
  %146 = getelementptr inbounds i32, i32* %142, i64 %145
  store i32 0, i32* %146, align 4
  br label %136

147:                                              ; preds = %136
  %148 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %149 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %148, i32 0, i32 1
  %150 = load i32 (%struct.sja1000_priv*, i32, i32)*, i32 (%struct.sja1000_priv*, i32, i32)** %149, align 8
  %151 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %152 = load i32, i32* @REG_CMR, align 4
  %153 = load i32, i32* @CMD_RRB, align 4
  %154 = call i32 %150(%struct.sja1000_priv* %151, i32 %152, i32 %153)
  %155 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %156 = call i32 @netif_rx(%struct.sk_buff* %155)
  %157 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %158 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %158, align 4
  %161 = load i32, i32* %10, align 4
  %162 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %163 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = add nsw i32 %164, %161
  store i32 %165, i32* %163, align 4
  br label %166

166:                                              ; preds = %147, %19
  ret void
}

declare dso_local %struct.sja1000_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(%struct.can_frame*, i32, i32) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
