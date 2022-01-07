; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_power_meter.c_setup_attrs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_power_meter.c_setup_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_power_meter_resource = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@POWER_METER_CAN_MEASURE = common dso_local global i32 0, align 4
@meter_ro_attrs = common dso_local global i32 0, align 4
@meter_rw_attrs = common dso_local global i32 0, align 4
@POWER_METER_CAN_CAP = common dso_local global i32 0, align 4
@rw_cap_attrs = common dso_local global i32 0, align 4
@ro_cap_attrs = common dso_local global i32 0, align 4
@misc_cap_attrs = common dso_local global i32 0, align 4
@POWER_METER_CAN_TRIP = common dso_local global i32 0, align 4
@trip_attrs = common dso_local global i32 0, align 4
@misc_attrs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_power_meter_resource*)* @setup_attrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_attrs(%struct.acpi_power_meter_resource* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_power_meter_resource*, align 8
  %4 = alloca i32, align 4
  store %struct.acpi_power_meter_resource* %0, %struct.acpi_power_meter_resource** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %3, align 8
  %6 = call i32 @read_domain_devices(%struct.acpi_power_meter_resource* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %103

11:                                               ; preds = %1
  %12 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %3, align 8
  %13 = getelementptr inbounds %struct.acpi_power_meter_resource, %struct.acpi_power_meter_resource* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @POWER_METER_CAN_MEASURE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %11
  %20 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %3, align 8
  %21 = load i32, i32* @meter_ro_attrs, align 4
  %22 = call i32 @register_ro_attrs(%struct.acpi_power_meter_resource* %20, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %97

26:                                               ; preds = %19
  %27 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %3, align 8
  %28 = load i32, i32* @meter_rw_attrs, align 4
  %29 = call i32 @register_rw_attrs(%struct.acpi_power_meter_resource* %27, i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %97

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33, %11
  %35 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %3, align 8
  %36 = getelementptr inbounds %struct.acpi_power_meter_resource, %struct.acpi_power_meter_resource* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @POWER_METER_CAN_CAP, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %72

42:                                               ; preds = %34
  %43 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %3, align 8
  %44 = getelementptr inbounds %struct.acpi_power_meter_resource, %struct.acpi_power_meter_resource* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %42
  %49 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %3, align 8
  %50 = load i32, i32* @rw_cap_attrs, align 4
  %51 = call i32 @register_rw_attrs(%struct.acpi_power_meter_resource* %49, i32 %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %97

55:                                               ; preds = %48
  br label %64

56:                                               ; preds = %42
  %57 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %3, align 8
  %58 = load i32, i32* @ro_cap_attrs, align 4
  %59 = call i32 @register_ro_attrs(%struct.acpi_power_meter_resource* %57, i32 %58)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %97

63:                                               ; preds = %56
  br label %64

64:                                               ; preds = %63, %55
  %65 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %3, align 8
  %66 = load i32, i32* @misc_cap_attrs, align 4
  %67 = call i32 @register_ro_attrs(%struct.acpi_power_meter_resource* %65, i32 %66)
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %97

71:                                               ; preds = %64
  br label %72

72:                                               ; preds = %71, %34
  %73 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %3, align 8
  %74 = getelementptr inbounds %struct.acpi_power_meter_resource, %struct.acpi_power_meter_resource* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @POWER_METER_CAN_TRIP, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %72
  %81 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %3, align 8
  %82 = load i32, i32* @trip_attrs, align 4
  %83 = call i32 @register_rw_attrs(%struct.acpi_power_meter_resource* %81, i32 %82)
  store i32 %83, i32* %4, align 4
  %84 = load i32, i32* %4, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  br label %97

87:                                               ; preds = %80
  br label %88

88:                                               ; preds = %87, %72
  %89 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %3, align 8
  %90 = load i32, i32* @misc_attrs, align 4
  %91 = call i32 @register_ro_attrs(%struct.acpi_power_meter_resource* %89, i32 %90)
  store i32 %91, i32* %4, align 4
  %92 = load i32, i32* %4, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  br label %97

95:                                               ; preds = %88
  %96 = load i32, i32* %4, align 4
  store i32 %96, i32* %2, align 4
  br label %103

97:                                               ; preds = %94, %86, %70, %62, %54, %32, %25
  %98 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %3, align 8
  %99 = call i32 @remove_domain_devices(%struct.acpi_power_meter_resource* %98)
  %100 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %3, align 8
  %101 = call i32 @remove_attrs(%struct.acpi_power_meter_resource* %100)
  %102 = load i32, i32* %4, align 4
  store i32 %102, i32* %2, align 4
  br label %103

103:                                              ; preds = %97, %95, %9
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i32 @read_domain_devices(%struct.acpi_power_meter_resource*) #1

declare dso_local i32 @register_ro_attrs(%struct.acpi_power_meter_resource*, i32) #1

declare dso_local i32 @register_rw_attrs(%struct.acpi_power_meter_resource*, i32) #1

declare dso_local i32 @remove_domain_devices(%struct.acpi_power_meter_resource*) #1

declare dso_local i32 @remove_attrs(%struct.acpi_power_meter_resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
