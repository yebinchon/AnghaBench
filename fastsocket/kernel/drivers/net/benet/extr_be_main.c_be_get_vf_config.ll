; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_get_vf_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_get_vf_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifla_vf_info = type { i32, i32, i64, i32, i32 }
%struct.be_adapter = type { i32, %struct.be_vf_cfg* }
%struct.be_vf_cfg = type { i32, i32, i32 }

@EPERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, %struct.ifla_vf_info*)* @be_get_vf_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_get_vf_config(%struct.net_device* %0, i32 %1, %struct.ifla_vf_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ifla_vf_info*, align 8
  %8 = alloca %struct.be_adapter*, align 8
  %9 = alloca %struct.be_vf_cfg*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ifla_vf_info* %2, %struct.ifla_vf_info** %7, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.be_adapter* @netdev_priv(%struct.net_device* %10)
  store %struct.be_adapter* %11, %struct.be_adapter** %8, align 8
  %12 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %13 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %12, i32 0, i32 1
  %14 = load %struct.be_vf_cfg*, %struct.be_vf_cfg** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.be_vf_cfg, %struct.be_vf_cfg* %14, i64 %16
  store %struct.be_vf_cfg* %17, %struct.be_vf_cfg** %9, align 8
  %18 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %19 = call i32 @sriov_enabled(%struct.be_adapter* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @EPERM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %56

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %27 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp sge i32 %25, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %56

33:                                               ; preds = %24
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %36 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.be_vf_cfg*, %struct.be_vf_cfg** %9, align 8
  %38 = getelementptr inbounds %struct.be_vf_cfg, %struct.be_vf_cfg* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %41 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 4
  %42 = load %struct.be_vf_cfg*, %struct.be_vf_cfg** %9, align 8
  %43 = getelementptr inbounds %struct.be_vf_cfg, %struct.be_vf_cfg* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %46 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 8
  %47 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %48 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %47, i32 0, i32 2
  store i64 0, i64* %48, align 8
  %49 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %50 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %49, i32 0, i32 1
  %51 = load %struct.be_vf_cfg*, %struct.be_vf_cfg** %9, align 8
  %52 = getelementptr inbounds %struct.be_vf_cfg, %struct.be_vf_cfg* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @ETH_ALEN, align 4
  %55 = call i32 @memcpy(i32* %50, i32 %53, i32 %54)
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %33, %30, %21
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local %struct.be_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @sriov_enabled(%struct.be_adapter*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
