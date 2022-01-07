; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_processor_throttling.c_acpi_processor_get_throttling_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_processor_throttling.c_acpi_processor_get_throttling_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.acpi_processor = type { %struct.TYPE_5__, %struct.acpi_processor_throttling, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.acpi_processor_throttling = type { i64, i32, i32, i32, i64, i32*, i32*, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"pblk_address[0x%08x] duty_offset[%d] duty_width[%d]\0A\00", align 1
@acpi_processor_get_throttling_fadt = common dso_local global i32 0, align 4
@acpi_processor_set_throttling_fadt = common dso_local global i32 0, align 4
@acpi_processor_get_throttling_ptc = common dso_local global i32 0, align 4
@acpi_processor_set_throttling_ptc = common dso_local global i32 0, align 4
@DOMAIN_COORD_TYPE_SW_ALL = common dso_local global i32 0, align 4
@errata = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"Throttling not supported on PIIX4 A- or B-step\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Found %d throttling states\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Disabling throttling (was T%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_processor_get_throttling_info(%struct.acpi_processor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_processor*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_processor_throttling*, align 8
  store %struct.acpi_processor* %0, %struct.acpi_processor** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %7 = icmp ne %struct.acpi_processor* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %126

11:                                               ; preds = %1
  %12 = load i32, i32* @ACPI_DB_INFO, align 4
  %13 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %14 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %14, i32 0, i32 9
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %18 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %18, i32 0, i32 8
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %22 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %22, i32 0, i32 7
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @ACPI_DEBUG_PRINT(i32 %24)
  %26 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %27 = call i64 @acpi_processor_get_throttling_control(%struct.acpi_processor* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %11
  %30 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %31 = call i64 @acpi_processor_get_throttling_states(%struct.acpi_processor* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %35 = call i64 @acpi_processor_get_platform_limit(%struct.acpi_processor* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %33, %29, %11
  %38 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %39 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %39, i32 0, i32 6
  store i32* @acpi_processor_get_throttling_fadt, i32** %40, align 8
  %41 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %42 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %42, i32 0, i32 5
  store i32* @acpi_processor_set_throttling_fadt, i32** %43, align 8
  %44 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %45 = call i64 @acpi_processor_get_fadt_info(%struct.acpi_processor* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %126

48:                                               ; preds = %37
  br label %56

49:                                               ; preds = %33
  %50 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %51 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %51, i32 0, i32 6
  store i32* @acpi_processor_get_throttling_ptc, i32** %52, align 8
  %53 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %54 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %54, i32 0, i32 5
  store i32* @acpi_processor_set_throttling_ptc, i32** %55, align 8
  br label %56

56:                                               ; preds = %49, %48
  %57 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %58 = call i64 @acpi_processor_get_tsd(%struct.acpi_processor* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %75

60:                                               ; preds = %56
  %61 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %62 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %61, i32 0, i32 1
  store %struct.acpi_processor_throttling* %62, %struct.acpi_processor_throttling** %5, align 8
  %63 = load %struct.acpi_processor_throttling*, %struct.acpi_processor_throttling** %5, align 8
  %64 = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %63, i32 0, i32 4
  store i64 0, i64* %64, align 8
  %65 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %66 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.acpi_processor_throttling*, %struct.acpi_processor_throttling** %5, align 8
  %69 = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @cpumask_set_cpu(i32 %67, i32 %70)
  %72 = load i32, i32* @DOMAIN_COORD_TYPE_SW_ALL, align 4
  %73 = load %struct.acpi_processor_throttling*, %struct.acpi_processor_throttling** %5, align 8
  %74 = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  br label %75

75:                                               ; preds = %60, %56
  %76 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @errata, i32 0, i32 0, i32 0), align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i32, i32* @ACPI_DB_INFO, align 4
  %80 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([48 x i8]* @.str.1 to i32))
  store i32 0, i32* %2, align 4
  br label %126

81:                                               ; preds = %75
  %82 = load i32, i32* @ACPI_DB_INFO, align 4
  %83 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %84 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @ACPI_DEBUG_PRINT(i32 %86)
  %88 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %89 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  store i32 1, i32* %90, align 8
  %91 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %92 = call i32 @acpi_processor_get_throttling(%struct.acpi_processor* %91)
  store i32 %92, i32* %4, align 4
  %93 = load i32, i32* %4, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %81
  br label %117

96:                                               ; preds = %81
  %97 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %98 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %116

102:                                              ; preds = %96
  %103 = load i32, i32* @ACPI_DB_INFO, align 4
  %104 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %105 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.acpi_processor_throttling, %struct.acpi_processor_throttling* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = trunc i64 %107 to i32
  %109 = call i32 @ACPI_DEBUG_PRINT(i32 %108)
  %110 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %111 = call i32 @acpi_processor_set_throttling(%struct.acpi_processor* %110, i32 0, i32 0)
  store i32 %111, i32* %4, align 4
  %112 = load i32, i32* %4, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %102
  br label %117

115:                                              ; preds = %102
  br label %116

116:                                              ; preds = %115, %96
  br label %117

117:                                              ; preds = %116, %114, %95
  %118 = load i32, i32* %4, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %117
  %121 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %122 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  store i32 0, i32* %123, align 8
  br label %124

124:                                              ; preds = %120, %117
  %125 = load i32, i32* %4, align 4
  store i32 %125, i32* %2, align 4
  br label %126

126:                                              ; preds = %124, %78, %47, %8
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i64 @acpi_processor_get_throttling_control(%struct.acpi_processor*) #1

declare dso_local i64 @acpi_processor_get_throttling_states(%struct.acpi_processor*) #1

declare dso_local i64 @acpi_processor_get_platform_limit(%struct.acpi_processor*) #1

declare dso_local i64 @acpi_processor_get_fadt_info(%struct.acpi_processor*) #1

declare dso_local i64 @acpi_processor_get_tsd(%struct.acpi_processor*) #1

declare dso_local i32 @cpumask_set_cpu(i32, i32) #1

declare dso_local i32 @acpi_processor_get_throttling(%struct.acpi_processor*) #1

declare dso_local i32 @acpi_processor_set_throttling(%struct.acpi_processor*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
