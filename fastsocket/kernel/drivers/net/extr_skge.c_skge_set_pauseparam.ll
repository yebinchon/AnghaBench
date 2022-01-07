; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_skge.c_skge_set_pauseparam.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_skge.c_skge_set_pauseparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_pauseparam = type { i64, i64, i64 }
%struct.skge_port = type { i8* }

@FLOW_MODE_NONE = common dso_local global i8* null, align 8
@FLOW_MODE_SYMMETRIC = common dso_local global i8* null, align 8
@FLOW_MODE_SYM_OR_REM = common dso_local global i8* null, align 8
@FLOW_MODE_LOC_SEND = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_pauseparam*)* @skge_set_pauseparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skge_set_pauseparam(%struct.net_device* %0, %struct.ethtool_pauseparam* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_pauseparam*, align 8
  %6 = alloca %struct.skge_port*, align 8
  %7 = alloca %struct.ethtool_pauseparam, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_pauseparam* %1, %struct.ethtool_pauseparam** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.skge_port* @netdev_priv(%struct.net_device* %9)
  store %struct.skge_port* %10, %struct.skge_port** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call i32 @skge_get_pauseparam(%struct.net_device* %11, %struct.ethtool_pauseparam* %7)
  %13 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %14 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %7, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %15, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %2
  %20 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %21 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i8*, i8** @FLOW_MODE_NONE, align 8
  br label %28

26:                                               ; preds = %19
  %27 = load i8*, i8** @FLOW_MODE_SYMMETRIC, align 8
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i8* [ %25, %24 ], [ %27, %26 ]
  %30 = load %struct.skge_port*, %struct.skge_port** %6, align 8
  %31 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  br label %81

32:                                               ; preds = %2
  %33 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %34 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %32
  %38 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %39 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i8*, i8** @FLOW_MODE_SYMMETRIC, align 8
  %44 = load %struct.skge_port*, %struct.skge_port** %6, align 8
  %45 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  br label %80

46:                                               ; preds = %37, %32
  %47 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %48 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %46
  %52 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %53 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %51
  %57 = load i8*, i8** @FLOW_MODE_SYM_OR_REM, align 8
  %58 = load %struct.skge_port*, %struct.skge_port** %6, align 8
  %59 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %58, i32 0, i32 0
  store i8* %57, i8** %59, align 8
  br label %79

60:                                               ; preds = %51, %46
  %61 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %62 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %74, label %65

65:                                               ; preds = %60
  %66 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %67 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load i8*, i8** @FLOW_MODE_LOC_SEND, align 8
  %72 = load %struct.skge_port*, %struct.skge_port** %6, align 8
  %73 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %72, i32 0, i32 0
  store i8* %71, i8** %73, align 8
  br label %78

74:                                               ; preds = %65, %60
  %75 = load i8*, i8** @FLOW_MODE_NONE, align 8
  %76 = load %struct.skge_port*, %struct.skge_port** %6, align 8
  %77 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %76, i32 0, i32 0
  store i8* %75, i8** %77, align 8
  br label %78

78:                                               ; preds = %74, %70
  br label %79

79:                                               ; preds = %78, %56
  br label %80

80:                                               ; preds = %79, %42
  br label %81

81:                                               ; preds = %80, %28
  %82 = load %struct.net_device*, %struct.net_device** %4, align 8
  %83 = call i64 @netif_running(%struct.net_device* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %97

85:                                               ; preds = %81
  %86 = load %struct.net_device*, %struct.net_device** %4, align 8
  %87 = call i32 @skge_down(%struct.net_device* %86)
  %88 = load %struct.net_device*, %struct.net_device** %4, align 8
  %89 = call i32 @skge_up(%struct.net_device* %88)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %85
  %93 = load %struct.net_device*, %struct.net_device** %4, align 8
  %94 = call i32 @dev_close(%struct.net_device* %93)
  %95 = load i32, i32* %8, align 4
  store i32 %95, i32* %3, align 4
  br label %98

96:                                               ; preds = %85
  br label %97

97:                                               ; preds = %96, %81
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %97, %92
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local %struct.skge_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @skge_get_pauseparam(%struct.net_device*, %struct.ethtool_pauseparam*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @skge_down(%struct.net_device*) #1

declare dso_local i32 @skge_up(%struct.net_device*) #1

declare dso_local i32 @dev_close(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
