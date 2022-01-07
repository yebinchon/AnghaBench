; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_gianfar.c_gfar_new_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_gianfar.c_gfar_new_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.net_device = type { i32 }
%struct.gfar_private = type { i64, i32 }

@RXBUF_ALIGNMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @gfar_new_skb(%struct.net_device* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gfar_private*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.gfar_private* @netdev_priv(%struct.net_device* %7)
  store %struct.gfar_private* %8, %struct.gfar_private** %5, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  %9 = load %struct.gfar_private*, %struct.gfar_private** %5, align 8
  %10 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %9, i32 0, i32 1
  %11 = call %struct.sk_buff* @__skb_dequeue(i32* %10)
  store %struct.sk_buff* %11, %struct.sk_buff** %6, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %13 = icmp ne %struct.sk_buff* %12, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %1
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = load %struct.gfar_private*, %struct.gfar_private** %5, align 8
  %17 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* @RXBUF_ALIGNMENT, align 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %18, %20
  %22 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %15, i64 %21)
  store %struct.sk_buff* %22, %struct.sk_buff** %6, align 8
  br label %23

23:                                               ; preds = %14, %1
  %24 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %25 = icmp ne %struct.sk_buff* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %43

27:                                               ; preds = %23
  %28 = load i32, i32* @RXBUF_ALIGNMENT, align 4
  %29 = sext i32 %28 to i64
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* @RXBUF_ALIGNMENT, align 4
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = and i64 %32, %35
  %37 = sub i64 %29, %36
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %4, align 4
  %39 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @skb_reserve(%struct.sk_buff* %39, i32 %40)
  %42 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %42, %struct.sk_buff** %2, align 8
  br label %43

43:                                               ; preds = %27, %26
  %44 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  ret %struct.sk_buff* %44
}

declare dso_local %struct.gfar_private* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(i32*) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i64) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
