; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_ethtool.c_netxen_nic_test_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_ethtool.c_netxen_nic_test_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netxen_adapter = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@CRB_XG_STATE_P3 = common dso_local global i32 0, align 4
@XG_LINK_UP_P3 = common dso_local global i32 0, align 4
@CRB_XG_STATE = common dso_local global i32 0, align 4
@XG_LINK_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @netxen_nic_test_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netxen_nic_test_link(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.netxen_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.netxen_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.netxen_adapter* %8, %struct.netxen_adapter** %4, align 8
  %9 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %10 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %6, align 4
  %12 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %13 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @NX_IS_REVISION_P3(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %1
  %19 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %20 = load i32, i32* @CRB_XG_STATE_P3, align 4
  %21 = call i32 @NXRD32(%struct.netxen_adapter* %19, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %23 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @XG_LINK_STATE_P3(i32 %25, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @XG_LINK_UP_P3, align 4
  %30 = icmp eq i32 %28, %29
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 0, i32 1
  store i32 %32, i32* %2, align 4
  br label %47

33:                                               ; preds = %1
  %34 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %35 = load i32, i32* @CRB_XG_STATE, align 4
  %36 = call i32 @NXRD32(%struct.netxen_adapter* %34, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %6, align 4
  %39 = mul nsw i32 %38, 8
  %40 = ashr i32 %37, %39
  %41 = and i32 %40, 255
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @XG_LINK_UP, align 4
  %44 = icmp eq i32 %42, %43
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 0, i32 1
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %33, %18
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.netxen_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @NX_IS_REVISION_P3(i32) #1

declare dso_local i32 @NXRD32(%struct.netxen_adapter*, i32) #1

declare dso_local i32 @XG_LINK_STATE_P3(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
