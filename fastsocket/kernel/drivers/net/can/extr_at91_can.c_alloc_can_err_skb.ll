; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/can/extr_at91_can.c_alloc_can_err_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/can/extr_at91_can.c_alloc_can_err_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.can_frame = type { i32, i32 }

@CAN_ERR_FLAG = common dso_local global i32 0, align 4
@CAN_ERR_DLC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.net_device*, %struct.can_frame**)* @alloc_can_err_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @alloc_can_err_skb(%struct.net_device* %0, %struct.can_frame** %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.can_frame**, align 8
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.can_frame** %1, %struct.can_frame*** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = load %struct.can_frame**, %struct.can_frame*** %5, align 8
  %9 = call %struct.sk_buff* @alloc_can_skb(%struct.net_device* %7, %struct.can_frame** %8)
  store %struct.sk_buff* %9, %struct.sk_buff** %6, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %11 = icmp ne %struct.sk_buff* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %30

17:                                               ; preds = %2
  %18 = load %struct.can_frame**, %struct.can_frame*** %5, align 8
  %19 = load %struct.can_frame*, %struct.can_frame** %18, align 8
  %20 = call i32 @memset(%struct.can_frame* %19, i32 0, i32 8)
  %21 = load i32, i32* @CAN_ERR_FLAG, align 4
  %22 = load %struct.can_frame**, %struct.can_frame*** %5, align 8
  %23 = load %struct.can_frame*, %struct.can_frame** %22, align 8
  %24 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %23, i32 0, i32 1
  store i32 %21, i32* %24, align 4
  %25 = load i32, i32* @CAN_ERR_DLC, align 4
  %26 = load %struct.can_frame**, %struct.can_frame*** %5, align 8
  %27 = load %struct.can_frame*, %struct.can_frame** %26, align 8
  %28 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %29, %struct.sk_buff** %3, align 8
  br label %30

30:                                               ; preds = %17, %16
  %31 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %31
}

declare dso_local %struct.sk_buff* @alloc_can_skb(%struct.net_device*, %struct.can_frame**) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memset(%struct.can_frame*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
