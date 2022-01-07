; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_8139too.c_rtl8139_get_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_8139too.c_rtl8139_get_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_regs = type { i32, i32 }
%struct.rtl8139_private = type { i32, i32 }

@use_io = common dso_local global i64 0, align 8
@RTL_REGS_VER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_regs*, i8*)* @rtl8139_get_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8139_get_regs(%struct.net_device* %0, %struct.ethtool_regs* %1, i8* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_regs*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.rtl8139_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_regs* %1, %struct.ethtool_regs** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i64, i64* @use_io, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %31

11:                                               ; preds = %3
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.rtl8139_private* @netdev_priv(%struct.net_device* %12)
  store %struct.rtl8139_private* %13, %struct.rtl8139_private** %7, align 8
  %14 = load i32, i32* @RTL_REGS_VER, align 4
  %15 = load %struct.ethtool_regs*, %struct.ethtool_regs** %5, align 8
  %16 = getelementptr inbounds %struct.ethtool_regs, %struct.ethtool_regs* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.rtl8139_private*, %struct.rtl8139_private** %7, align 8
  %18 = getelementptr inbounds %struct.rtl8139_private, %struct.rtl8139_private* %17, i32 0, i32 0
  %19 = call i32 @spin_lock_irq(i32* %18)
  %20 = load i8*, i8** %6, align 8
  %21 = load %struct.rtl8139_private*, %struct.rtl8139_private** %7, align 8
  %22 = getelementptr inbounds %struct.rtl8139_private, %struct.rtl8139_private* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ethtool_regs*, %struct.ethtool_regs** %5, align 8
  %25 = getelementptr inbounds %struct.ethtool_regs, %struct.ethtool_regs* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @memcpy_fromio(i8* %20, i32 %23, i32 %26)
  %28 = load %struct.rtl8139_private*, %struct.rtl8139_private** %7, align 8
  %29 = getelementptr inbounds %struct.rtl8139_private, %struct.rtl8139_private* %28, i32 0, i32 0
  %30 = call i32 @spin_unlock_irq(i32* %29)
  br label %31

31:                                               ; preds = %11, %10
  ret void
}

declare dso_local %struct.rtl8139_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @memcpy_fromio(i8*, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
