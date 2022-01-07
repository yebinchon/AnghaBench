; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_hdlc_cisco.c_cisco_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_hdlc_cisco.c_cisco_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.cisco_state = type { %struct.TYPE_3__, i32, i64, i64, i64 }
%struct.TYPE_3__ = type { i64, i32, i64 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@cisco_timer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @cisco_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cisco_start(%struct.net_device* %0) #0 {
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
  %11 = getelementptr inbounds %struct.cisco_state, %struct.cisco_state* %10, i32 0, i32 1
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.cisco_state*, %struct.cisco_state** %4, align 8
  %15 = getelementptr inbounds %struct.cisco_state, %struct.cisco_state* %14, i32 0, i32 2
  store i64 0, i64* %15, align 8
  %16 = load %struct.cisco_state*, %struct.cisco_state** %4, align 8
  %17 = getelementptr inbounds %struct.cisco_state, %struct.cisco_state* %16, i32 0, i32 3
  store i64 0, i64* %17, align 8
  %18 = load %struct.cisco_state*, %struct.cisco_state** %4, align 8
  %19 = getelementptr inbounds %struct.cisco_state, %struct.cisco_state* %18, i32 0, i32 4
  store i64 0, i64* %19, align 8
  %20 = load %struct.cisco_state*, %struct.cisco_state** %4, align 8
  %21 = getelementptr inbounds %struct.cisco_state, %struct.cisco_state* %20, i32 0, i32 1
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @spin_unlock_irqrestore(i32* %21, i64 %22)
  %24 = load %struct.cisco_state*, %struct.cisco_state** %4, align 8
  %25 = getelementptr inbounds %struct.cisco_state, %struct.cisco_state* %24, i32 0, i32 0
  %26 = call i32 @init_timer(%struct.TYPE_3__* %25)
  %27 = load i64, i64* @jiffies, align 8
  %28 = load i64, i64* @HZ, align 8
  %29 = add nsw i64 %27, %28
  %30 = load %struct.cisco_state*, %struct.cisco_state** %4, align 8
  %31 = getelementptr inbounds %struct.cisco_state, %struct.cisco_state* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  store i64 %29, i64* %32, align 8
  %33 = load i32, i32* @cisco_timer, align 4
  %34 = load %struct.cisco_state*, %struct.cisco_state** %4, align 8
  %35 = getelementptr inbounds %struct.cisco_state, %struct.cisco_state* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 8
  %37 = load %struct.net_device*, %struct.net_device** %2, align 8
  %38 = ptrtoint %struct.net_device* %37 to i64
  %39 = load %struct.cisco_state*, %struct.cisco_state** %4, align 8
  %40 = getelementptr inbounds %struct.cisco_state, %struct.cisco_state* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i64 %38, i64* %41, align 8
  %42 = load %struct.cisco_state*, %struct.cisco_state** %4, align 8
  %43 = getelementptr inbounds %struct.cisco_state, %struct.cisco_state* %42, i32 0, i32 0
  %44 = call i32 @add_timer(%struct.TYPE_3__* %43)
  ret void
}

declare dso_local i32* @dev_to_hdlc(%struct.net_device*) #1

declare dso_local %struct.cisco_state* @state(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @init_timer(%struct.TYPE_3__*) #1

declare dso_local i32 @add_timer(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
