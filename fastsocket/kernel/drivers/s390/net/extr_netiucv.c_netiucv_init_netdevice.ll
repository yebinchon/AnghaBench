; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_netiucv.c_netiucv_init_netdevice.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_netiucv.c_netiucv_init_netdevice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netiucv_priv = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"iucv%d\00", align 1
@netiucv_setup_netdevice = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"netiucvdev\00", align 1
@dev_state_names = common dso_local global i32 0, align 4
@dev_event_names = common dso_local global i32 0, align 4
@NR_DEV_STATES = common dso_local global i32 0, align 4
@NR_DEV_EVENTS = common dso_local global i32 0, align 4
@dev_fsm = common dso_local global i32 0, align 4
@DEV_FSM_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@setup = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"NULL from netiucv_new_connection\0A\00", align 1
@DEV_STATE_STOPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device* (i8*)* @netiucv_init_netdevice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device* @netiucv_init_netdevice(i8* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.netiucv_priv*, align 8
  %5 = alloca %struct.net_device*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i32, i32* @netiucv_setup_netdevice, align 4
  %7 = call %struct.net_device* @alloc_netdev(i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %6)
  store %struct.net_device* %7, %struct.net_device** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %5, align 8
  %9 = icmp ne %struct.net_device* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.net_device* null, %struct.net_device** %2, align 8
  br label %65

11:                                               ; preds = %1
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @dev_alloc_name(%struct.net_device* %12, i32 %15)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  br label %62

19:                                               ; preds = %11
  %20 = load %struct.net_device*, %struct.net_device** %5, align 8
  %21 = call %struct.netiucv_priv* @netdev_priv(%struct.net_device* %20)
  store %struct.netiucv_priv* %21, %struct.netiucv_priv** %4, align 8
  %22 = load i32, i32* @dev_state_names, align 4
  %23 = load i32, i32* @dev_event_names, align 4
  %24 = load i32, i32* @NR_DEV_STATES, align 4
  %25 = load i32, i32* @NR_DEV_EVENTS, align 4
  %26 = load i32, i32* @dev_fsm, align 4
  %27 = load i32, i32* @DEV_FSM_LEN, align 4
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i32 @init_fsm(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %22, i32 %23, i32 %24, i32 %25, i32 %26, i32 %27, i32 %28)
  %30 = load %struct.netiucv_priv*, %struct.netiucv_priv** %4, align 8
  %31 = getelementptr inbounds %struct.netiucv_priv, %struct.netiucv_priv* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.netiucv_priv*, %struct.netiucv_priv** %4, align 8
  %33 = getelementptr inbounds %struct.netiucv_priv, %struct.netiucv_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %19
  br label %62

37:                                               ; preds = %19
  %38 = load %struct.net_device*, %struct.net_device** %5, align 8
  %39 = load i8*, i8** %3, align 8
  %40 = call i32 @netiucv_new_connection(%struct.net_device* %38, i8* %39)
  %41 = load %struct.netiucv_priv*, %struct.netiucv_priv** %4, align 8
  %42 = getelementptr inbounds %struct.netiucv_priv, %struct.netiucv_priv* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.netiucv_priv*, %struct.netiucv_priv** %4, align 8
  %44 = getelementptr inbounds %struct.netiucv_priv, %struct.netiucv_priv* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %37
  %48 = load i32, i32* @setup, align 4
  %49 = call i32 @IUCV_DBF_TEXT(i32 %48, i32 2, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %57

50:                                               ; preds = %37
  %51 = load %struct.netiucv_priv*, %struct.netiucv_priv** %4, align 8
  %52 = getelementptr inbounds %struct.netiucv_priv, %struct.netiucv_priv* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @DEV_STATE_STOPPED, align 4
  %55 = call i32 @fsm_newstate(i32 %53, i32 %54)
  %56 = load %struct.net_device*, %struct.net_device** %5, align 8
  store %struct.net_device* %56, %struct.net_device** %2, align 8
  br label %65

57:                                               ; preds = %47
  %58 = load %struct.netiucv_priv*, %struct.netiucv_priv** %4, align 8
  %59 = getelementptr inbounds %struct.netiucv_priv, %struct.netiucv_priv* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @kfree_fsm(i32 %60)
  br label %62

62:                                               ; preds = %57, %36, %18
  %63 = load %struct.net_device*, %struct.net_device** %5, align 8
  %64 = call i32 @free_netdev(%struct.net_device* %63)
  store %struct.net_device* null, %struct.net_device** %2, align 8
  br label %65

65:                                               ; preds = %62, %50, %10
  %66 = load %struct.net_device*, %struct.net_device** %2, align 8
  ret %struct.net_device* %66
}

declare dso_local %struct.net_device* @alloc_netdev(i32, i8*, i32) #1

declare dso_local i64 @dev_alloc_name(%struct.net_device*, i32) #1

declare dso_local %struct.netiucv_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @init_fsm(i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @netiucv_new_connection(%struct.net_device*, i8*) #1

declare dso_local i32 @IUCV_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @fsm_newstate(i32, i32) #1

declare dso_local i32 @kfree_fsm(i32) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
