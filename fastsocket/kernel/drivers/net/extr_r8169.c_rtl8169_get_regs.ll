; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_r8169.c_rtl8169_get_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_r8169.c_rtl8169_get_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_regs = type { i32 }
%struct.rtl8169_private = type { i32 }

@R8169_REGS_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_regs*, i8*)* @rtl8169_get_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8169_get_regs(%struct.net_device* %0, %struct.ethtool_regs* %1, i8* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_regs*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.rtl8169_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_regs* %1, %struct.ethtool_regs** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.rtl8169_private* @netdev_priv(%struct.net_device* %8)
  store %struct.rtl8169_private* %9, %struct.rtl8169_private** %7, align 8
  %10 = load %struct.ethtool_regs*, %struct.ethtool_regs** %5, align 8
  %11 = getelementptr inbounds %struct.ethtool_regs, %struct.ethtool_regs* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @R8169_REGS_SIZE, align 4
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i32, i32* @R8169_REGS_SIZE, align 4
  %17 = load %struct.ethtool_regs*, %struct.ethtool_regs** %5, align 8
  %18 = getelementptr inbounds %struct.ethtool_regs, %struct.ethtool_regs* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  br label %19

19:                                               ; preds = %15, %3
  %20 = load %struct.rtl8169_private*, %struct.rtl8169_private** %7, align 8
  %21 = call i32 @rtl_lock_work(%struct.rtl8169_private* %20)
  %22 = load i8*, i8** %6, align 8
  %23 = load %struct.rtl8169_private*, %struct.rtl8169_private** %7, align 8
  %24 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ethtool_regs*, %struct.ethtool_regs** %5, align 8
  %27 = getelementptr inbounds %struct.ethtool_regs, %struct.ethtool_regs* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @memcpy_fromio(i8* %22, i32 %25, i32 %28)
  %30 = load %struct.rtl8169_private*, %struct.rtl8169_private** %7, align 8
  %31 = call i32 @rtl_unlock_work(%struct.rtl8169_private* %30)
  ret void
}

declare dso_local %struct.rtl8169_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @rtl_lock_work(%struct.rtl8169_private*) #1

declare dso_local i32 @memcpy_fromio(i8*, i32, i32) #1

declare dso_local i32 @rtl_unlock_work(%struct.rtl8169_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
