; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_ptp.c___ixgbe_ptp_rx_hwtstamp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_ptp.c___ixgbe_ptp_rx_hwtstamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_q_vector = type { %struct.ixgbe_adapter* }
%struct.ixgbe_adapter = type { i32, i32, %struct.ixgbe_hw }
%struct.ixgbe_hw = type { i32 }
%struct.sk_buff = type { i32 }
%struct.skb_shared_hwtstamps = type { i32 }

@IXGBE_TSYNCRXCTL = common dso_local global i32 0, align 4
@IXGBE_TSYNCRXCTL_VALID = common dso_local global i32 0, align 4
@IXGBE_RXSTMPL = common dso_local global i32 0, align 4
@IXGBE_RXSTMPH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__ixgbe_ptp_rx_hwtstamp(%struct.ixgbe_q_vector* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ixgbe_q_vector*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ixgbe_adapter*, align 8
  %6 = alloca %struct.ixgbe_hw*, align 8
  %7 = alloca %struct.skb_shared_hwtstamps*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.ixgbe_q_vector* %0, %struct.ixgbe_q_vector** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %3, align 8
  %13 = icmp ne %struct.ixgbe_q_vector* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %3, align 8
  %16 = getelementptr inbounds %struct.ixgbe_q_vector, %struct.ixgbe_q_vector* %15, i32 0, i32 0
  %17 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %16, align 8
  %18 = icmp ne %struct.ixgbe_adapter* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14, %2
  br label %64

20:                                               ; preds = %14
  %21 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %3, align 8
  %22 = getelementptr inbounds %struct.ixgbe_q_vector, %struct.ixgbe_q_vector* %21, i32 0, i32 0
  %23 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %22, align 8
  store %struct.ixgbe_adapter* %23, %struct.ixgbe_adapter** %5, align 8
  %24 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %25 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %24, i32 0, i32 2
  store %struct.ixgbe_hw* %25, %struct.ixgbe_hw** %6, align 8
  %26 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %27 = load i32, i32* @IXGBE_TSYNCRXCTL, align 4
  %28 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %26, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @IXGBE_TSYNCRXCTL_VALID, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %20
  br label %64

34:                                               ; preds = %20
  %35 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %36 = load i32, i32* @IXGBE_RXSTMPL, align 4
  %37 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %35, i32 %36)
  %38 = load i32, i32* %8, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %8, align 4
  %40 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %41 = load i32, i32* @IXGBE_RXSTMPH, align 4
  %42 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %40, i32 %41)
  %43 = shl i32 %42, 32
  %44 = load i32, i32* %8, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %8, align 4
  %46 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %47 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %46, i32 0, i32 0
  %48 = load i64, i64* %11, align 8
  %49 = call i32 @spin_lock_irqsave(i32* %47, i64 %48)
  %50 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %51 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %50, i32 0, i32 1
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @timecounter_cyc2time(i32* %51, i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %55 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %54, i32 0, i32 0
  %56 = load i64, i64* %11, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* %55, i64 %56)
  %58 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %59 = call %struct.skb_shared_hwtstamps* @skb_hwtstamps(%struct.sk_buff* %58)
  store %struct.skb_shared_hwtstamps* %59, %struct.skb_shared_hwtstamps** %7, align 8
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @ns_to_ktime(i32 %60)
  %62 = load %struct.skb_shared_hwtstamps*, %struct.skb_shared_hwtstamps** %7, align 8
  %63 = getelementptr inbounds %struct.skb_shared_hwtstamps, %struct.skb_shared_hwtstamps* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  br label %64

64:                                               ; preds = %34, %33, %19
  ret void
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @timecounter_cyc2time(i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.skb_shared_hwtstamps* @skb_hwtstamps(%struct.sk_buff*) #1

declare dso_local i32 @ns_to_ktime(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
