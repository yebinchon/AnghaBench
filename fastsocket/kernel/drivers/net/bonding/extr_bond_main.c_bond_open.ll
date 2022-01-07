; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_main.c_bond_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_main.c_bond_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bonding = type { i32, i32, %struct.TYPE_2__, i32, i32, i32, i32, i64 }
%struct.TYPE_2__ = type { i64, i64, i64, i64 }

@bond_resend_igmp_join_requests_delayed = common dso_local global i32 0, align 4
@BOND_MODE_ALB = common dso_local global i64 0, align 8
@bond_alb_monitor = common dso_local global i32 0, align 4
@bond_mii_monitor = common dso_local global i32 0, align 4
@BOND_MODE_ACTIVEBACKUP = common dso_local global i64 0, align 8
@bond_activebackup_arp_mon = common dso_local global i32 0, align 4
@bond_loadbalance_arp_mon = common dso_local global i32 0, align 4
@BOND_MODE_8023AD = common dso_local global i64 0, align 8
@bond_3ad_state_machine_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @bond_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bond_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.bonding*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %5 = load %struct.net_device*, %struct.net_device** %3, align 8
  %6 = call %struct.bonding* @netdev_priv(%struct.net_device* %5)
  store %struct.bonding* %6, %struct.bonding** %4, align 8
  %7 = load %struct.bonding*, %struct.bonding** %4, align 8
  %8 = getelementptr inbounds %struct.bonding, %struct.bonding* %7, i32 0, i32 7
  store i64 0, i64* %8, align 8
  %9 = load %struct.bonding*, %struct.bonding** %4, align 8
  %10 = getelementptr inbounds %struct.bonding, %struct.bonding* %9, i32 0, i32 6
  %11 = load i32, i32* @bond_resend_igmp_join_requests_delayed, align 4
  %12 = call i32 @INIT_DELAYED_WORK(i32* %10, i32 %11)
  %13 = load %struct.bonding*, %struct.bonding** %4, align 8
  %14 = call i64 @bond_is_lb(%struct.bonding* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %39

16:                                               ; preds = %1
  %17 = load %struct.bonding*, %struct.bonding** %4, align 8
  %18 = load %struct.bonding*, %struct.bonding** %4, align 8
  %19 = getelementptr inbounds %struct.bonding, %struct.bonding* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @BOND_MODE_ALB, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i64 @bond_alb_initialize(%struct.bonding* %17, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %16
  store i32 -1, i32* %2, align 4
  br label %118

28:                                               ; preds = %16
  %29 = load %struct.bonding*, %struct.bonding** %4, align 8
  %30 = getelementptr inbounds %struct.bonding, %struct.bonding* %29, i32 0, i32 5
  %31 = load i32, i32* @bond_alb_monitor, align 4
  %32 = call i32 @INIT_DELAYED_WORK(i32* %30, i32 %31)
  %33 = load %struct.bonding*, %struct.bonding** %4, align 8
  %34 = getelementptr inbounds %struct.bonding, %struct.bonding* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.bonding*, %struct.bonding** %4, align 8
  %37 = getelementptr inbounds %struct.bonding, %struct.bonding* %36, i32 0, i32 5
  %38 = call i32 @queue_delayed_work(i32 %35, i32* %37, i32 0)
  br label %39

39:                                               ; preds = %28, %1
  %40 = load %struct.bonding*, %struct.bonding** %4, align 8
  %41 = getelementptr inbounds %struct.bonding, %struct.bonding* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %39
  %46 = load %struct.bonding*, %struct.bonding** %4, align 8
  %47 = getelementptr inbounds %struct.bonding, %struct.bonding* %46, i32 0, i32 4
  %48 = load i32, i32* @bond_mii_monitor, align 4
  %49 = call i32 @INIT_DELAYED_WORK(i32* %47, i32 %48)
  %50 = load %struct.bonding*, %struct.bonding** %4, align 8
  %51 = getelementptr inbounds %struct.bonding, %struct.bonding* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.bonding*, %struct.bonding** %4, align 8
  %54 = getelementptr inbounds %struct.bonding, %struct.bonding* %53, i32 0, i32 4
  %55 = call i32 @queue_delayed_work(i32 %52, i32* %54, i32 0)
  br label %56

56:                                               ; preds = %45, %39
  %57 = load %struct.bonding*, %struct.bonding** %4, align 8
  %58 = getelementptr inbounds %struct.bonding, %struct.bonding* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %95

62:                                               ; preds = %56
  %63 = load %struct.bonding*, %struct.bonding** %4, align 8
  %64 = getelementptr inbounds %struct.bonding, %struct.bonding* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @BOND_MODE_ACTIVEBACKUP, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %62
  %70 = load %struct.bonding*, %struct.bonding** %4, align 8
  %71 = getelementptr inbounds %struct.bonding, %struct.bonding* %70, i32 0, i32 3
  %72 = load i32, i32* @bond_activebackup_arp_mon, align 4
  %73 = call i32 @INIT_DELAYED_WORK(i32* %71, i32 %72)
  br label %79

74:                                               ; preds = %62
  %75 = load %struct.bonding*, %struct.bonding** %4, align 8
  %76 = getelementptr inbounds %struct.bonding, %struct.bonding* %75, i32 0, i32 3
  %77 = load i32, i32* @bond_loadbalance_arp_mon, align 4
  %78 = call i32 @INIT_DELAYED_WORK(i32* %76, i32 %77)
  br label %79

79:                                               ; preds = %74, %69
  %80 = load %struct.bonding*, %struct.bonding** %4, align 8
  %81 = getelementptr inbounds %struct.bonding, %struct.bonding* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.bonding*, %struct.bonding** %4, align 8
  %84 = getelementptr inbounds %struct.bonding, %struct.bonding* %83, i32 0, i32 3
  %85 = call i32 @queue_delayed_work(i32 %82, i32* %84, i32 0)
  %86 = load %struct.bonding*, %struct.bonding** %4, align 8
  %87 = getelementptr inbounds %struct.bonding, %struct.bonding* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %79
  %92 = load %struct.bonding*, %struct.bonding** %4, align 8
  %93 = call i32 @bond_register_arp(%struct.bonding* %92)
  br label %94

94:                                               ; preds = %91, %79
  br label %95

95:                                               ; preds = %94, %56
  %96 = load %struct.bonding*, %struct.bonding** %4, align 8
  %97 = getelementptr inbounds %struct.bonding, %struct.bonding* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @BOND_MODE_8023AD, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %117

102:                                              ; preds = %95
  %103 = load %struct.bonding*, %struct.bonding** %4, align 8
  %104 = getelementptr inbounds %struct.bonding, %struct.bonding* %103, i32 0, i32 0
  %105 = load i32, i32* @bond_3ad_state_machine_handler, align 4
  %106 = call i32 @INIT_DELAYED_WORK(i32* %104, i32 %105)
  %107 = load %struct.bonding*, %struct.bonding** %4, align 8
  %108 = getelementptr inbounds %struct.bonding, %struct.bonding* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.bonding*, %struct.bonding** %4, align 8
  %111 = getelementptr inbounds %struct.bonding, %struct.bonding* %110, i32 0, i32 0
  %112 = call i32 @queue_delayed_work(i32 %109, i32* %111, i32 0)
  %113 = load %struct.bonding*, %struct.bonding** %4, align 8
  %114 = call i32 @bond_register_lacpdu(%struct.bonding* %113)
  %115 = load %struct.bonding*, %struct.bonding** %4, align 8
  %116 = call i32 @bond_3ad_initiate_agg_selection(%struct.bonding* %115, i32 1)
  br label %117

117:                                              ; preds = %102, %95
  store i32 0, i32* %2, align 4
  br label %118

118:                                              ; preds = %117, %27
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local %struct.bonding* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i64 @bond_is_lb(%struct.bonding*) #1

declare dso_local i64 @bond_alb_initialize(%struct.bonding*, i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @bond_register_arp(%struct.bonding*) #1

declare dso_local i32 @bond_register_lacpdu(%struct.bonding*) #1

declare dso_local i32 @bond_3ad_initiate_agg_selection(%struct.bonding*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
