; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_ethtool.c_ehea_set_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_ethtool.c_ehea_set_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_cmd = type { i64, i32, i32 }
%struct.ehea_port = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@EHEA_SPEED_AUTONEG = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@H_SPEED_10M_F = common dso_local global i32 0, align 4
@H_SPEED_10M_H = common dso_local global i32 0, align 4
@H_SPEED_100M_F = common dso_local global i32 0, align 4
@H_SPEED_100M_H = common dso_local global i32 0, align 4
@H_SPEED_1G_F = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@H_SPEED_10G_F = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"%s: Port speed succesfully set: %dMbps %s Duplex\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Full\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Half\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_cmd*)* @ehea_set_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehea_set_settings(%struct.net_device* %0, %struct.ethtool_cmd* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_cmd*, align 8
  %5 = alloca %struct.ehea_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_cmd* %1, %struct.ethtool_cmd** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.ehea_port* @netdev_priv(%struct.net_device* %8)
  store %struct.ehea_port* %9, %struct.ehea_port** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %11 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @AUTONEG_ENABLE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @EHEA_SPEED_AUTONEG, align 4
  store i32 %16, i32* %7, align 4
  br label %75

17:                                               ; preds = %2
  %18 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %19 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %67 [
    i32 131, label %21
    i32 130, label %32
    i32 129, label %43
    i32 128, label %55
  ]

21:                                               ; preds = %17
  %22 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %23 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @DUPLEX_FULL, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @H_SPEED_10M_F, align 4
  store i32 %28, i32* %7, align 4
  br label %31

29:                                               ; preds = %21
  %30 = load i32, i32* @H_SPEED_10M_H, align 4
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %29, %27
  br label %70

32:                                               ; preds = %17
  %33 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %34 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @DUPLEX_FULL, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* @H_SPEED_100M_F, align 4
  store i32 %39, i32* %7, align 4
  br label %42

40:                                               ; preds = %32
  %41 = load i32, i32* @H_SPEED_100M_H, align 4
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %40, %38
  br label %70

43:                                               ; preds = %17
  %44 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %45 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @DUPLEX_FULL, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* @H_SPEED_1G_F, align 4
  store i32 %50, i32* %7, align 4
  br label %54

51:                                               ; preds = %43
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %51, %49
  br label %70

55:                                               ; preds = %17
  %56 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %57 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @DUPLEX_FULL, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i32, i32* @H_SPEED_10G_F, align 4
  store i32 %62, i32* %7, align 4
  br label %66

63:                                               ; preds = %55
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %63, %61
  br label %70

67:                                               ; preds = %17
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %67, %66, %54, %42, %31
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  br label %98

74:                                               ; preds = %70
  br label %75

75:                                               ; preds = %74, %15
  %76 = load %struct.ehea_port*, %struct.ehea_port** %5, align 8
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @ehea_set_portspeed(%struct.ehea_port* %76, i32 %77)
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %97, label %81

81:                                               ; preds = %75
  %82 = load %struct.ehea_port*, %struct.ehea_port** %5, align 8
  %83 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %82, i32 0, i32 2
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.ehea_port*, %struct.ehea_port** %5, align 8
  %88 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.ehea_port*, %struct.ehea_port** %5, align 8
  %91 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp eq i32 %92, 1
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %96 = call i32 @ehea_info(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %86, i32 %89, i8* %95)
  br label %97

97:                                               ; preds = %81, %75
  br label %98

98:                                               ; preds = %97, %73
  %99 = load i32, i32* %6, align 4
  ret i32 %99
}

declare dso_local %struct.ehea_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ehea_set_portspeed(%struct.ehea_port*, i32) #1

declare dso_local i32 @ehea_info(i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
