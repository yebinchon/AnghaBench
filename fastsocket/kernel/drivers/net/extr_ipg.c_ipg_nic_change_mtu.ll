; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ipg.c_ipg_nic_change_mtu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ipg.c_ipg_nic_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ipg_nic_private = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"_nic_change_mtu\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @ipg_nic_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipg_nic_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ipg_nic_private*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.ipg_nic_private* @netdev_priv(%struct.net_device* %8)
  store %struct.ipg_nic_private* %9, %struct.ipg_nic_private** %6, align 8
  %10 = call i32 @IPG_DEBUG_MSG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 68
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp sgt i32 %14, 10240
  br i1 %15, label %16, label %19

16:                                               ; preds = %13, %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %60

19:                                               ; preds = %13
  %20 = load %struct.net_device*, %struct.net_device** %4, align 8
  %21 = call i32 @ipg_nic_stop(%struct.net_device* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %60

26:                                               ; preds = %19
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.net_device*, %struct.net_device** %4, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.ipg_nic_private*, %struct.ipg_nic_private** %6, align 8
  %32 = getelementptr inbounds %struct.ipg_nic_private, %struct.ipg_nic_private* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.ipg_nic_private*, %struct.ipg_nic_private** %6, align 8
  %35 = getelementptr inbounds %struct.ipg_nic_private, %struct.ipg_nic_private* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.ipg_nic_private*, %struct.ipg_nic_private** %6, align 8
  %37 = getelementptr inbounds %struct.ipg_nic_private, %struct.ipg_nic_private* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp sgt i32 %38, 4088
  br i1 %39, label %40, label %43

40:                                               ; preds = %26
  %41 = load %struct.ipg_nic_private*, %struct.ipg_nic_private** %6, align 8
  %42 = getelementptr inbounds %struct.ipg_nic_private, %struct.ipg_nic_private* %41, i32 0, i32 1
  store i32 4088, i32* %42, align 4
  br label %43

43:                                               ; preds = %40, %26
  %44 = load %struct.ipg_nic_private*, %struct.ipg_nic_private** %6, align 8
  %45 = getelementptr inbounds %struct.ipg_nic_private, %struct.ipg_nic_private* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ipg_nic_private*, %struct.ipg_nic_private** %6, align 8
  %48 = getelementptr inbounds %struct.ipg_nic_private, %struct.ipg_nic_private* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp sgt i32 %49, 1536
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = load %struct.ipg_nic_private*, %struct.ipg_nic_private** %6, align 8
  %53 = getelementptr inbounds %struct.ipg_nic_private, %struct.ipg_nic_private* %52, i32 0, i32 3
  store i32 1, i32* %53, align 4
  br label %57

54:                                               ; preds = %43
  %55 = load %struct.ipg_nic_private*, %struct.ipg_nic_private** %6, align 8
  %56 = getelementptr inbounds %struct.ipg_nic_private, %struct.ipg_nic_private* %55, i32 0, i32 3
  store i32 0, i32* %56, align 4
  br label %57

57:                                               ; preds = %54, %51
  %58 = load %struct.net_device*, %struct.net_device** %4, align 8
  %59 = call i32 @ipg_nic_open(%struct.net_device* %58)
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %57, %24, %16
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.ipg_nic_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @IPG_DEBUG_MSG(i8*) #1

declare dso_local i32 @ipg_nic_stop(%struct.net_device*) #1

declare dso_local i32 @ipg_nic_open(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
