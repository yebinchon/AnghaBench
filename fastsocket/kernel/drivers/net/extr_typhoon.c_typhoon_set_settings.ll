; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_typhoon.c_typhoon_set_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_typhoon.c_typhoon_set_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_cmd = type { i64, i32, i32 }
%struct.typhoon = type { i32, i32, i8* }
%struct.cmd_desc = type { i8* }

@EINVAL = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@TYPHOON_XCVR_AUTONEG = common dso_local global i8* null, align 8
@DUPLEX_HALF = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i32 0, align 4
@TYPHOON_XCVR_10HALF = common dso_local global i8* null, align 8
@SPEED_100 = common dso_local global i32 0, align 4
@TYPHOON_XCVR_100HALF = common dso_local global i8* null, align 8
@DUPLEX_FULL = common dso_local global i32 0, align 4
@TYPHOON_XCVR_10FULL = common dso_local global i8* null, align 8
@TYPHOON_XCVR_100FULL = common dso_local global i8* null, align 8
@TYPHOON_CMD_XCVR_SELECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_cmd*)* @typhoon_set_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @typhoon_set_settings(%struct.net_device* %0, %struct.ethtool_cmd* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_cmd*, align 8
  %5 = alloca %struct.typhoon*, align 8
  %6 = alloca %struct.cmd_desc, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_cmd* %1, %struct.ethtool_cmd** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.typhoon* @netdev_priv(%struct.net_device* %9)
  store %struct.typhoon* %10, %struct.typhoon** %5, align 8
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %8, align 4
  %13 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %14 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @AUTONEG_ENABLE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i8*, i8** @TYPHOON_XCVR_AUTONEG, align 8
  store i8* %19, i8** %7, align 8
  br label %73

20:                                               ; preds = %2
  %21 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %22 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @DUPLEX_HALF, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %45

26:                                               ; preds = %20
  %27 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %28 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @SPEED_10, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i8*, i8** @TYPHOON_XCVR_10HALF, align 8
  store i8* %33, i8** %7, align 8
  br label %44

34:                                               ; preds = %26
  %35 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %36 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @SPEED_100, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i8*, i8** @TYPHOON_XCVR_100HALF, align 8
  store i8* %41, i8** %7, align 8
  br label %43

42:                                               ; preds = %34
  br label %109

43:                                               ; preds = %40
  br label %44

44:                                               ; preds = %43, %32
  br label %72

45:                                               ; preds = %20
  %46 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %47 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @DUPLEX_FULL, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %70

51:                                               ; preds = %45
  %52 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %53 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @SPEED_10, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i8*, i8** @TYPHOON_XCVR_10FULL, align 8
  store i8* %58, i8** %7, align 8
  br label %69

59:                                               ; preds = %51
  %60 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %61 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @SPEED_100, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i8*, i8** @TYPHOON_XCVR_100FULL, align 8
  store i8* %66, i8** %7, align 8
  br label %68

67:                                               ; preds = %59
  br label %109

68:                                               ; preds = %65
  br label %69

69:                                               ; preds = %68, %57
  br label %71

70:                                               ; preds = %45
  br label %109

71:                                               ; preds = %69
  br label %72

72:                                               ; preds = %71, %44
  br label %73

73:                                               ; preds = %72, %18
  %74 = load i32, i32* @TYPHOON_CMD_XCVR_SELECT, align 4
  %75 = call i32 @INIT_COMMAND_NO_RESPONSE(%struct.cmd_desc* %6, i32 %74)
  %76 = load i8*, i8** %7, align 8
  %77 = getelementptr inbounds %struct.cmd_desc, %struct.cmd_desc* %6, i32 0, i32 0
  store i8* %76, i8** %77, align 8
  %78 = load %struct.typhoon*, %struct.typhoon** %5, align 8
  %79 = call i32 @typhoon_issue_command(%struct.typhoon* %78, i32 1, %struct.cmd_desc* %6, i32 0, i32* null)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %73
  br label %109

83:                                               ; preds = %73
  %84 = load i8*, i8** %7, align 8
  %85 = load %struct.typhoon*, %struct.typhoon** %5, align 8
  %86 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %85, i32 0, i32 2
  store i8* %84, i8** %86, align 8
  %87 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %88 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @AUTONEG_ENABLE, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %83
  %93 = load %struct.typhoon*, %struct.typhoon** %5, align 8
  %94 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %93, i32 0, i32 0
  store i32 255, i32* %94, align 8
  %95 = load %struct.typhoon*, %struct.typhoon** %5, align 8
  %96 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %95, i32 0, i32 1
  store i32 255, i32* %96, align 4
  br label %108

97:                                               ; preds = %83
  %98 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %99 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.typhoon*, %struct.typhoon** %5, align 8
  %102 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  %103 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %104 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.typhoon*, %struct.typhoon** %5, align 8
  %107 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  br label %108

108:                                              ; preds = %97, %92
  br label %109

109:                                              ; preds = %108, %82, %70, %67, %42
  %110 = load i32, i32* %8, align 4
  ret i32 %110
}

declare dso_local %struct.typhoon* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @INIT_COMMAND_NO_RESPONSE(%struct.cmd_desc*, i32) #1

declare dso_local i32 @typhoon_issue_command(%struct.typhoon*, i32, %struct.cmd_desc*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
