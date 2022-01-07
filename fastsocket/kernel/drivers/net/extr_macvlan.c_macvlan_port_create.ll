; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_macvlan.c_macvlan_port_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_macvlan.c_macvlan_port_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64, i32, i32 }
%struct.macvlan_port = type { i32, i32*, i32, %struct.net_device* }

@ARPHRD_ETHER = common dso_local global i64 0, align 8
@IFF_LOOPBACK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MACVLAN_HASH_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @macvlan_port_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macvlan_port_create(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.macvlan_port*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = getelementptr inbounds %struct.net_device, %struct.net_device* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @ARPHRD_ETHER, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %18, label %11

11:                                               ; preds = %1
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @IFF_LOOPBACK, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %11, %1
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %59

21:                                               ; preds = %11
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.macvlan_port* @kzalloc(i32 32, i32 %22)
  store %struct.macvlan_port* %23, %struct.macvlan_port** %4, align 8
  %24 = load %struct.macvlan_port*, %struct.macvlan_port** %4, align 8
  %25 = icmp eq %struct.macvlan_port* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %59

29:                                               ; preds = %21
  %30 = load %struct.macvlan_port*, %struct.macvlan_port** %4, align 8
  %31 = getelementptr inbounds %struct.macvlan_port, %struct.macvlan_port* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  %32 = load %struct.net_device*, %struct.net_device** %3, align 8
  %33 = load %struct.macvlan_port*, %struct.macvlan_port** %4, align 8
  %34 = getelementptr inbounds %struct.macvlan_port, %struct.macvlan_port* %33, i32 0, i32 3
  store %struct.net_device* %32, %struct.net_device** %34, align 8
  %35 = load %struct.macvlan_port*, %struct.macvlan_port** %4, align 8
  %36 = getelementptr inbounds %struct.macvlan_port, %struct.macvlan_port* %35, i32 0, i32 2
  %37 = call i32 @INIT_LIST_HEAD(i32* %36)
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %50, %29
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @MACVLAN_HASH_SIZE, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %38
  %43 = load %struct.macvlan_port*, %struct.macvlan_port** %4, align 8
  %44 = getelementptr inbounds %struct.macvlan_port, %struct.macvlan_port* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = call i32 @INIT_HLIST_HEAD(i32* %48)
  br label %50

50:                                               ; preds = %42
  %51 = load i32, i32* %5, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %38

53:                                               ; preds = %38
  %54 = load %struct.net_device*, %struct.net_device** %3, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.macvlan_port*, %struct.macvlan_port** %4, align 8
  %58 = call i32 @rcu_assign_pointer(i32 %56, %struct.macvlan_port* %57)
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %53, %26, %18
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.macvlan_port* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_HLIST_HEAD(i32*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.macvlan_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
