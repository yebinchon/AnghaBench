; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_main.c_netxen_set_port_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_main.c_netxen_set_port_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netxen_adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@NETXEN_BRDTYPE_P3_HMEZ = common dso_local global i64 0, align 8
@NETXEN_BRDTYPE_P3_XG_LOM = common dso_local global i64 0, align 8
@port_mode = common dso_local global i64 0, align 8
@NETXEN_PORT_MODE_802_3_AP = common dso_local global i64 0, align 8
@NETXEN_PORT_MODE_ADDR = common dso_local global i32 0, align 4
@NETXEN_PORT_MODE_XG = common dso_local global i64 0, align 8
@NETXEN_PORT_MODE_AUTO_NEG_1G = common dso_local global i64 0, align 8
@NETXEN_PORT_MODE_AUTO_NEG_XG = common dso_local global i64 0, align 8
@NETXEN_PORT_MODE_AUTO_NEG = common dso_local global i64 0, align 8
@wol_port_mode = common dso_local global i64 0, align 8
@NETXEN_WOL_PORT_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netxen_adapter*)* @netxen_set_port_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netxen_set_port_mode(%struct.netxen_adapter* %0) #0 {
  %2 = alloca %struct.netxen_adapter*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.netxen_adapter* %0, %struct.netxen_adapter** %2, align 8
  %5 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @NETXEN_BRDTYPE_P3_HMEZ, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load i64, i64* %3, align 8
  %14 = load i64, i64* @NETXEN_BRDTYPE_P3_XG_LOM, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %88

16:                                               ; preds = %12, %1
  %17 = load i64, i64* @port_mode, align 8
  %18 = load i64, i64* @NETXEN_PORT_MODE_802_3_AP, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = load i64, i64* @NETXEN_PORT_MODE_802_3_AP, align 8
  store i64 %21, i64* %4, align 8
  %22 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %23 = load i32, i32* @NETXEN_PORT_MODE_ADDR, align 4
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @NXWR32(%struct.netxen_adapter* %22, i32 %23, i64 %24)
  br label %65

26:                                               ; preds = %16
  %27 = load i64, i64* @port_mode, align 8
  %28 = load i64, i64* @NETXEN_PORT_MODE_XG, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load i64, i64* @NETXEN_PORT_MODE_XG, align 8
  store i64 %31, i64* %4, align 8
  %32 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %33 = load i32, i32* @NETXEN_PORT_MODE_ADDR, align 4
  %34 = load i64, i64* %4, align 8
  %35 = call i32 @NXWR32(%struct.netxen_adapter* %32, i32 %33, i64 %34)
  br label %64

36:                                               ; preds = %26
  %37 = load i64, i64* @port_mode, align 8
  %38 = load i64, i64* @NETXEN_PORT_MODE_AUTO_NEG_1G, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = load i64, i64* @NETXEN_PORT_MODE_AUTO_NEG_1G, align 8
  store i64 %41, i64* %4, align 8
  %42 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %43 = load i32, i32* @NETXEN_PORT_MODE_ADDR, align 4
  %44 = load i64, i64* %4, align 8
  %45 = call i32 @NXWR32(%struct.netxen_adapter* %42, i32 %43, i64 %44)
  br label %63

46:                                               ; preds = %36
  %47 = load i64, i64* @port_mode, align 8
  %48 = load i64, i64* @NETXEN_PORT_MODE_AUTO_NEG_XG, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = load i64, i64* @NETXEN_PORT_MODE_AUTO_NEG_XG, align 8
  store i64 %51, i64* %4, align 8
  %52 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %53 = load i32, i32* @NETXEN_PORT_MODE_ADDR, align 4
  %54 = load i64, i64* %4, align 8
  %55 = call i32 @NXWR32(%struct.netxen_adapter* %52, i32 %53, i64 %54)
  br label %62

56:                                               ; preds = %46
  %57 = load i64, i64* @NETXEN_PORT_MODE_AUTO_NEG, align 8
  store i64 %57, i64* %4, align 8
  %58 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %59 = load i32, i32* @NETXEN_PORT_MODE_ADDR, align 4
  %60 = load i64, i64* %4, align 8
  %61 = call i32 @NXWR32(%struct.netxen_adapter* %58, i32 %59, i64 %60)
  br label %62

62:                                               ; preds = %56, %50
  br label %63

63:                                               ; preds = %62, %40
  br label %64

64:                                               ; preds = %63, %30
  br label %65

65:                                               ; preds = %64, %20
  %66 = load i64, i64* @wol_port_mode, align 8
  %67 = load i64, i64* @NETXEN_PORT_MODE_802_3_AP, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %83

69:                                               ; preds = %65
  %70 = load i64, i64* @wol_port_mode, align 8
  %71 = load i64, i64* @NETXEN_PORT_MODE_XG, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %83

73:                                               ; preds = %69
  %74 = load i64, i64* @wol_port_mode, align 8
  %75 = load i64, i64* @NETXEN_PORT_MODE_AUTO_NEG_1G, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %73
  %78 = load i64, i64* @wol_port_mode, align 8
  %79 = load i64, i64* @NETXEN_PORT_MODE_AUTO_NEG_XG, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = load i64, i64* @NETXEN_PORT_MODE_AUTO_NEG, align 8
  store i64 %82, i64* @wol_port_mode, align 8
  br label %83

83:                                               ; preds = %81, %77, %73, %69, %65
  %84 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %85 = load i32, i32* @NETXEN_WOL_PORT_MODE, align 4
  %86 = load i64, i64* @wol_port_mode, align 8
  %87 = call i32 @NXWR32(%struct.netxen_adapter* %84, i32 %85, i64 %86)
  br label %88

88:                                               ; preds = %83, %12
  ret void
}

declare dso_local i32 @NXWR32(%struct.netxen_adapter*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
