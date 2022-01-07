; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_processor_idle.c_acpi_processor_get_power_info_fadt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_processor_idle.c_acpi_processor_get_power_info_fadt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i64 }
%struct.acpi_processor = type { %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ACPI_STATE_C2 = common dso_local global i64 0, align 8
@ACPI_STATE_C3 = common dso_local global i64 0, align 8
@acpi_gbl_FADT = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@ACPI_FADT_C2_MP_SUPPORTED = common dso_local global i32 0, align 4
@ACPI_PROCESSOR_MAX_C2_LATENCY = common dso_local global i64 0, align 8
@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"C2 latency too large [%d]\0A\00", align 1
@ACPI_PROCESSOR_MAX_C3_LATENCY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"C3 latency too large [%d]\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"lvl2[0x%08x] lvl3[0x%08x]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_processor*)* @acpi_processor_get_power_info_fadt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_processor_get_power_info_fadt(%struct.acpi_processor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_processor*, align 8
  store %struct.acpi_processor* %0, %struct.acpi_processor** %3, align 8
  %4 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %5 = icmp ne %struct.acpi_processor* %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* @EINVAL, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %2, align 4
  br label %134

9:                                                ; preds = %1
  %10 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %11 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %134

17:                                               ; preds = %9
  %18 = load i64, i64* @ACPI_STATE_C2, align 8
  %19 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %20 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = load i64, i64* @ACPI_STATE_C2, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i64 %18, i64* %25, align 8
  %26 = load i64, i64* @ACPI_STATE_C3, align 8
  %27 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %28 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = load i64, i64* @ACPI_STATE_C3, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i64 %26, i64* %33, align 8
  %34 = call i32 (...) @num_online_cpus()
  %35 = icmp sgt i32 %34, 1
  br i1 %35, label %36, label %44

36:                                               ; preds = %17
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @acpi_gbl_FADT, i32 0, i32 0), align 8
  %38 = load i32, i32* @ACPI_FADT_C2_MP_SUPPORTED, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* @ENODEV, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %134

44:                                               ; preds = %36, %17
  %45 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %46 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 4
  %49 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %50 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = load i64, i64* @ACPI_STATE_C2, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  store i64 %48, i64* %55, align 8
  %56 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %57 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, 5
  %60 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %61 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = load i64, i64* @ACPI_STATE_C3, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  store i64 %59, i64* %66, align 8
  %67 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @acpi_gbl_FADT, i32 0, i32 1), align 8
  %68 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %69 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = load i64, i64* @ACPI_STATE_C2, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  store i64 %67, i64* %74, align 8
  %75 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @acpi_gbl_FADT, i32 0, i32 2), align 8
  %76 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %77 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = load i64, i64* @ACPI_STATE_C3, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  store i64 %75, i64* %82, align 8
  %83 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @acpi_gbl_FADT, i32 0, i32 1), align 8
  %84 = load i64, i64* @ACPI_PROCESSOR_MAX_C2_LATENCY, align 8
  %85 = icmp sgt i64 %83, %84
  br i1 %85, label %86, label %98

86:                                               ; preds = %44
  %87 = load i32, i32* @ACPI_DB_INFO, align 4
  %88 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @acpi_gbl_FADT, i32 0, i32 1), align 8
  %89 = trunc i64 %88 to i32
  %90 = call i32 @ACPI_DEBUG_PRINT(i32 %89)
  %91 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %92 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = load i64, i64* @ACPI_STATE_C2, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  store i64 0, i64* %97, align 8
  br label %98

98:                                               ; preds = %86, %44
  %99 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @acpi_gbl_FADT, i32 0, i32 2), align 8
  %100 = load i64, i64* @ACPI_PROCESSOR_MAX_C3_LATENCY, align 8
  %101 = icmp sgt i64 %99, %100
  br i1 %101, label %102, label %114

102:                                              ; preds = %98
  %103 = load i32, i32* @ACPI_DB_INFO, align 4
  %104 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @acpi_gbl_FADT, i32 0, i32 2), align 8
  %105 = trunc i64 %104 to i32
  %106 = call i32 @ACPI_DEBUG_PRINT(i32 %105)
  %107 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %108 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = load i64, i64* @ACPI_STATE_C3, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 2
  store i64 0, i64* %113, align 8
  br label %114

114:                                              ; preds = %102, %98
  %115 = load i32, i32* @ACPI_DB_INFO, align 4
  %116 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %117 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = load i64, i64* @ACPI_STATE_C2, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %125 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = load i64, i64* @ACPI_STATE_C3, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = trunc i64 %131 to i32
  %133 = call i32 @ACPI_DEBUG_PRINT(i32 %132)
  store i32 0, i32* %2, align 4
  br label %134

134:                                              ; preds = %114, %41, %14, %6
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local i32 @num_online_cpus(...) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
