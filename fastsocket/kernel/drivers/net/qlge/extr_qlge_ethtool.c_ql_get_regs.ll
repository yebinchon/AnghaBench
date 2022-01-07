; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_ethtool.c_ql_get_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_ethtool.c_ql_get_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_regs = type { i32 }
%struct.ql_adapter = type { i32, i64 }

@QL_FRC_COREDUMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_regs*, i8*)* @ql_get_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ql_get_regs(%struct.net_device* %0, %struct.ethtool_regs* %1, i8* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_regs*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ql_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_regs* %1, %struct.ethtool_regs** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.ql_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.ql_adapter* %9, %struct.ql_adapter** %7, align 8
  %10 = load %struct.ql_adapter*, %struct.ql_adapter** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @ql_get_dump(%struct.ql_adapter* %10, i8* %11)
  %13 = load %struct.ql_adapter*, %struct.ql_adapter** %7, align 8
  %14 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %13, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = load i32, i32* @QL_FRC_COREDUMP, align 4
  %16 = load %struct.ql_adapter*, %struct.ql_adapter** %7, align 8
  %17 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %16, i32 0, i32 0
  %18 = call i32 @test_bit(i32 %15, i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load %struct.ethtool_regs*, %struct.ethtool_regs** %5, align 8
  %22 = getelementptr inbounds %struct.ethtool_regs, %struct.ethtool_regs* %21, i32 0, i32 0
  store i32 4, i32* %22, align 4
  br label %26

23:                                               ; preds = %3
  %24 = load %struct.ethtool_regs*, %struct.ethtool_regs** %5, align 8
  %25 = getelementptr inbounds %struct.ethtool_regs, %struct.ethtool_regs* %24, i32 0, i32 0
  store i32 4, i32* %25, align 4
  br label %26

26:                                               ; preds = %23, %20
  ret void
}

declare dso_local %struct.ql_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ql_get_dump(%struct.ql_adapter*, i8*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
