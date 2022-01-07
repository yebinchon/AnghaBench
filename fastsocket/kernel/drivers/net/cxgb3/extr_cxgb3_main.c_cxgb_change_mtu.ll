; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_cxgb3_main.c_cxgb_change_mtu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_cxgb3_main.c_cxgb_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.port_info = type { i32, %struct.adapter* }
%struct.adapter = type { %struct.TYPE_4__**, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @cxgb_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgb_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.port_info*, align 8
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.port_info* @netdev_priv(%struct.net_device* %9)
  store %struct.port_info* %10, %struct.port_info** %6, align 8
  %11 = load %struct.port_info*, %struct.port_info** %6, align 8
  %12 = getelementptr inbounds %struct.port_info, %struct.port_info* %11, i32 0, i32 1
  %13 = load %struct.adapter*, %struct.adapter** %12, align 8
  store %struct.adapter* %13, %struct.adapter** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 81
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %65

19:                                               ; preds = %2
  %20 = load %struct.port_info*, %struct.port_info** %6, align 8
  %21 = getelementptr inbounds %struct.port_info, %struct.port_info* %20, i32 0, i32 0
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @t3_mac_set_mtu(i32* %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %3, align 4
  br label %65

27:                                               ; preds = %19
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.net_device*, %struct.net_device** %4, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.adapter*, %struct.adapter** %7, align 8
  %32 = call i32 @init_port_mtus(%struct.adapter* %31)
  %33 = load %struct.adapter*, %struct.adapter** %7, align 8
  %34 = getelementptr inbounds %struct.adapter, %struct.adapter* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %64

38:                                               ; preds = %27
  %39 = load %struct.adapter*, %struct.adapter** %7, align 8
  %40 = call i64 @offload_running(%struct.adapter* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %64

42:                                               ; preds = %38
  %43 = load %struct.adapter*, %struct.adapter** %7, align 8
  %44 = load %struct.adapter*, %struct.adapter** %7, align 8
  %45 = getelementptr inbounds %struct.adapter, %struct.adapter* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.adapter*, %struct.adapter** %7, align 8
  %49 = getelementptr inbounds %struct.adapter, %struct.adapter* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.adapter*, %struct.adapter** %7, align 8
  %53 = getelementptr inbounds %struct.adapter, %struct.adapter* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.adapter*, %struct.adapter** %7, align 8
  %57 = getelementptr inbounds %struct.adapter, %struct.adapter* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %58, i64 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @t3_load_mtus(%struct.adapter* %43, i32 %47, i32 %51, i32 %55, i32 %62)
  br label %64

64:                                               ; preds = %42, %38, %27
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %64, %25, %16
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.port_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @t3_mac_set_mtu(i32*, i32) #1

declare dso_local i32 @init_port_mtus(%struct.adapter*) #1

declare dso_local i64 @offload_running(%struct.adapter*) #1

declare dso_local i32 @t3_load_mtus(%struct.adapter*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
