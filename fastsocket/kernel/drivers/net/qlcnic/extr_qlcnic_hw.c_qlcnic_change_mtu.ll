; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_hw.c_qlcnic_change_mtu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_hw.c_qlcnic_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.qlcnic_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@P3P_MIN_MTU = common dso_local global i32 0, align 4
@P3P_MAX_MTU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"%d bytes < mtu < %d bytes not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qlcnic_adapter*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.qlcnic_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.qlcnic_adapter* %9, %struct.qlcnic_adapter** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @P3P_MIN_MTU, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @P3P_MAX_MTU, align 4
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %13, %2
  %18 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %19 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* @P3P_MAX_MTU, align 4
  %23 = load i32, i32* @P3P_MIN_MTU, align 4
  %24 = call i32 @dev_err(i32* %21, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23)
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %39

27:                                               ; preds = %13
  %28 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @qlcnic_fw_cmd_set_mtu(%struct.qlcnic_adapter* %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.net_device*, %struct.net_device** %4, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %33, %27
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %37, %17
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.qlcnic_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @qlcnic_fw_cmd_set_mtu(%struct.qlcnic_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
