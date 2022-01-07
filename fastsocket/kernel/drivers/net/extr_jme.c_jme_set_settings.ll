; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_jme.c_jme_set_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_jme.c_jme_set_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_cmd = type { i64, i64, i64 }
%struct.jme_adapter = type { %struct.ethtool_cmd, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@SPEED_1000 = common dso_local global i64 0, align 8
@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@JME_FLAG_SSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_cmd*)* @jme_set_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jme_set_settings(%struct.net_device* %0, %struct.ethtool_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_cmd*, align 8
  %6 = alloca %struct.jme_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_cmd* %1, %struct.ethtool_cmd** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.jme_adapter* @netdev_priv(%struct.net_device* %9)
  store %struct.jme_adapter* %10, %struct.jme_adapter** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %12 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SPEED_1000, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %2
  %17 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %18 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @AUTONEG_ENABLE, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %81

25:                                               ; preds = %16, %2
  %26 = load %struct.jme_adapter*, %struct.jme_adapter** %6, align 8
  %27 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %25
  %32 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %33 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @AUTONEG_ENABLE, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %31
  %38 = load %struct.jme_adapter*, %struct.jme_adapter** %6, align 8
  %39 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %43 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  store i32 1, i32* %8, align 4
  br label %47

47:                                               ; preds = %46, %37, %31, %25
  %48 = load %struct.jme_adapter*, %struct.jme_adapter** %6, align 8
  %49 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %48, i32 0, i32 2
  %50 = call i32 @spin_lock_bh(i32* %49)
  %51 = load %struct.jme_adapter*, %struct.jme_adapter** %6, align 8
  %52 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %51, i32 0, i32 3
  %53 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %54 = call i32 @mii_ethtool_sset(%struct.TYPE_2__* %52, %struct.ethtool_cmd* %53)
  store i32 %54, i32* %7, align 4
  %55 = load %struct.jme_adapter*, %struct.jme_adapter** %6, align 8
  %56 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %55, i32 0, i32 2
  %57 = call i32 @spin_unlock_bh(i32* %56)
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %47
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load %struct.jme_adapter*, %struct.jme_adapter** %6, align 8
  %65 = call i32 @jme_reset_link(%struct.jme_adapter* %64)
  br label %66

66:                                               ; preds = %63, %60, %47
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %79, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* @JME_FLAG_SSET, align 4
  %71 = load %struct.jme_adapter*, %struct.jme_adapter** %6, align 8
  %72 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %71, i32 0, i32 1
  %73 = call i32 @set_bit(i32 %70, i32* %72)
  %74 = load %struct.jme_adapter*, %struct.jme_adapter** %6, align 8
  %75 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %74, i32 0, i32 0
  %76 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %77 = bitcast %struct.ethtool_cmd* %75 to i8*
  %78 = bitcast %struct.ethtool_cmd* %76 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %77, i8* align 8 %78, i64 24, i1 false)
  br label %79

79:                                               ; preds = %69, %66
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %79, %22
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local %struct.jme_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @mii_ethtool_sset(%struct.TYPE_2__*, %struct.ethtool_cmd*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @jme_reset_link(%struct.jme_adapter*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
