; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_scan.c_acpi_bus_get_power_flags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_scan.c_acpi_bus_get_power_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, %struct.acpi_device_power_state*, %struct.TYPE_5__ }
%struct.acpi_device_power_state = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_8__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"_PSC\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"_IRC\00", align 1
@ACPI_STATE_D0 = common dso_local global i64 0, align 8
@ACPI_STATE_D3 = common dso_local global i64 0, align 8
@ACPI_STATE_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @acpi_bus_get_power_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_bus_get_power_flags(%struct.acpi_device* %0) #0 {
  %2 = alloca %struct.acpi_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.acpi_device_power_state*, align 8
  %7 = alloca [5 x i8], align 1
  store %struct.acpi_device* %0, %struct.acpi_device** %2, align 8
  store i32 0, i32* %3, align 4
  store i32* null, i32** %4, align 8
  store i64 0, i64* %5, align 8
  %8 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %9 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @acpi_get_handle(i32 %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32** %4)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i64 @ACPI_SUCCESS(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %17 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  br label %20

20:                                               ; preds = %15, %1
  %21 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %22 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @acpi_get_handle(i32 %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32** %4)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i64 @ACPI_SUCCESS(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %20
  %29 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %30 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  store i32 1, i32* %32, align 4
  br label %33

33:                                               ; preds = %28, %20
  %34 = load i64, i64* @ACPI_STATE_D0, align 8
  store i64 %34, i64* %5, align 8
  br label %35

35:                                               ; preds = %112, %33
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* @ACPI_STATE_D3, align 8
  %38 = icmp ule i64 %36, %37
  br i1 %38, label %39, label %115

39:                                               ; preds = %35
  %40 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %41 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load %struct.acpi_device_power_state*, %struct.acpi_device_power_state** %42, align 8
  %44 = load i64, i64* %5, align 8
  %45 = getelementptr inbounds %struct.acpi_device_power_state, %struct.acpi_device_power_state* %43, i64 %44
  store %struct.acpi_device_power_state* %45, %struct.acpi_device_power_state** %6, align 8
  %46 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0
  store i8 95, i8* %46, align 1
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  store i8 80, i8* %47, align 1
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  store i8 82, i8* %48, align 1
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  %50 = load i64, i64* %5, align 8
  %51 = add i64 48, %50
  %52 = trunc i64 %51 to i8
  store i8 %52, i8* %49, align 1
  %53 = getelementptr inbounds i8, i8* %49, i64 1
  store i8 0, i8* %53, align 1
  %54 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %55 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0
  %58 = load %struct.acpi_device_power_state*, %struct.acpi_device_power_state** %6, align 8
  %59 = getelementptr inbounds %struct.acpi_device_power_state, %struct.acpi_device_power_state* %58, i32 0, i32 3
  %60 = call i32 @acpi_evaluate_reference(i32 %56, i8* %57, i32* null, %struct.TYPE_8__* %59)
  %61 = load %struct.acpi_device_power_state*, %struct.acpi_device_power_state** %6, align 8
  %62 = getelementptr inbounds %struct.acpi_device_power_state, %struct.acpi_device_power_state* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %39
  %67 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %68 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 2
  store i32 1, i32* %70, align 8
  %71 = load %struct.acpi_device_power_state*, %struct.acpi_device_power_state** %6, align 8
  %72 = getelementptr inbounds %struct.acpi_device_power_state, %struct.acpi_device_power_state* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  store i32 1, i32* %73, align 8
  br label %74

74:                                               ; preds = %66, %39
  %75 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 2
  store i8 83, i8* %75, align 1
  %76 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %77 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0
  %80 = call i32 @acpi_get_handle(i32 %78, i8* %79, i32** %4)
  store i32 %80, i32* %3, align 4
  %81 = load i32, i32* %3, align 4
  %82 = call i64 @ACPI_SUCCESS(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %74
  %85 = load %struct.acpi_device_power_state*, %struct.acpi_device_power_state** %6, align 8
  %86 = getelementptr inbounds %struct.acpi_device_power_state, %struct.acpi_device_power_state* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  store i32 1, i32* %87, align 4
  %88 = load %struct.acpi_device_power_state*, %struct.acpi_device_power_state** %6, align 8
  %89 = getelementptr inbounds %struct.acpi_device_power_state, %struct.acpi_device_power_state* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  store i32 1, i32* %90, align 8
  br label %91

91:                                               ; preds = %84, %74
  %92 = load %struct.acpi_device_power_state*, %struct.acpi_device_power_state** %6, align 8
  %93 = getelementptr inbounds %struct.acpi_device_power_state, %struct.acpi_device_power_state* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %103, label %97

97:                                               ; preds = %91
  %98 = load %struct.acpi_device_power_state*, %struct.acpi_device_power_state** %6, align 8
  %99 = getelementptr inbounds %struct.acpi_device_power_state, %struct.acpi_device_power_state* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %97, %91
  %104 = load %struct.acpi_device_power_state*, %struct.acpi_device_power_state** %6, align 8
  %105 = getelementptr inbounds %struct.acpi_device_power_state, %struct.acpi_device_power_state* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  store i32 1, i32* %106, align 8
  br label %107

107:                                              ; preds = %103, %97
  %108 = load %struct.acpi_device_power_state*, %struct.acpi_device_power_state** %6, align 8
  %109 = getelementptr inbounds %struct.acpi_device_power_state, %struct.acpi_device_power_state* %108, i32 0, i32 0
  store i32 -1, i32* %109, align 8
  %110 = load %struct.acpi_device_power_state*, %struct.acpi_device_power_state** %6, align 8
  %111 = getelementptr inbounds %struct.acpi_device_power_state, %struct.acpi_device_power_state* %110, i32 0, i32 1
  store i32 -1, i32* %111, align 4
  br label %112

112:                                              ; preds = %107
  %113 = load i64, i64* %5, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %5, align 8
  br label %35

115:                                              ; preds = %35
  %116 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %117 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 1
  %119 = load %struct.acpi_device_power_state*, %struct.acpi_device_power_state** %118, align 8
  %120 = load i64, i64* @ACPI_STATE_D0, align 8
  %121 = getelementptr inbounds %struct.acpi_device_power_state, %struct.acpi_device_power_state* %119, i64 %120
  %122 = getelementptr inbounds %struct.acpi_device_power_state, %struct.acpi_device_power_state* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  store i32 1, i32* %123, align 8
  %124 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %125 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 1
  %127 = load %struct.acpi_device_power_state*, %struct.acpi_device_power_state** %126, align 8
  %128 = load i64, i64* @ACPI_STATE_D0, align 8
  %129 = getelementptr inbounds %struct.acpi_device_power_state, %struct.acpi_device_power_state* %127, i64 %128
  %130 = getelementptr inbounds %struct.acpi_device_power_state, %struct.acpi_device_power_state* %129, i32 0, i32 0
  store i32 100, i32* %130, align 8
  %131 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %132 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 1
  %134 = load %struct.acpi_device_power_state*, %struct.acpi_device_power_state** %133, align 8
  %135 = load i64, i64* @ACPI_STATE_D3, align 8
  %136 = getelementptr inbounds %struct.acpi_device_power_state, %struct.acpi_device_power_state* %134, i64 %135
  %137 = getelementptr inbounds %struct.acpi_device_power_state, %struct.acpi_device_power_state* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  store i32 1, i32* %138, align 8
  %139 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %140 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 1
  %142 = load %struct.acpi_device_power_state*, %struct.acpi_device_power_state** %141, align 8
  %143 = load i64, i64* @ACPI_STATE_D3, align 8
  %144 = getelementptr inbounds %struct.acpi_device_power_state, %struct.acpi_device_power_state* %142, i64 %143
  %145 = getelementptr inbounds %struct.acpi_device_power_state, %struct.acpi_device_power_state* %144, i32 0, i32 0
  store i32 0, i32* %145, align 8
  %146 = load i32, i32* @ACPI_STATE_UNKNOWN, align 4
  %147 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %148 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  store i32 %146, i32* %149, align 8
  %150 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %151 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %154 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 0
  %156 = call i32 @acpi_bus_get_power(i32 %152, i32* %155)
  ret i32 0
}

declare dso_local i32 @acpi_get_handle(i32, i8*, i32**) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @acpi_evaluate_reference(i32, i8*, i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @acpi_bus_get_power(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
