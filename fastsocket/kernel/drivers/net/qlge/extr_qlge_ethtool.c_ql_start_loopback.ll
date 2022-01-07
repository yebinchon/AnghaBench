; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_ethtool.c_ql_start_loopback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_ethtool.c_ql_start_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32, i32, i32 }

@QL_LB_LINK_UP = common dso_local global i32 0, align 4
@CFG_LOOPBACK_PCS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ql_adapter*)* @ql_start_loopback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_start_loopback(%struct.ql_adapter* %0) #0 {
  %2 = alloca %struct.ql_adapter*, align 8
  store %struct.ql_adapter* %0, %struct.ql_adapter** %2, align 8
  %3 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %4 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %6 = call i64 @netif_carrier_ok(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = load i32, i32* @QL_LB_LINK_UP, align 4
  %10 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %10, i32 0, i32 1
  %12 = call i32 @set_bit(i32 %9, i32* %11)
  %13 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @netif_carrier_off(i32 %15)
  br label %22

17:                                               ; preds = %1
  %18 = load i32, i32* @QL_LB_LINK_UP, align 4
  %19 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %20 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %19, i32 0, i32 1
  %21 = call i32 @clear_bit(i32 %18, i32* %20)
  br label %22

22:                                               ; preds = %17, %8
  %23 = load i32, i32* @CFG_LOOPBACK_PCS, align 4
  %24 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %25 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %29 = call i32 @ql_mb_set_port_cfg(%struct.ql_adapter* %28)
  ret i32 %29
}

declare dso_local i64 @netif_carrier_ok(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @netif_carrier_off(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @ql_mb_set_port_cfg(%struct.ql_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
