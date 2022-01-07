; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/can/extr_at91_can.c_at91_irq_err.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/can/extr_at91_can.c_at91_irq_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_5__, i32, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.at91_priv = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.can_frame = type { i64 }

@AT91_SR = common dso_local global i32 0, align 4
@AT91_IRQ_BOFF = common dso_local global i32 0, align 4
@CAN_STATE_BUS_OFF = common dso_local global i32 0, align 4
@AT91_IRQ_ERRP = common dso_local global i32 0, align 4
@CAN_STATE_ERROR_PASSIVE = common dso_local global i32 0, align 4
@AT91_IRQ_WARN = common dso_local global i32 0, align 4
@CAN_STATE_ERROR_WARNING = common dso_local global i32 0, align 4
@AT91_IRQ_ERRA = common dso_local global i32 0, align 4
@CAN_STATE_ERROR_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"BUG! hardware in undefined state\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @at91_irq_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @at91_irq_err(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.at91_priv*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.can_frame*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.at91_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.at91_priv* %9, %struct.at91_priv** %3, align 8
  %10 = load %struct.at91_priv*, %struct.at91_priv** %3, align 8
  %11 = load i32, i32* @AT91_SR, align 4
  %12 = call i32 @at91_read(%struct.at91_priv* %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @AT91_IRQ_BOFF, align 4
  %15 = and i32 %13, %14
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @CAN_STATE_BUS_OFF, align 4
  store i32 %19, i32* %6, align 4
  br label %53

20:                                               ; preds = %1
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @AT91_IRQ_ERRP, align 4
  %23 = and i32 %21, %22
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* @CAN_STATE_ERROR_PASSIVE, align 4
  store i32 %27, i32* %6, align 4
  br label %52

28:                                               ; preds = %20
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @AT91_IRQ_WARN, align 4
  %31 = and i32 %29, %30
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @CAN_STATE_ERROR_WARNING, align 4
  store i32 %35, i32* %6, align 4
  br label %51

36:                                               ; preds = %28
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @AT91_IRQ_ERRA, align 4
  %39 = and i32 %37, %38
  %40 = call i64 @likely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* @CAN_STATE_ERROR_ACTIVE, align 4
  store i32 %43, i32* %6, align 4
  br label %50

44:                                               ; preds = %36
  %45 = load %struct.net_device*, %struct.net_device** %2, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dev_err(i32 %48, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %103

50:                                               ; preds = %42
  br label %51

51:                                               ; preds = %50, %34
  br label %52

52:                                               ; preds = %51, %26
  br label %53

53:                                               ; preds = %52, %18
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.at91_priv*, %struct.at91_priv** %3, align 8
  %56 = getelementptr inbounds %struct.at91_priv, %struct.at91_priv* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %54, %58
  %60 = zext i1 %59 to i32
  %61 = call i64 @likely(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %53
  br label %103

64:                                               ; preds = %53
  %65 = load %struct.net_device*, %struct.net_device** %2, align 8
  %66 = call %struct.sk_buff* @alloc_can_err_skb(%struct.net_device* %65, %struct.can_frame** %5)
  store %struct.sk_buff* %66, %struct.sk_buff** %4, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %68 = icmp ne %struct.sk_buff* %67, null
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = call i64 @unlikely(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %64
  br label %103

74:                                               ; preds = %64
  %75 = load %struct.net_device*, %struct.net_device** %2, align 8
  %76 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @at91_irq_err_state(%struct.net_device* %75, %struct.can_frame* %76, i32 %77)
  %79 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %80 = call i32 @netif_rx(%struct.sk_buff* %79)
  %81 = load i32, i32* @jiffies, align 4
  %82 = load %struct.net_device*, %struct.net_device** %2, align 8
  %83 = getelementptr inbounds %struct.net_device, %struct.net_device* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load %struct.net_device*, %struct.net_device** %2, align 8
  %85 = getelementptr inbounds %struct.net_device, %struct.net_device* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 4
  %89 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %90 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.net_device*, %struct.net_device** %2, align 8
  %93 = getelementptr inbounds %struct.net_device, %struct.net_device* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %96, %91
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %94, align 4
  %99 = load i32, i32* %6, align 4
  %100 = load %struct.at91_priv*, %struct.at91_priv** %3, align 8
  %101 = getelementptr inbounds %struct.at91_priv, %struct.at91_priv* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  store i32 %99, i32* %102, align 4
  br label %103

103:                                              ; preds = %74, %73, %63, %44
  ret void
}

declare dso_local %struct.at91_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @at91_read(%struct.at91_priv*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local %struct.sk_buff* @alloc_can_err_skb(%struct.net_device*, %struct.can_frame**) #1

declare dso_local i32 @at91_irq_err_state(%struct.net_device*, %struct.can_frame*, i32) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
