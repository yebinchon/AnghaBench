; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/can/extr_at91_can.c_at91_irq_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/can/extr_at91_can.c_at91_irq_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.at91_priv = type { i64, i64 }

@AT91_IDR = common dso_local global i32 0, align 4
@AT91_MSR_MRDY = common dso_local global i32 0, align 4
@AT91_MSR_MABT = common dso_local global i32 0, align 4
@AT91_MB_TX_FIRST = common dso_local global i64 0, align 8
@AT91_NEXT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @at91_irq_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @at91_irq_tx(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.at91_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.at91_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.at91_priv* %9, %struct.at91_priv** %5, align 8
  br label %10

10:                                               ; preds = %66, %2
  %11 = load %struct.at91_priv*, %struct.at91_priv** %5, align 8
  %12 = getelementptr inbounds %struct.at91_priv, %struct.at91_priv* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.at91_priv*, %struct.at91_priv** %5, align 8
  %15 = getelementptr inbounds %struct.at91_priv, %struct.at91_priv* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = sub nsw i64 %13, %16
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %71

19:                                               ; preds = %10
  %20 = load %struct.at91_priv*, %struct.at91_priv** %5, align 8
  %21 = call i32 @get_tx_echo_mb(%struct.at91_priv* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %7, align 4
  %24 = shl i32 1, %23
  %25 = and i32 %22, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %19
  br label %71

28:                                               ; preds = %19
  %29 = load %struct.at91_priv*, %struct.at91_priv** %5, align 8
  %30 = load i32, i32* @AT91_IDR, align 4
  %31 = load i32, i32* %7, align 4
  %32 = shl i32 1, %31
  %33 = call i32 @at91_write(%struct.at91_priv* %29, i32 %30, i32 %32)
  %34 = load %struct.at91_priv*, %struct.at91_priv** %5, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @AT91_MSR(i32 %35)
  %37 = call i32 @at91_read(%struct.at91_priv* %34, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @AT91_MSR_MRDY, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %28
  %43 = load i32, i32* %6, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* @AT91_MSR_MABT, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br label %48

48:                                               ; preds = %42, %28
  %49 = phi i1 [ false, %28 ], [ %47, %42 ]
  %50 = zext i1 %49 to i32
  %51 = call i64 @likely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %48
  %54 = load %struct.net_device*, %struct.net_device** %3, align 8
  %55 = load i32, i32* %7, align 4
  %56 = zext i32 %55 to i64
  %57 = load i64, i64* @AT91_MB_TX_FIRST, align 8
  %58 = sub nsw i64 %56, %57
  %59 = call i32 @can_get_echo_skb(%struct.net_device* %54, i64 %58)
  %60 = load %struct.net_device*, %struct.net_device** %3, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %53, %48
  br label %66

66:                                               ; preds = %65
  %67 = load %struct.at91_priv*, %struct.at91_priv** %5, align 8
  %68 = getelementptr inbounds %struct.at91_priv, %struct.at91_priv* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %68, align 8
  br label %10

71:                                               ; preds = %27, %10
  %72 = load %struct.at91_priv*, %struct.at91_priv** %5, align 8
  %73 = getelementptr inbounds %struct.at91_priv, %struct.at91_priv* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* @AT91_NEXT_MASK, align 4
  %76 = sext i32 %75 to i64
  %77 = and i64 %74, %76
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %87, label %79

79:                                               ; preds = %71
  %80 = load %struct.at91_priv*, %struct.at91_priv** %5, align 8
  %81 = getelementptr inbounds %struct.at91_priv, %struct.at91_priv* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* @AT91_NEXT_MASK, align 4
  %84 = sext i32 %83 to i64
  %85 = and i64 %82, %84
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %79, %71
  %88 = load %struct.net_device*, %struct.net_device** %3, align 8
  %89 = call i32 @netif_wake_queue(%struct.net_device* %88)
  br label %90

90:                                               ; preds = %87, %79
  ret void
}

declare dso_local %struct.at91_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @get_tx_echo_mb(%struct.at91_priv*) #1

declare dso_local i32 @at91_write(%struct.at91_priv*, i32, i32) #1

declare dso_local i32 @at91_read(%struct.at91_priv*, i32) #1

declare dso_local i32 @AT91_MSR(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @can_get_echo_skb(%struct.net_device*, i64) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
