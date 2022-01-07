; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_hw.c_netxen_nic_disable_mcast_filter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_hw.c_netxen_nic_disable_mcast_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netxen_adapter = type { i32, i64, i32* }

@NETXEN_MAC_ADDR_CNTL_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netxen_adapter*)* @netxen_nic_disable_mcast_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netxen_nic_disable_mcast_filter(%struct.netxen_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.netxen_adapter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.netxen_adapter* %0, %struct.netxen_adapter** %3, align 8
  store i64 0, i64* %4, align 8
  %7 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %5, align 4
  %10 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %6, align 8
  %13 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %59

18:                                               ; preds = %1
  %19 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %20 = load i64, i64* @NETXEN_MAC_ADDR_CNTL_REG, align 8
  %21 = call i64 @NXRD32(%struct.netxen_adapter* %19, i64 %20)
  store i64 %21, i64* %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 28, %22
  %24 = zext i32 %23 to i64
  %25 = shl i64 1, %24
  %26 = xor i64 %25, -1
  %27 = load i64, i64* %4, align 8
  %28 = and i64 %27, %26
  store i64 %28, i64* %4, align 8
  %29 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %30 = load i64, i64* @NETXEN_MAC_ADDR_CNTL_REG, align 8
  %31 = load i64, i64* %4, align 8
  %32 = call i32 @NXWR32(%struct.netxen_adapter* %29, i64 %30, i64 %31)
  %33 = load i32*, i32** %6, align 8
  %34 = call i64 @MAC_HI(i32* %33)
  store i64 %34, i64* %4, align 8
  %35 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i64 @NETXEN_UNICAST_ADDR(i32 %36, i32 0)
  %38 = load i64, i64* %4, align 8
  %39 = call i32 @NXWR32(%struct.netxen_adapter* %35, i64 %37, i64 %38)
  %40 = load i32*, i32** %6, align 8
  %41 = call i64 @MAC_LO(i32* %40)
  store i64 %41, i64* %4, align 8
  %42 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i64 @NETXEN_UNICAST_ADDR(i32 %43, i32 0)
  %45 = add nsw i64 %44, 4
  %46 = load i64, i64* %4, align 8
  %47 = call i32 @NXWR32(%struct.netxen_adapter* %42, i64 %45, i64 %46)
  %48 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i64 @NETXEN_UNICAST_ADDR(i32 %49, i32 1)
  %51 = call i32 @NXWR32(%struct.netxen_adapter* %48, i64 %50, i64 0)
  %52 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i64 @NETXEN_UNICAST_ADDR(i32 %53, i32 1)
  %55 = add nsw i64 %54, 4
  %56 = call i32 @NXWR32(%struct.netxen_adapter* %52, i64 %55, i64 0)
  %57 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %58 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %57, i32 0, i32 1
  store i64 0, i64* %58, align 8
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %18, %17
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i64 @NXRD32(%struct.netxen_adapter*, i64) #1

declare dso_local i32 @NXWR32(%struct.netxen_adapter*, i64, i64) #1

declare dso_local i64 @MAC_HI(i32*) #1

declare dso_local i64 @NETXEN_UNICAST_ADDR(i32, i32) #1

declare dso_local i64 @MAC_LO(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
