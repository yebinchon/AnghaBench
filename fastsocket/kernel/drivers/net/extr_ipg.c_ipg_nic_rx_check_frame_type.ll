; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ipg.c_ipg_nic_rx_check_frame_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ipg.c_ipg_nic_rx_check_frame_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ipg_nic_private = type { i32, %struct.ipg_rx* }
%struct.ipg_rx = type { i32 }

@IPG_RFDLIST_LENGTH = common dso_local global i32 0, align 4
@FRAME_NO_START_NO_END = common dso_local global i32 0, align 4
@IPG_RFS_FRAMESTART = common dso_local global i32 0, align 4
@FRAME_WITH_START = common dso_local global i64 0, align 8
@IPG_RFS_FRAMEEND = common dso_local global i32 0, align 4
@FRAME_WITH_END = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ipg_nic_rx_check_frame_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipg_nic_rx_check_frame_type(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ipg_nic_private*, align 8
  %4 = alloca %struct.ipg_rx*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.ipg_nic_private* @netdev_priv(%struct.net_device* %6)
  store %struct.ipg_nic_private* %7, %struct.ipg_nic_private** %3, align 8
  %8 = load %struct.ipg_nic_private*, %struct.ipg_nic_private** %3, align 8
  %9 = getelementptr inbounds %struct.ipg_nic_private, %struct.ipg_nic_private* %8, i32 0, i32 1
  %10 = load %struct.ipg_rx*, %struct.ipg_rx** %9, align 8
  %11 = load %struct.ipg_nic_private*, %struct.ipg_nic_private** %3, align 8
  %12 = getelementptr inbounds %struct.ipg_nic_private, %struct.ipg_nic_private* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @IPG_RFDLIST_LENGTH, align 4
  %15 = srem i32 %13, %14
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.ipg_rx, %struct.ipg_rx* %10, i64 %16
  store %struct.ipg_rx* %17, %struct.ipg_rx** %4, align 8
  %18 = load i32, i32* @FRAME_NO_START_NO_END, align 4
  store i32 %18, i32* %5, align 4
  %19 = load %struct.ipg_rx*, %struct.ipg_rx** %4, align 8
  %20 = getelementptr inbounds %struct.ipg_rx, %struct.ipg_rx* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @le64_to_cpu(i32 %21)
  %23 = load i32, i32* @IPG_RFS_FRAMESTART, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %1
  %27 = load i64, i64* @FRAME_WITH_START, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %29, %27
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %26, %1
  %33 = load %struct.ipg_rx*, %struct.ipg_rx** %4, align 8
  %34 = getelementptr inbounds %struct.ipg_rx, %struct.ipg_rx* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @le64_to_cpu(i32 %35)
  %37 = load i32, i32* @IPG_RFS_FRAMEEND, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %32
  %41 = load i64, i64* @FRAME_WITH_END, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %43, %41
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %40, %32
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local %struct.ipg_nic_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @le64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
