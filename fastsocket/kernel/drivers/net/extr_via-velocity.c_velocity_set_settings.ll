; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_via-velocity.c_velocity_set_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_via-velocity.c_velocity_set_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_cmd = type { i64, i64, i64 }
%struct.velocity_info = type { i32 }

@VELOCITY_LINK_FAIL = common dso_local global i32 0, align 4
@VELOCITY_AUTONEG_ENABLE = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i64 0, align 8
@VELOCITY_SPEED_100 = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i64 0, align 8
@VELOCITY_SPEED_10 = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i64 0, align 8
@VELOCITY_DUPLEX_FULL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_cmd*)* @velocity_set_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @velocity_set_settings(%struct.net_device* %0, %struct.ethtool_cmd* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_cmd*, align 8
  %5 = alloca %struct.velocity_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_cmd* %1, %struct.ethtool_cmd** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.velocity_info* @netdev_priv(%struct.net_device* %9)
  store %struct.velocity_info* %10, %struct.velocity_info** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load %struct.velocity_info*, %struct.velocity_info** %5, align 8
  %12 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @check_connection_type(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* @VELOCITY_LINK_FAIL, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %6, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %6, align 4
  %19 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %20 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @VELOCITY_AUTONEG_ENABLE, align 4
  br label %26

25:                                               ; preds = %2
  br label %26

26:                                               ; preds = %25, %23
  %27 = phi i32 [ %24, %23 ], [ 0, %25 ]
  %28 = load i32, i32* %7, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %7, align 4
  %30 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %31 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SPEED_100, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = load i32, i32* @VELOCITY_SPEED_100, align 4
  br label %38

37:                                               ; preds = %26
  br label %38

38:                                               ; preds = %37, %35
  %39 = phi i32 [ %36, %35 ], [ 0, %37 ]
  %40 = load i32, i32* %7, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %7, align 4
  %42 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %43 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @SPEED_10, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = load i32, i32* @VELOCITY_SPEED_10, align 4
  br label %50

49:                                               ; preds = %38
  br label %50

50:                                               ; preds = %49, %47
  %51 = phi i32 [ %48, %47 ], [ 0, %49 ]
  %52 = load i32, i32* %7, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %7, align 4
  %54 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %55 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @DUPLEX_FULL, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %50
  %60 = load i32, i32* @VELOCITY_DUPLEX_FULL, align 4
  br label %62

61:                                               ; preds = %50
  br label %62

62:                                               ; preds = %61, %59
  %63 = phi i32 [ %60, %59 ], [ 0, %61 ]
  %64 = load i32, i32* %7, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @VELOCITY_AUTONEG_ENABLE, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %62
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @VELOCITY_AUTONEG_ENABLE, align 4
  %74 = or i32 %72, %73
  %75 = icmp ne i32 %71, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %8, align 4
  br label %83

79:                                               ; preds = %70, %62
  %80 = load %struct.velocity_info*, %struct.velocity_info** %5, align 8
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @velocity_set_media_mode(%struct.velocity_info* %80, i32 %81)
  br label %83

83:                                               ; preds = %79, %76
  %84 = load i32, i32* %8, align 4
  ret i32 %84
}

declare dso_local %struct.velocity_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @check_connection_type(i32) #1

declare dso_local i32 @velocity_set_media_mode(%struct.velocity_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
