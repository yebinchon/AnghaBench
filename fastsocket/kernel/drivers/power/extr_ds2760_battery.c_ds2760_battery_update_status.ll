; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_ds2760_battery.c_ds2760_battery_update_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_ds2760_battery.c_ds2760_battery_update_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds2760_device_info = type { i32, i32, i32, i32, i32, i32 }

@POWER_SUPPLY_STATUS_UNKNOWN = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_CHARGING = common dso_local global i8* null, align 8
@POWER_SUPPLY_STATUS_NOT_CHARGING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"not enough power to charge\0A\00", align 1
@POWER_SUPPLY_STATUS_FULL = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_DISCHARGING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ds2760_device_info*)* @ds2760_battery_update_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ds2760_battery_update_status(%struct.ds2760_device_info* %0) #0 {
  %2 = alloca %struct.ds2760_device_info*, align 8
  %3 = alloca i32, align 4
  store %struct.ds2760_device_info* %0, %struct.ds2760_device_info** %2, align 8
  %4 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %2, align 8
  %5 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %2, align 8
  %8 = call i32 @ds2760_battery_read_status(%struct.ds2760_device_info* %7)
  %9 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %2, align 8
  %10 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @POWER_SUPPLY_STATUS_UNKNOWN, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %2, align 8
  %16 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %15, i32 0, i32 1
  store i32 0, i32* %16, align 4
  br label %17

17:                                               ; preds = %14, %1
  %18 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %2, align 8
  %19 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %18, i32 0, i32 3
  %20 = call i64 @power_supply_am_i_supplied(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %94

22:                                               ; preds = %17
  %23 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %2, align 8
  %24 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = icmp sgt i32 %25, 10000
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load i8*, i8** @POWER_SUPPLY_STATUS_CHARGING, align 8
  %29 = ptrtoint i8* %28 to i32
  %30 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %2, align 8
  %31 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %2, align 8
  %33 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %32, i32 0, i32 1
  store i32 0, i32* %33, align 4
  br label %93

34:                                               ; preds = %22
  %35 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %2, align 8
  %36 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %37, -5000
  br i1 %38, label %39, label %56

39:                                               ; preds = %34
  %40 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %2, align 8
  %41 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @POWER_SUPPLY_STATUS_NOT_CHARGING, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %2, align 8
  %47 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dev_notice(i32 %48, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %50

50:                                               ; preds = %45, %39
  %51 = load i32, i32* @POWER_SUPPLY_STATUS_NOT_CHARGING, align 4
  %52 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %2, align 8
  %53 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %2, align 8
  %55 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %54, i32 0, i32 1
  store i32 0, i32* %55, align 4
  br label %92

56:                                               ; preds = %34
  %57 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %2, align 8
  %58 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = icmp slt i32 %59, 10000
  br i1 %60, label %61, label %91

61:                                               ; preds = %56
  %62 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %2, align 8
  %63 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @POWER_SUPPLY_STATUS_FULL, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %91

67:                                               ; preds = %61
  %68 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %2, align 8
  %69 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  %72 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %2, align 8
  %73 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp slt i32 %74, 2
  br i1 %75, label %76, label %81

76:                                               ; preds = %67
  %77 = load i8*, i8** @POWER_SUPPLY_STATUS_CHARGING, align 8
  %78 = ptrtoint i8* %77 to i32
  %79 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %2, align 8
  %80 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  br label %90

81:                                               ; preds = %67
  %82 = load i32, i32* @POWER_SUPPLY_STATUS_FULL, align 4
  %83 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %2, align 8
  %84 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  %85 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %2, align 8
  %86 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %2, align 8
  %87 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @ds2760_battery_set_current_accum(%struct.ds2760_device_info* %85, i32 %88)
  br label %90

90:                                               ; preds = %81, %76
  br label %91

91:                                               ; preds = %90, %61, %56
  br label %92

92:                                               ; preds = %91, %50
  br label %93

93:                                               ; preds = %92, %27
  br label %100

94:                                               ; preds = %17
  %95 = load i32, i32* @POWER_SUPPLY_STATUS_DISCHARGING, align 4
  %96 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %2, align 8
  %97 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 4
  %98 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %2, align 8
  %99 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %98, i32 0, i32 1
  store i32 0, i32* %99, align 4
  br label %100

100:                                              ; preds = %94, %93
  %101 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %2, align 8
  %102 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %3, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %100
  %107 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %2, align 8
  %108 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %107, i32 0, i32 3
  %109 = call i32 @power_supply_changed(i32* %108)
  br label %110

110:                                              ; preds = %106, %100
  ret void
}

declare dso_local i32 @ds2760_battery_read_status(%struct.ds2760_device_info*) #1

declare dso_local i64 @power_supply_am_i_supplied(i32*) #1

declare dso_local i32 @dev_notice(i32, i8*) #1

declare dso_local i32 @ds2760_battery_set_current_accum(%struct.ds2760_device_info*, i32) #1

declare dso_local i32 @power_supply_changed(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
