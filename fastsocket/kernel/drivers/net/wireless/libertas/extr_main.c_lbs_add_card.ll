; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_main.c_lbs_add_card.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_main.c_lbs_add_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i64, i64, i8*, %struct.net_device* }
%struct.net_device = type { i32, i32, i32, i32*, i32*, i32*, %struct.lbs_private* }
%struct.device = type { i32 }

@LBS_DEB_MAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"init wlanX device failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"failed to initialize adapter structure.\0A\00", align 1
@lbs_netdev_ops = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@lbs_ethtool_ops = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"wlan%d\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Starting main thread...\0A\00", align 1
@lbs_thread = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"lbs_main\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Error creating main thread.\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"lbs_worker\00", align 1
@lbs_association_worker = common dso_local global i32 0, align 4
@lbs_scan_worker = common dso_local global i32 0, align 4
@lbs_set_mcast_worker = common dso_local global i32 0, align 4
@lbs_sync_channel_worker = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"mesh\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"priv %p\00", align 1
@lbs_handler_def = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.lbs_private* @lbs_add_card(i8* %0, %struct.device* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.lbs_private*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.device* %1, %struct.device** %4, align 8
  store %struct.net_device* null, %struct.net_device** %5, align 8
  store %struct.lbs_private* null, %struct.lbs_private** %6, align 8
  %7 = load i32, i32* @LBS_DEB_MAIN, align 4
  %8 = call i32 @lbs_deb_enter(i32 %7)
  %9 = call %struct.net_device* @alloc_etherdev(i32 88)
  store %struct.net_device* %9, %struct.net_device** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = icmp ne %struct.net_device* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = call i32 @lbs_pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %111

14:                                               ; preds = %2
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = call %struct.lbs_private* @netdev_priv(%struct.net_device* %15)
  store %struct.lbs_private* %16, %struct.lbs_private** %6, align 8
  %17 = load %struct.lbs_private*, %struct.lbs_private** %6, align 8
  %18 = load %struct.net_device*, %struct.net_device** %5, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 6
  store %struct.lbs_private* %17, %struct.lbs_private** %19, align 8
  %20 = load %struct.lbs_private*, %struct.lbs_private** %6, align 8
  %21 = call i64 @lbs_init_adapter(%struct.lbs_private* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = call i32 @lbs_pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %106

25:                                               ; preds = %14
  %26 = load %struct.net_device*, %struct.net_device** %5, align 8
  %27 = load %struct.lbs_private*, %struct.lbs_private** %6, align 8
  %28 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %27, i32 0, i32 15
  store %struct.net_device* %26, %struct.net_device** %28, align 8
  %29 = load i8*, i8** %3, align 8
  %30 = load %struct.lbs_private*, %struct.lbs_private** %6, align 8
  %31 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %30, i32 0, i32 14
  store i8* %29, i8** %31, align 8
  %32 = load %struct.lbs_private*, %struct.lbs_private** %6, align 8
  %33 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %32, i32 0, i32 13
  store i64 0, i64* %33, align 8
  %34 = load %struct.lbs_private*, %struct.lbs_private** %6, align 8
  %35 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %34, i32 0, i32 12
  store i64 0, i64* %35, align 8
  %36 = load %struct.net_device*, %struct.net_device** %5, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 5
  store i32* @lbs_netdev_ops, i32** %37, align 8
  %38 = load i32, i32* @HZ, align 4
  %39 = mul nsw i32 5, %38
  %40 = load %struct.net_device*, %struct.net_device** %5, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.net_device*, %struct.net_device** %5, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 4
  store i32* @lbs_ethtool_ops, i32** %43, align 8
  %44 = load i32, i32* @IFF_BROADCAST, align 4
  %45 = load i32, i32* @IFF_MULTICAST, align 4
  %46 = or i32 %44, %45
  %47 = load %struct.net_device*, %struct.net_device** %5, align 8
  %48 = getelementptr inbounds %struct.net_device, %struct.net_device* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load %struct.net_device*, %struct.net_device** %5, align 8
  %52 = load %struct.device*, %struct.device** %4, align 8
  %53 = call i32 @SET_NETDEV_DEV(%struct.net_device* %51, %struct.device* %52)
  %54 = load %struct.lbs_private*, %struct.lbs_private** %6, align 8
  %55 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %54, i32 0, i32 11
  store i32* null, i32** %55, align 8
  %56 = load %struct.net_device*, %struct.net_device** %5, align 8
  %57 = getelementptr inbounds %struct.net_device, %struct.net_device* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @strcpy(i32 %58, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %60 = call i32 @lbs_deb_thread(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %61 = load %struct.lbs_private*, %struct.lbs_private** %6, align 8
  %62 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %61, i32 0, i32 10
  %63 = call i32 @init_waitqueue_head(i32* %62)
  %64 = load i32, i32* @lbs_thread, align 4
  %65 = load %struct.net_device*, %struct.net_device** %5, align 8
  %66 = call i32 @kthread_run(i32 %64, %struct.net_device* %65, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %67 = load %struct.lbs_private*, %struct.lbs_private** %6, align 8
  %68 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %67, i32 0, i32 9
  store i32 %66, i32* %68, align 4
  %69 = load %struct.lbs_private*, %struct.lbs_private** %6, align 8
  %70 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %69, i32 0, i32 9
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @IS_ERR(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %25
  %75 = call i32 @lbs_deb_thread(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %106

76:                                               ; preds = %25
  %77 = call i32 @create_singlethread_workqueue(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %78 = load %struct.lbs_private*, %struct.lbs_private** %6, align 8
  %79 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %78, i32 0, i32 8
  store i32 %77, i32* %79, align 8
  %80 = load %struct.lbs_private*, %struct.lbs_private** %6, align 8
  %81 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %80, i32 0, i32 7
  %82 = load i32, i32* @lbs_association_worker, align 4
  %83 = call i32 @INIT_DELAYED_WORK(i32* %81, i32 %82)
  %84 = load %struct.lbs_private*, %struct.lbs_private** %6, align 8
  %85 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %84, i32 0, i32 6
  %86 = load i32, i32* @lbs_scan_worker, align 4
  %87 = call i32 @INIT_DELAYED_WORK(i32* %85, i32 %86)
  %88 = load %struct.lbs_private*, %struct.lbs_private** %6, align 8
  %89 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %88, i32 0, i32 5
  %90 = load i32, i32* @lbs_set_mcast_worker, align 4
  %91 = call i32 @INIT_WORK(i32* %89, i32 %90)
  %92 = load %struct.lbs_private*, %struct.lbs_private** %6, align 8
  %93 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %92, i32 0, i32 4
  %94 = load i32, i32* @lbs_sync_channel_worker, align 4
  %95 = call i32 @INIT_WORK(i32* %93, i32 %94)
  %96 = load %struct.lbs_private*, %struct.lbs_private** %6, align 8
  %97 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @sprintf(i32 %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %100 = load %struct.lbs_private*, %struct.lbs_private** %6, align 8
  %101 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %100, i32 0, i32 0
  store i32 4, i32* %101, align 8
  %102 = load %struct.lbs_private*, %struct.lbs_private** %6, align 8
  %103 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %102, i32 0, i32 1
  store i32 -1, i32* %103, align 4
  %104 = load %struct.lbs_private*, %struct.lbs_private** %6, align 8
  %105 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %104, i32 0, i32 2
  store i32 255, i32* %105, align 8
  br label %111

106:                                              ; preds = %74, %23
  %107 = load %struct.lbs_private*, %struct.lbs_private** %6, align 8
  %108 = call i32 @lbs_free_adapter(%struct.lbs_private* %107)
  %109 = load %struct.net_device*, %struct.net_device** %5, align 8
  %110 = call i32 @free_netdev(%struct.net_device* %109)
  store %struct.lbs_private* null, %struct.lbs_private** %6, align 8
  br label %111

111:                                              ; preds = %106, %76, %12
  %112 = load i32, i32* @LBS_DEB_MAIN, align 4
  %113 = load %struct.lbs_private*, %struct.lbs_private** %6, align 8
  %114 = call i32 @lbs_deb_leave_args(i32 %112, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), %struct.lbs_private* %113)
  %115 = load %struct.lbs_private*, %struct.lbs_private** %6, align 8
  ret %struct.lbs_private* %115
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local i32 @lbs_pr_err(i8*) #1

declare dso_local %struct.lbs_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @lbs_init_adapter(%struct.lbs_private*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, %struct.device*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @lbs_deb_thread(i8*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @kthread_run(i32, %struct.net_device*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @create_singlethread_workqueue(i8*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @sprintf(i32, i8*) #1

declare dso_local i32 @lbs_free_adapter(%struct.lbs_private*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @lbs_deb_leave_args(i32, i8*, %struct.lbs_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
