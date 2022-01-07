; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_thermal.c_acpi_thermal_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_thermal.c_acpi_thermal_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32 }
%struct.acpi_thermal = type { %struct.TYPE_10__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32* }
%struct.TYPE_7__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ACPI_THERMAL_MAX_ACTIVE = common dso_local global i32 0, align 4
@ACPI_STATE_D0 = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @acpi_thermal_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_thermal_resume(%struct.acpi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca %struct.acpi_thermal*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  store %struct.acpi_thermal* null, %struct.acpi_thermal** %4, align 8
  %9 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %10 = icmp ne %struct.acpi_device* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %13 = call %struct.acpi_thermal* @acpi_driver_data(%struct.acpi_device* %12)
  %14 = icmp ne %struct.acpi_thermal* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %11, %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %130

18:                                               ; preds = %11
  %19 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %20 = call %struct.acpi_thermal* @acpi_driver_data(%struct.acpi_device* %19)
  store %struct.acpi_thermal* %20, %struct.acpi_thermal** %4, align 8
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %123, %18
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @ACPI_THERMAL_MAX_ACTIVE, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %126

25:                                               ; preds = %21
  %26 = load %struct.acpi_thermal*, %struct.acpi_thermal** %4, align 8
  %27 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i64 %31
  %33 = icmp ne %struct.TYPE_9__* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %25
  br label %126

35:                                               ; preds = %25
  %36 = load %struct.acpi_thermal*, %struct.acpi_thermal** %4, align 8
  %37 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %35
  br label %126

48:                                               ; preds = %35
  %49 = load %struct.acpi_thermal*, %struct.acpi_thermal** %4, align 8
  %50 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %104, %48
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.acpi_thermal*, %struct.acpi_thermal** %4, align 8
  %61 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp slt i32 %59, %69
  br i1 %70, label %71, label %107

71:                                               ; preds = %58
  %72 = load %struct.acpi_thermal*, %struct.acpi_thermal** %4, align 8
  %73 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @acpi_bus_get_power(i32 %85, i32* %7)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %71
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* @ACPI_STATE_D0, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %103

93:                                               ; preds = %89, %71
  %94 = load %struct.acpi_thermal*, %struct.acpi_thermal** %4, align 8
  %95 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %96, align 8
  %98 = load i32, i32* %5, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  store i32 0, i32* %102, align 8
  br label %107

103:                                              ; preds = %89
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %6, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %6, align 4
  br label %58

107:                                              ; preds = %93, %58
  %108 = load %struct.acpi_thermal*, %struct.acpi_thermal** %4, align 8
  %109 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %110, align 8
  %112 = load i32, i32* %5, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.acpi_thermal*, %struct.acpi_thermal** %4, align 8
  %119 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = or i32 %121, %117
  store i32 %122, i32* %120, align 8
  br label %123

123:                                              ; preds = %107
  %124 = load i32, i32* %5, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %5, align 4
  br label %21

126:                                              ; preds = %47, %34, %21
  %127 = load %struct.acpi_thermal*, %struct.acpi_thermal** %4, align 8
  %128 = call i32 @acpi_thermal_check(%struct.acpi_thermal* %127)
  %129 = load i32, i32* @AE_OK, align 4
  store i32 %129, i32* %2, align 4
  br label %130

130:                                              ; preds = %126, %15
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local %struct.acpi_thermal* @acpi_driver_data(%struct.acpi_device*) #1

declare dso_local i32 @acpi_bus_get_power(i32, i32*) #1

declare dso_local i32 @acpi_thermal_check(%struct.acpi_thermal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
