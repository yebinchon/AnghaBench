; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ptp/extr_ptp_sysfs.c_ptp_populate_sysfs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ptp/extr_ptp_sysfs.c_ptp_populate_sysfs.c"
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
define dso_local i32 @ptp_populate_sysfs(%struct.ptp_clock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ptp_clock*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.ptp_clock_info*, align 8
  %6 = alloca i32, align 4
  store %struct.ptp_clock* %0, %struct.ptp_clock** %3, align 8
  %7 = load %struct.ptp_clock*, %struct.ptp_clock** %3, align 8
  %8 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %7, i32 0, i32 1
  %9 = load %struct.device*, %struct.device** %8, align 8
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.ptp_clock*, %struct.ptp_clock** %3, align 8
  %11 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %10, i32 0, i32 0
  %12 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %11, align 8
  store %struct.ptp_clock_info* %12, %struct.ptp_clock_info** %5, align 8
  %13 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %5, align 8
  %14 = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = call i32 @device_create_file(%struct.device* %18, i32* @dev_attr_extts_enable)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %82

23:                                               ; preds = %17
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = call i32 @device_create_file(%struct.device* %24, i32* @dev_attr_fifo)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %73

29:                                               ; preds = %23
  br label %30

30:                                               ; preds = %29, %1
  %31 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %5, align 8
  %32 = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load %struct.device*, %struct.device** %4, align 8
  %37 = call i32 @device_create_file(%struct.device* %36, i32* @dev_attr_period)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %64

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %41, %30
  %43 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %5, align 8
  %44 = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load %struct.device*, %struct.device** %4, align 8
  %49 = call i32 @device_create_file(%struct.device* %48, i32* @dev_attr_pps_enable)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %55

53:                                               ; preds = %47
  br label %54

54:                                               ; preds = %53, %42
  store i32 0, i32* %2, align 4
  br label %84

55:                                               ; preds = %52
  %56 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %5, align 8
  %57 = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load %struct.device*, %struct.device** %4, align 8
  %62 = call i32 @device_remove_file(%struct.device* %61, i32* @dev_attr_period)
  br label %63

63:                                               ; preds = %60, %55
  br label %64

64:                                               ; preds = %63, %40
  %65 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %5, align 8
  %66 = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load %struct.device*, %struct.device** %4, align 8
  %71 = call i32 @device_remove_file(%struct.device* %70, i32* @dev_attr_fifo)
  br label %72

72:                                               ; preds = %69, %64
  br label %73

73:                                               ; preds = %72, %28
  %74 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %5, align 8
  %75 = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load %struct.device*, %struct.device** %4, align 8
  %80 = call i32 @device_remove_file(%struct.device* %79, i32* @dev_attr_extts_enable)
  br label %81

81:                                               ; preds = %78, %73
  br label %82

82:                                               ; preds = %81, %22
  %83 = load i32, i32* %6, align 4
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %82, %54
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @device_create_file(%struct.device*, i32*) #1

declare dso_local i32 @device_remove_file(%struct.device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
