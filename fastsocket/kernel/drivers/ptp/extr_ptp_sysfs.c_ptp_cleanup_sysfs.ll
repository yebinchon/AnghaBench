; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ptp/extr_ptp_sysfs.c_ptp_cleanup_sysfs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ptp/extr_ptp_sysfs.c_ptp_cleanup_sysfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptp_clock = type { %struct.ptp_clock_info*, %struct.device* }
%struct.ptp_clock_info = type { i64, i64, i64 }
%struct.device = type { i32 }

@dev_attr_extts_enable = common dso_local global i32 0, align 4
@dev_attr_fifo = common dso_local global i32 0, align 4
@dev_attr_period = common dso_local global i32 0, align 4
@dev_attr_pps_enable = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ptp_cleanup_sysfs(%struct.ptp_clock* %0) #0 {
  %2 = alloca %struct.ptp_clock*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.ptp_clock_info*, align 8
  store %struct.ptp_clock* %0, %struct.ptp_clock** %2, align 8
  %5 = load %struct.ptp_clock*, %struct.ptp_clock** %2, align 8
  %6 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %5, i32 0, i32 1
  %7 = load %struct.device*, %struct.device** %6, align 8
  store %struct.device* %7, %struct.device** %3, align 8
  %8 = load %struct.ptp_clock*, %struct.ptp_clock** %2, align 8
  %9 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %8, i32 0, i32 0
  %10 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %9, align 8
  store %struct.ptp_clock_info* %10, %struct.ptp_clock_info** %4, align 8
  %11 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %4, align 8
  %12 = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.device*, %struct.device** %3, align 8
  %17 = call i32 @device_remove_file(%struct.device* %16, i32* @dev_attr_extts_enable)
  %18 = load %struct.device*, %struct.device** %3, align 8
  %19 = call i32 @device_remove_file(%struct.device* %18, i32* @dev_attr_fifo)
  br label %20

20:                                               ; preds = %15, %1
  %21 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %4, align 8
  %22 = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load %struct.device*, %struct.device** %3, align 8
  %27 = call i32 @device_remove_file(%struct.device* %26, i32* @dev_attr_period)
  br label %28

28:                                               ; preds = %25, %20
  %29 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %4, align 8
  %30 = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load %struct.device*, %struct.device** %3, align 8
  %35 = call i32 @device_remove_file(%struct.device* %34, i32* @dev_attr_pps_enable)
  br label %36

36:                                               ; preds = %33, %28
  ret i32 0
}

declare dso_local i32 @device_remove_file(%struct.device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
