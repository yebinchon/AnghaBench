; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_ethtool.c_ql_stop_loopback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_ethtool.c_ql_stop_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32, i32, i32 }

@CFG_LOOPBACK_PCS = common dso_local global i32 0, align 4
@QL_LB_LINK_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ql_adapter*)* @ql_stop_loopback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ql_stop_loopback(%struct.ql_adapter* %0) #0 {
  %2 = alloca %struct.ql_adapter*, align 8
  store %struct.ql_adapter* %0, %struct.ql_adapter** %2, align 8
  %3 = load i32, i32* @CFG_LOOPBACK_PCS, align 4
  %4 = xor i32 %3, -1
  %5 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = and i32 %7, %4
  store i32 %8, i32* %6, align 4
  %9 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %10 = call i32 @ql_mb_set_port_cfg(%struct.ql_adapter* %9)
  %11 = load i32, i32* @QL_LB_LINK_UP, align 4
  %12 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %12, i32 0, i32 0
  %14 = call i64 @test_bit(i32 %11, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %1
  %17 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %18 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @netif_carrier_on(i32 %19)
  %21 = load i32, i32* @QL_LB_LINK_UP, align 4
  %22 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %23 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %22, i32 0, i32 0
  %24 = call i32 @clear_bit(i32 %21, i32* %23)
  br label %25

25:                                               ; preds = %16, %1
  ret void
}

declare dso_local i32 @ql_mb_set_port_cfg(%struct.ql_adapter*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @netif_carrier_on(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
