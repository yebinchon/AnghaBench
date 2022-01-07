; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_hw.c_netxen_niu_xg_init_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_hw.c_netxen_niu_xg_init_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netxen_adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@NETXEN_NIU_XGE_CONFIG_1 = common dso_local global i64 0, align 8
@NETXEN_NIU_XGE_CONFIG_0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netxen_adapter*, i32)* @netxen_niu_xg_init_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netxen_niu_xg_init_port(%struct.netxen_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.netxen_adapter*, align 8
  %4 = alloca i32, align 4
  store %struct.netxen_adapter* %0, %struct.netxen_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %6 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @NX_IS_REVISION_P2(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %2
  %12 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %13 = load i64, i64* @NETXEN_NIU_XGE_CONFIG_1, align 8
  %14 = load i32, i32* %4, align 4
  %15 = mul nsw i32 65536, %14
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %13, %16
  %18 = call i32 @NXWR32(%struct.netxen_adapter* %12, i64 %17, i32 5191)
  %19 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %20 = load i64, i64* @NETXEN_NIU_XGE_CONFIG_0, align 8
  %21 = load i32, i32* %4, align 4
  %22 = mul nsw i32 65536, %21
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %20, %23
  %25 = call i32 @NXWR32(%struct.netxen_adapter* %19, i64 %24, i32 5)
  br label %26

26:                                               ; preds = %11, %2
  ret i32 0
}

declare dso_local i64 @NX_IS_REVISION_P2(i32) #1

declare dso_local i32 @NXWR32(%struct.netxen_adapter*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
