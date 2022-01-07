; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_via-velocity.c_velocity_ethtool_set_wol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_via-velocity.c_velocity_ethtool_set_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_wolinfo = type { i32, i32 }
%struct.velocity_info = type { i32, i32, i32 }

@WAKE_PHY = common dso_local global i32 0, align 4
@WAKE_MAGIC = common dso_local global i32 0, align 4
@WAKE_UCAST = common dso_local global i32 0, align 4
@WAKE_ARP = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@VELOCITY_WOL_MAGIC = common dso_local global i32 0, align 4
@VELOCITY_FLAGS_WOL_ENABLED = common dso_local global i32 0, align 4
@VELOCITY_WOL_UCAST = common dso_local global i32 0, align 4
@VELOCITY_WOL_ARP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_wolinfo*)* @velocity_ethtool_set_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @velocity_ethtool_set_wol(%struct.net_device* %0, %struct.ethtool_wolinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_wolinfo*, align 8
  %6 = alloca %struct.velocity_info*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_wolinfo* %1, %struct.ethtool_wolinfo** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.velocity_info* @netdev_priv(%struct.net_device* %7)
  store %struct.velocity_info* %8, %struct.velocity_info** %6, align 8
  %9 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %10 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @WAKE_PHY, align 4
  %13 = load i32, i32* @WAKE_MAGIC, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @WAKE_UCAST, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @WAKE_ARP, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %11, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @EFAULT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %89

24:                                               ; preds = %2
  %25 = load i32, i32* @VELOCITY_WOL_MAGIC, align 4
  %26 = load %struct.velocity_info*, %struct.velocity_info** %6, align 8
  %27 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %29 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @WAKE_MAGIC, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %24
  %35 = load i32, i32* @VELOCITY_WOL_MAGIC, align 4
  %36 = load %struct.velocity_info*, %struct.velocity_info** %6, align 8
  %37 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load i32, i32* @VELOCITY_FLAGS_WOL_ENABLED, align 4
  %41 = load %struct.velocity_info*, %struct.velocity_info** %6, align 8
  %42 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %34, %24
  %46 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %47 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @WAKE_UCAST, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %45
  %53 = load i32, i32* @VELOCITY_WOL_UCAST, align 4
  %54 = load %struct.velocity_info*, %struct.velocity_info** %6, align 8
  %55 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  %58 = load i32, i32* @VELOCITY_FLAGS_WOL_ENABLED, align 4
  %59 = load %struct.velocity_info*, %struct.velocity_info** %6, align 8
  %60 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %52, %45
  %64 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %65 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @WAKE_ARP, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %63
  %71 = load i32, i32* @VELOCITY_WOL_ARP, align 4
  %72 = load %struct.velocity_info*, %struct.velocity_info** %6, align 8
  %73 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 4
  %76 = load i32, i32* @VELOCITY_FLAGS_WOL_ENABLED, align 4
  %77 = load %struct.velocity_info*, %struct.velocity_info** %6, align 8
  %78 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %70, %63
  %82 = load %struct.velocity_info*, %struct.velocity_info** %6, align 8
  %83 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %86 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @memcpy(i32 %84, i32 %87, i32 6)
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %81, %21
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local %struct.velocity_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
