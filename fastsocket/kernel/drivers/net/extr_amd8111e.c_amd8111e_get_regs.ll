; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_amd8111e.c_amd8111e_get_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_amd8111e.c_amd8111e_get_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_regs = type { i64 }
%struct.amd8111e_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_regs*, i8*)* @amd8111e_get_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amd8111e_get_regs(%struct.net_device* %0, %struct.ethtool_regs* %1, i8* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_regs*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.amd8111e_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_regs* %1, %struct.ethtool_regs** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.amd8111e_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.amd8111e_priv* %9, %struct.amd8111e_priv** %7, align 8
  %10 = load %struct.ethtool_regs*, %struct.ethtool_regs** %5, align 8
  %11 = getelementptr inbounds %struct.ethtool_regs, %struct.ethtool_regs* %10, i32 0, i32 0
  store i64 0, i64* %11, align 8
  %12 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @amd8111e_read_regs(%struct.amd8111e_priv* %12, i8* %13)
  ret void
}

declare dso_local %struct.amd8111e_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @amd8111e_read_regs(%struct.amd8111e_priv*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
