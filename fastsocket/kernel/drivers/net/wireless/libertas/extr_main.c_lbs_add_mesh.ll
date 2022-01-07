; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_main.c_lbs_add_mesh.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_main.c_lbs_add_mesh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { %struct.TYPE_5__*, %struct.net_device* }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.net_device = type { i32, %struct.TYPE_6__, %struct.iw_handler_def*, i32, i32*, i32*, %struct.lbs_private* }
%struct.TYPE_6__ = type { i32 }
%struct.iw_handler_def = type { i32 }

@LBS_DEB_MESH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"msh%d\00", align 1
@ether_setup = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"init mshX device failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@mesh_netdev_ops = common dso_local global i32 0, align 4
@lbs_ethtool_ops = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"cannot register mshX virtual interface\0A\00", align 1
@lbs_mesh_attr_group = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"ret %d\00", align 1
@mesh_handler_def = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lbs_private*)* @lbs_add_mesh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbs_add_mesh(%struct.lbs_private* %0) #0 {
  %2 = alloca %struct.lbs_private*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %2, align 8
  store %struct.net_device* null, %struct.net_device** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* @LBS_DEB_MESH, align 4
  %6 = call i32 @lbs_deb_enter(i32 %5)
  %7 = load i32, i32* @ether_setup, align 4
  %8 = call %struct.net_device* @alloc_netdev(i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %7)
  store %struct.net_device* %8, %struct.net_device** %3, align 8
  %9 = icmp ne %struct.net_device* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = call i32 @lbs_deb_mesh(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %4, align 4
  br label %74

14:                                               ; preds = %1
  %15 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 6
  store %struct.lbs_private* %15, %struct.lbs_private** %17, align 8
  %18 = load %struct.net_device*, %struct.net_device** %3, align 8
  %19 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %20 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %19, i32 0, i32 1
  store %struct.net_device* %18, %struct.net_device** %20, align 8
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 5
  store i32* @mesh_netdev_ops, i32** %22, align 8
  %23 = load %struct.net_device*, %struct.net_device** %3, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 4
  store i32* @lbs_ethtool_ops, i32** %24, align 8
  %25 = load %struct.net_device*, %struct.net_device** %3, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %29 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @memcpy(i32 %27, i32 %32, i32 4)
  %34 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %35 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %34, i32 0, i32 1
  %36 = load %struct.net_device*, %struct.net_device** %35, align 8
  %37 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %38 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @SET_NETDEV_DEV(%struct.net_device* %36, i32 %42)
  %44 = load i32, i32* @IFF_BROADCAST, align 4
  %45 = load i32, i32* @IFF_MULTICAST, align 4
  %46 = or i32 %44, %45
  %47 = load %struct.net_device*, %struct.net_device** %3, align 8
  %48 = getelementptr inbounds %struct.net_device, %struct.net_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  %51 = load %struct.net_device*, %struct.net_device** %3, align 8
  %52 = call i32 @register_netdev(%struct.net_device* %51)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %14
  %56 = call i32 @lbs_pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %71

57:                                               ; preds = %14
  %58 = load %struct.net_device*, %struct.net_device** %3, align 8
  %59 = getelementptr inbounds %struct.net_device, %struct.net_device* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = call i32 @sysfs_create_group(i32* %60, i32* @lbs_mesh_attr_group)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  br label %68

65:                                               ; preds = %57
  %66 = load %struct.net_device*, %struct.net_device** %3, align 8
  %67 = call i32 @lbs_persist_config_init(%struct.net_device* %66)
  store i32 0, i32* %4, align 4
  br label %74

68:                                               ; preds = %64
  %69 = load %struct.net_device*, %struct.net_device** %3, align 8
  %70 = call i32 @unregister_netdev(%struct.net_device* %69)
  br label %71

71:                                               ; preds = %68, %55
  %72 = load %struct.net_device*, %struct.net_device** %3, align 8
  %73 = call i32 @free_netdev(%struct.net_device* %72)
  br label %74

74:                                               ; preds = %71, %65, %10
  %75 = load i32, i32* @LBS_DEB_MESH, align 4
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @lbs_deb_leave_args(i32 %75, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local %struct.net_device* @alloc_netdev(i32, i8*, i32) #1

declare dso_local i32 @lbs_deb_mesh(i8*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @lbs_pr_err(i8*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @lbs_persist_config_init(%struct.net_device*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @lbs_deb_leave_args(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
