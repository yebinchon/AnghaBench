; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sungem.c_gem_set_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sungem.c_gem_set_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_cmd = type { i64, i64, i64, i64 }
%struct.gem = type { i32 }

@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@AUTONEG_DISABLE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i64 0, align 8
@SPEED_100 = common dso_local global i64 0, align 8
@SPEED_10 = common dso_local global i64 0, align 8
@DUPLEX_HALF = common dso_local global i64 0, align 8
@DUPLEX_FULL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_cmd*)* @gem_set_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gem_set_settings(%struct.net_device* %0, %struct.ethtool_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_cmd*, align 8
  %6 = alloca %struct.gem*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_cmd* %1, %struct.ethtool_cmd** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.gem* @netdev_priv(%struct.net_device* %7)
  store %struct.gem* %8, %struct.gem** %6, align 8
  %9 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %10 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @AUTONEG_ENABLE, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %2
  %15 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %16 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @AUTONEG_DISABLE, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %90

23:                                               ; preds = %14, %2
  %24 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %25 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @AUTONEG_ENABLE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %23
  %30 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %31 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %90

37:                                               ; preds = %29, %23
  %38 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %39 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @AUTONEG_DISABLE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %76

43:                                               ; preds = %37
  %44 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %45 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @SPEED_1000, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %43
  %50 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %51 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @SPEED_100, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %57 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @SPEED_10, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %73, label %61

61:                                               ; preds = %55, %49, %43
  %62 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %63 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @DUPLEX_HALF, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %61
  %68 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %69 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @DUPLEX_FULL, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %67, %55
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %90

76:                                               ; preds = %67, %61, %37
  %77 = load %struct.gem*, %struct.gem** %6, align 8
  %78 = getelementptr inbounds %struct.gem, %struct.gem* %77, i32 0, i32 0
  %79 = call i32 @spin_lock_irq(i32* %78)
  %80 = load %struct.gem*, %struct.gem** %6, align 8
  %81 = call i32 @gem_get_cell(%struct.gem* %80)
  %82 = load %struct.gem*, %struct.gem** %6, align 8
  %83 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %84 = call i32 @gem_begin_auto_negotiation(%struct.gem* %82, %struct.ethtool_cmd* %83)
  %85 = load %struct.gem*, %struct.gem** %6, align 8
  %86 = call i32 @gem_put_cell(%struct.gem* %85)
  %87 = load %struct.gem*, %struct.gem** %6, align 8
  %88 = getelementptr inbounds %struct.gem, %struct.gem* %87, i32 0, i32 0
  %89 = call i32 @spin_unlock_irq(i32* %88)
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %76, %73, %34, %20
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local %struct.gem* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @gem_get_cell(%struct.gem*) #1

declare dso_local i32 @gem_begin_auto_negotiation(%struct.gem*, %struct.ethtool_cmd*) #1

declare dso_local i32 @gem_put_cell(%struct.gem*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
