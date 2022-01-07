; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sunvnet.c_tx_port_find.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sunvnet.c_tx_port_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnet_port = type { i32 }
%struct.vnet = type { i32 }
%struct.sk_buff = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vnet_port* @tx_port_find(%struct.vnet* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.vnet*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.vnet_port*, align 8
  %6 = alloca i64, align 8
  store %struct.vnet* %0, %struct.vnet** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.vnet*, %struct.vnet** %3, align 8
  %8 = getelementptr inbounds %struct.vnet, %struct.vnet* %7, i32 0, i32 0
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.vnet*, %struct.vnet** %3, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = call %struct.vnet_port* @__tx_port_find(%struct.vnet* %11, %struct.sk_buff* %12)
  store %struct.vnet_port* %13, %struct.vnet_port** %5, align 8
  %14 = load %struct.vnet*, %struct.vnet** %3, align 8
  %15 = getelementptr inbounds %struct.vnet, %struct.vnet* %14, i32 0, i32 0
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @spin_unlock_irqrestore(i32* %15, i64 %16)
  %18 = load %struct.vnet_port*, %struct.vnet_port** %5, align 8
  ret %struct.vnet_port* %18
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.vnet_port* @__tx_port_find(%struct.vnet*, %struct.sk_buff*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
