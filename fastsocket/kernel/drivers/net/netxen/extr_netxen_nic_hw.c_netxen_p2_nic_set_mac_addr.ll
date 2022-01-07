; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_hw.c_netxen_p2_nic_set_mac_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_hw.c_netxen_p2_nic_set_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netxen_adapter = type { i32 }

@NETXEN_NIU_MAX_XG_PORTS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NETXEN_NIU_XGE_STATION_ADDR_0_1 = common dso_local global i32 0, align 4
@NETXEN_NIU_XGE_STATION_ADDR_0_HI = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netxen_adapter*, i32*)* @netxen_p2_nic_set_mac_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netxen_p2_nic_set_mac_addr(%struct.netxen_adapter* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.netxen_adapter*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.netxen_adapter* %0, %struct.netxen_adapter** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %12 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* @NETXEN_NIU_MAX_XG_PORTS, align 4
  %16 = icmp sge i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %86

20:                                               ; preds = %2
  %21 = load i32*, i32** %5, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = shl i32 %23, 16
  %25 = load i32*, i32** %5, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = shl i32 %27, 24
  %29 = or i32 %24, %28
  store i32 %29, i32* %7, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %5, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 3
  %35 = load i32, i32* %34, align 4
  %36 = shl i32 %35, 8
  %37 = or i32 %32, %36
  %38 = load i32*, i32** %5, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 4
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %40, 16
  %42 = or i32 %37, %41
  %43 = load i32*, i32** %5, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 5
  %45 = load i32, i32* %44, align 4
  %46 = shl i32 %45, 24
  %47 = or i32 %42, %46
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* @NETXEN_NIU_XGE_STATION_ADDR_0_1, align 4
  %49 = load i32, i32* %10, align 4
  %50 = mul nsw i32 65536, %49
  %51 = add nsw i32 %48, %50
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* @NETXEN_NIU_XGE_STATION_ADDR_0_HI, align 4
  %53 = load i32, i32* %10, align 4
  %54 = mul nsw i32 65536, %53
  %55 = add nsw i32 %52, %54
  store i32 %55, i32* %8, align 4
  %56 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i64 @NXWR32(%struct.netxen_adapter* %56, i32 %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %20
  %62 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %6, align 4
  %65 = call i64 @NXWR32(%struct.netxen_adapter* %62, i32 %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %61, %20
  %68 = load i32, i32* @EIO, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %86

70:                                               ; preds = %61
  %71 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i64 @NXWR32(%struct.netxen_adapter* %71, i32 %72, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %70
  %77 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %6, align 4
  %80 = call i64 @NXWR32(%struct.netxen_adapter* %77, i32 %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %76, %70
  %83 = load i32, i32* @EIO, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %3, align 4
  br label %86

85:                                               ; preds = %76
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %85, %82, %67, %17
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i64 @NXWR32(%struct.netxen_adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
