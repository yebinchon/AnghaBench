; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_thinkpad_acpi.c_thermal_get_sensors.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_thinkpad_acpi.c_thermal_get_sensors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibm_thermal_sensors_struct = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@thermal_read_mode = common dso_local global i64 0, align 8
@TPACPI_THERMAL_TPEC_16 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibm_thermal_sensors_struct*)* @thermal_get_sensors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thermal_get_sensors(%struct.ibm_thermal_sensors_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ibm_thermal_sensors_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ibm_thermal_sensors_struct* %0, %struct.ibm_thermal_sensors_struct** %3, align 8
  store i32 8, i32* %6, align 4
  store i32 0, i32* %5, align 4
  %7 = load %struct.ibm_thermal_sensors_struct*, %struct.ibm_thermal_sensors_struct** %3, align 8
  %8 = icmp ne %struct.ibm_thermal_sensors_struct* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %41

12:                                               ; preds = %1
  %13 = load i64, i64* @thermal_read_mode, align 8
  %14 = load i64, i64* @TPACPI_THERMAL_TPEC_16, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 16, i32* %6, align 4
  br label %17

17:                                               ; preds = %16, %12
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %36, %17
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %39

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.ibm_thermal_sensors_struct*, %struct.ibm_thermal_sensors_struct** %3, align 8
  %25 = getelementptr inbounds %struct.ibm_thermal_sensors_struct, %struct.ibm_thermal_sensors_struct* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = call i32 @thermal_get_sensor(i32 %23, i32* %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %22
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %41

35:                                               ; preds = %22
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %18

39:                                               ; preds = %18
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %39, %33, %9
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @thermal_get_sensor(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
