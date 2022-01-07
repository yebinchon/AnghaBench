; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_hdlc_cisco.c_cisco_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_hdlc_cisco.c_cisco_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.cisco_state = type { i32, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @cisco_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cisco_stop(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.cisco_state*, align 8
  %5 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call i32* @dev_to_hdlc(%struct.net_device* %6)
  store i32* %7, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call %struct.cisco_state* @state(i32* %8)
  store %struct.cisco_state* %9, %struct.cisco_state** %4, align 8
  %10 = load %struct.cisco_state*, %struct.cisco_state** %4, align 8
  %11 = getelementptr inbounds %struct.cisco_state, %struct.cisco_state* %10, i32 0, i32 3
  %12 = call i32 @del_timer_sync(i32* %11)
  %13 = load %struct.cisco_state*, %struct.cisco_state** %4, align 8
  %14 = getelementptr inbounds %struct.cisco_state, %struct.cisco_state* %13, i32 0, i32 0
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = call i32 @netif_dormant_on(%struct.net_device* %17)
  %19 = load %struct.cisco_state*, %struct.cisco_state** %4, align 8
  %20 = getelementptr inbounds %struct.cisco_state, %struct.cisco_state* %19, i32 0, i32 1
  store i64 0, i64* %20, align 8
  %21 = load %struct.cisco_state*, %struct.cisco_state** %4, align 8
  %22 = getelementptr inbounds %struct.cisco_state, %struct.cisco_state* %21, i32 0, i32 2
  store i64 0, i64* %22, align 8
  %23 = load %struct.cisco_state*, %struct.cisco_state** %4, align 8
  %24 = getelementptr inbounds %struct.cisco_state, %struct.cisco_state* %23, i32 0, i32 0
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  ret void
}

declare dso_local i32* @dev_to_hdlc(%struct.net_device*) #1

declare dso_local %struct.cisco_state* @state(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @netif_dormant_on(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
