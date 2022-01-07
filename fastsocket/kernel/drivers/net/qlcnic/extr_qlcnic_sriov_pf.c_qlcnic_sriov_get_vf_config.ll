; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_get_vf_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_get_vf_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifla_vf_info = type { i32, i32, i32, i32, i32 }
%struct.qlcnic_adapter = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.qlcnic_sriov* }
%struct.qlcnic_sriov = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.qlcnic_vport* }
%struct.qlcnic_vport = type { i32, i32, i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@MAX_BW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_sriov_get_vf_config(%struct.net_device* %0, i32 %1, %struct.ifla_vf_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ifla_vf_info*, align 8
  %8 = alloca %struct.qlcnic_adapter*, align 8
  %9 = alloca %struct.qlcnic_sriov*, align 8
  %10 = alloca %struct.qlcnic_vport*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ifla_vf_info* %2, %struct.ifla_vf_info** %7, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.qlcnic_adapter* @netdev_priv(%struct.net_device* %11)
  store %struct.qlcnic_adapter* %12, %struct.qlcnic_adapter** %8, align 8
  %13 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %8, align 8
  %14 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %16, align 8
  store %struct.qlcnic_sriov* %17, %struct.qlcnic_sriov** %9, align 8
  %18 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %8, align 8
  %19 = call i32 @qlcnic_sriov_pf_check(%struct.qlcnic_adapter* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @EOPNOTSUPP, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %78

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %9, align 8
  %27 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp sge i32 %25, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %78

33:                                               ; preds = %24
  %34 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %9, align 8
  %35 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %40, align 8
  store %struct.qlcnic_vport* %41, %struct.qlcnic_vport** %10, align 8
  %42 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %43 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %42, i32 0, i32 4
  %44 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %10, align 8
  %45 = getelementptr inbounds %struct.qlcnic_vport, %struct.qlcnic_vport* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @ETH_ALEN, align 4
  %48 = call i32 @memcpy(i32* %43, i32 %46, i32 %47)
  %49 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %10, align 8
  %50 = getelementptr inbounds %struct.qlcnic_vport, %struct.qlcnic_vport* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %53 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 4
  %54 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %10, align 8
  %55 = getelementptr inbounds %struct.qlcnic_vport, %struct.qlcnic_vport* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %58 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  %59 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %10, align 8
  %60 = getelementptr inbounds %struct.qlcnic_vport, %struct.qlcnic_vport* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @MAX_BW, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %33
  %65 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %66 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %65, i32 0, i32 0
  store i32 0, i32* %66, align 4
  br label %74

67:                                               ; preds = %33
  %68 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %10, align 8
  %69 = getelementptr inbounds %struct.qlcnic_vport, %struct.qlcnic_vport* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = mul nsw i32 %70, 100
  %72 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %73 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  br label %74

74:                                               ; preds = %67, %64
  %75 = load i32, i32* %6, align 4
  %76 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %77 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %74, %30, %21
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local %struct.qlcnic_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @qlcnic_sriov_pf_check(%struct.qlcnic_adapter*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
