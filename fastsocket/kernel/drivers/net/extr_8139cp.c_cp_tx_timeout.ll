; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_8139cp.c_cp_tx_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_8139cp.c_cp_tx_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.cp_private = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"%s: Transmit timeout, status %2x %4x %4x %4x\0A\00", align 1
@Cmd = common dso_local global i32 0, align 4
@CpCmd = common dso_local global i32 0, align 4
@IntrStatus = common dso_local global i32 0, align 4
@IntrMask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @cp_tx_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cp_tx_timeout(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.cp_private*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.cp_private* @netdev_priv(%struct.net_device* %6)
  store %struct.cp_private* %7, %struct.cp_private** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @Cmd, align 4
  %12 = call i32 @cpr8(i32 %11)
  %13 = load i32, i32* @CpCmd, align 4
  %14 = call i32 @cpr16(i32 %13)
  %15 = load i32, i32* @IntrStatus, align 4
  %16 = call i32 @cpr16(i32 %15)
  %17 = load i32, i32* @IntrMask, align 4
  %18 = call i32 @cpr16(i32 %17)
  %19 = call i32 @pr_warning(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %12, i32 %14, i32 %16, i32 %18)
  %20 = load %struct.cp_private*, %struct.cp_private** %3, align 8
  %21 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %20, i32 0, i32 0
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.cp_private*, %struct.cp_private** %3, align 8
  %25 = call i32 @cp_stop_hw(%struct.cp_private* %24)
  %26 = load %struct.cp_private*, %struct.cp_private** %3, align 8
  %27 = call i32 @cp_clean_rings(%struct.cp_private* %26)
  %28 = load %struct.cp_private*, %struct.cp_private** %3, align 8
  %29 = call i32 @cp_init_rings(%struct.cp_private* %28)
  store i32 %29, i32* %5, align 4
  %30 = load %struct.cp_private*, %struct.cp_private** %3, align 8
  %31 = call i32 @cp_start_hw(%struct.cp_private* %30)
  %32 = load %struct.net_device*, %struct.net_device** %2, align 8
  %33 = call i32 @netif_wake_queue(%struct.net_device* %32)
  %34 = load %struct.cp_private*, %struct.cp_private** %3, align 8
  %35 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %34, i32 0, i32 0
  %36 = load i64, i64* %4, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  ret void
}

declare dso_local %struct.cp_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @pr_warning(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cpr8(i32) #1

declare dso_local i32 @cpr16(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @cp_stop_hw(%struct.cp_private*) #1

declare dso_local i32 @cp_clean_rings(%struct.cp_private*) #1

declare dso_local i32 @cp_init_rings(%struct.cp_private*) #1

declare dso_local i32 @cp_start_hw(%struct.cp_private*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
