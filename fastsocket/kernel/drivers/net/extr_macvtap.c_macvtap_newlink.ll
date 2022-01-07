; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_macvtap.c_macvtap_newlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_macvtap.c_macvtap_newlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.nlattr = type { i32 }
%struct.device = type { i32 }
%struct.macvlan_dev = type { i32, i32 }

@macvtap_receive = common dso_local global i32 0, align 4
@macvtap_forward = common dso_local global i32 0, align 4
@macvtap_major = common dso_local global i32 0, align 4
@macvtap_class = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"tap%d\00", align 1
@TUN_OFFLOADS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.nlattr**, %struct.nlattr**)* @macvtap_newlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macvtap_newlink(%struct.net_device* %0, %struct.nlattr** %1, %struct.nlattr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.nlattr**, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.macvlan_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %6, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %7, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %14 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %15 = load i32, i32* @macvtap_receive, align 4
  %16 = load i32, i32* @macvtap_forward, align 4
  %17 = call i32 @macvlan_common_newlink(%struct.net_device* %12, %struct.nlattr** %13, %struct.nlattr** %14, i32 %15, i32 %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %61

21:                                               ; preds = %3
  %22 = load %struct.net_device*, %struct.net_device** %5, align 8
  %23 = call %struct.macvlan_dev* @netdev_priv(%struct.net_device* %22)
  store %struct.macvlan_dev* %23, %struct.macvlan_dev** %9, align 8
  %24 = load %struct.macvlan_dev*, %struct.macvlan_dev** %9, align 8
  %25 = call i32 @macvtap_get_minor(%struct.macvlan_dev* %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @notifier_from_errno(i32 %29)
  store i32 %30, i32* %4, align 4
  br label %63

31:                                               ; preds = %21
  %32 = load i32, i32* @macvtap_major, align 4
  %33 = call i32 @MAJOR(i32 %32)
  %34 = load %struct.macvlan_dev*, %struct.macvlan_dev** %9, align 8
  %35 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @MKDEV(i32 %33, i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* @macvtap_class, align 4
  %39 = load %struct.net_device*, %struct.net_device** %5, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 1
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.net_device*, %struct.net_device** %5, align 8
  %43 = load %struct.net_device*, %struct.net_device** %5, align 8
  %44 = getelementptr inbounds %struct.net_device, %struct.net_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call %struct.device* @device_create(i32 %38, i32* %40, i32 %41, %struct.net_device* %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %45)
  store %struct.device* %46, %struct.device** %8, align 8
  %47 = load %struct.device*, %struct.device** %8, align 8
  %48 = call i64 @IS_ERR(%struct.device* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %31
  %51 = load %struct.device*, %struct.device** %8, align 8
  %52 = call i32 @PTR_ERR(%struct.device* %51)
  store i32 %52, i32* %11, align 4
  %53 = load %struct.net_device*, %struct.net_device** %5, align 8
  %54 = call i32 @macvtap_del_queues(%struct.net_device* %53)
  %55 = load %struct.macvlan_dev*, %struct.macvlan_dev** %9, align 8
  %56 = call i32 @macvtap_free_minor(%struct.macvlan_dev* %55)
  br label %57

57:                                               ; preds = %50, %31
  %58 = load i32, i32* @TUN_OFFLOADS, align 4
  %59 = load %struct.macvlan_dev*, %struct.macvlan_dev** %9, align 8
  %60 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %57, %20
  %62 = load i32, i32* %11, align 4
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %61, %28
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @macvlan_common_newlink(%struct.net_device*, %struct.nlattr**, %struct.nlattr**, i32, i32) #1

declare dso_local %struct.macvlan_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @macvtap_get_minor(%struct.macvlan_dev*) #1

declare dso_local i32 @notifier_from_errno(i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local %struct.device* @device_create(i32, i32*, i32, %struct.net_device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.device*) #1

declare dso_local i32 @PTR_ERR(%struct.device*) #1

declare dso_local i32 @macvtap_del_queues(%struct.net_device*) #1

declare dso_local i32 @macvtap_free_minor(%struct.macvlan_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
