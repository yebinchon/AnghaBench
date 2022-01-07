; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_skge.c_skge_set_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_skge.c_skge_set_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_cmd = type { i64, i32, i32, i32 }
%struct.skge_port = type { i32, i32, i64, i32, %struct.skge_hw* }
%struct.skge_hw = type { i32 }

@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@DUPLEX_FULL = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Full = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Half = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Half = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_cmd*)* @skge_set_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skge_set_settings(%struct.net_device* %0, %struct.ethtool_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_cmd*, align 8
  %6 = alloca %struct.skge_port*, align 8
  %7 = alloca %struct.skge_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_cmd* %1, %struct.ethtool_cmd** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.skge_port* @netdev_priv(%struct.net_device* %11)
  store %struct.skge_port* %12, %struct.skge_port** %6, align 8
  %13 = load %struct.skge_port*, %struct.skge_port** %6, align 8
  %14 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %13, i32 0, i32 4
  %15 = load %struct.skge_hw*, %struct.skge_hw** %14, align 8
  store %struct.skge_hw* %15, %struct.skge_hw** %7, align 8
  %16 = load %struct.skge_hw*, %struct.skge_hw** %7, align 8
  %17 = call i32 @skge_supported_modes(%struct.skge_hw* %16)
  store i32 %17, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %18 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %19 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @AUTONEG_ENABLE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %2
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %26 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  %27 = load %struct.skge_port*, %struct.skge_port** %6, align 8
  %28 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %27, i32 0, i32 0
  store i32 -1, i32* %28, align 8
  %29 = load %struct.skge_port*, %struct.skge_port** %6, align 8
  %30 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %29, i32 0, i32 1
  store i32 -1, i32* %30, align 4
  br label %120

31:                                               ; preds = %2
  %32 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %33 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %98 [
    i32 128, label %35
    i32 129, label %56
    i32 130, label %77
  ]

35:                                               ; preds = %31
  %36 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %37 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @DUPLEX_FULL, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  store i32 %42, i32* %10, align 4
  br label %55

43:                                               ; preds = %35
  %44 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %45 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @DUPLEX_HALF, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* @SUPPORTED_1000baseT_Half, align 4
  store i32 %50, i32* %10, align 4
  br label %54

51:                                               ; preds = %43
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %147

54:                                               ; preds = %49
  br label %55

55:                                               ; preds = %54, %41
  br label %101

56:                                               ; preds = %31
  %57 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %58 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @DUPLEX_FULL, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i32, i32* @SUPPORTED_100baseT_Full, align 4
  store i32 %63, i32* %10, align 4
  br label %76

64:                                               ; preds = %56
  %65 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %66 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @DUPLEX_HALF, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = load i32, i32* @SUPPORTED_100baseT_Half, align 4
  store i32 %71, i32* %10, align 4
  br label %75

72:                                               ; preds = %64
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %147

75:                                               ; preds = %70
  br label %76

76:                                               ; preds = %75, %62
  br label %101

77:                                               ; preds = %31
  %78 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %79 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @DUPLEX_FULL, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = load i32, i32* @SUPPORTED_10baseT_Full, align 4
  store i32 %84, i32* %10, align 4
  br label %97

85:                                               ; preds = %77
  %86 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %87 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @DUPLEX_HALF, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = load i32, i32* @SUPPORTED_10baseT_Half, align 4
  store i32 %92, i32* %10, align 4
  br label %96

93:                                               ; preds = %85
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %3, align 4
  br label %147

96:                                               ; preds = %91
  br label %97

97:                                               ; preds = %96, %83
  br label %101

98:                                               ; preds = %31
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %3, align 4
  br label %147

101:                                              ; preds = %97, %76, %55
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* %8, align 4
  %104 = and i32 %102, %103
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %3, align 4
  br label %147

109:                                              ; preds = %101
  %110 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %111 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.skge_port*, %struct.skge_port** %6, align 8
  %114 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  %115 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %116 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.skge_port*, %struct.skge_port** %6, align 8
  %119 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  br label %120

120:                                              ; preds = %109, %23
  %121 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %122 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.skge_port*, %struct.skge_port** %6, align 8
  %125 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %124, i32 0, i32 2
  store i64 %123, i64* %125, align 8
  %126 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %127 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.skge_port*, %struct.skge_port** %6, align 8
  %130 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %129, i32 0, i32 3
  store i32 %128, i32* %130, align 8
  %131 = load %struct.net_device*, %struct.net_device** %4, align 8
  %132 = call i64 @netif_running(%struct.net_device* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %146

134:                                              ; preds = %120
  %135 = load %struct.net_device*, %struct.net_device** %4, align 8
  %136 = call i32 @skge_down(%struct.net_device* %135)
  %137 = load %struct.net_device*, %struct.net_device** %4, align 8
  %138 = call i32 @skge_up(%struct.net_device* %137)
  store i32 %138, i32* %9, align 4
  %139 = load i32, i32* %9, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %134
  %142 = load %struct.net_device*, %struct.net_device** %4, align 8
  %143 = call i32 @dev_close(%struct.net_device* %142)
  %144 = load i32, i32* %9, align 4
  store i32 %144, i32* %3, align 4
  br label %147

145:                                              ; preds = %134
  br label %146

146:                                              ; preds = %145, %120
  store i32 0, i32* %3, align 4
  br label %147

147:                                              ; preds = %146, %141, %106, %98, %93, %72, %51
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local %struct.skge_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @skge_supported_modes(%struct.skge_hw*) #1

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
