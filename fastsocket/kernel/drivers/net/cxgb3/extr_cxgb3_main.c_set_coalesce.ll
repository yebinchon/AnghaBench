; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_cxgb3_main.c_set_coalesce.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_cxgb3_main.c_set_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_coalesce = type { i32 }
%struct.port_info = type { i32, %struct.adapter* }
%struct.adapter = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.sge_qset* }
%struct.sge_qset = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.qset_params* }
%struct.qset_params = type { i32 }

@M_NEWTIMER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_coalesce*)* @set_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_coalesce(%struct.net_device* %0, %struct.ethtool_coalesce* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_coalesce*, align 8
  %6 = alloca %struct.port_info*, align 8
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca %struct.qset_params*, align 8
  %9 = alloca %struct.sge_qset*, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.port_info* @netdev_priv(%struct.net_device* %11)
  store %struct.port_info* %12, %struct.port_info** %6, align 8
  %13 = load %struct.port_info*, %struct.port_info** %6, align 8
  %14 = getelementptr inbounds %struct.port_info, %struct.port_info* %13, i32 0, i32 1
  %15 = load %struct.adapter*, %struct.adapter** %14, align 8
  store %struct.adapter* %15, %struct.adapter** %7, align 8
  %16 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %17 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = mul nsw i32 %18, 10
  %20 = load i32, i32* @M_NEWTIMER, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %60

25:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %56, %25
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.port_info*, %struct.port_info** %6, align 8
  %29 = getelementptr inbounds %struct.port_info, %struct.port_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %59

32:                                               ; preds = %26
  %33 = load %struct.adapter*, %struct.adapter** %7, align 8
  %34 = getelementptr inbounds %struct.adapter, %struct.adapter* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.qset_params*, %struct.qset_params** %36, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.qset_params, %struct.qset_params* %37, i64 %39
  store %struct.qset_params* %40, %struct.qset_params** %8, align 8
  %41 = load %struct.adapter*, %struct.adapter** %7, align 8
  %42 = getelementptr inbounds %struct.adapter, %struct.adapter* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load %struct.sge_qset*, %struct.sge_qset** %43, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %44, i64 %46
  store %struct.sge_qset* %47, %struct.sge_qset** %9, align 8
  %48 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %49 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.qset_params*, %struct.qset_params** %8, align 8
  %52 = getelementptr inbounds %struct.qset_params, %struct.qset_params* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load %struct.sge_qset*, %struct.sge_qset** %9, align 8
  %54 = load %struct.qset_params*, %struct.qset_params** %8, align 8
  %55 = call i32 @t3_update_qset_coalesce(%struct.sge_qset* %53, %struct.qset_params* %54)
  br label %56

56:                                               ; preds = %32
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %10, align 4
  br label %26

59:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %22
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.port_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @t3_update_qset_coalesce(%struct.sge_qset*, %struct.qset_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
