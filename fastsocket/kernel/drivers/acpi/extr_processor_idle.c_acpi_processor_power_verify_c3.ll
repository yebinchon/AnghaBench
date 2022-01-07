; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_processor_idle.c_acpi_processor_power_verify_c3.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_processor_idle.c_acpi_processor_power_verify_c3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_8__ = type { i32 }
%struct.acpi_processor = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.acpi_processor_cx = type { i32, i32, i32, i32 }

@acpi_processor_power_verify_c3.bm_check_flag = internal global i32 -1, align 4
@acpi_processor_power_verify_c3.bm_control_flag = internal global i32 -1, align 4
@errata = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"C3 not supported on PIIX4 with Type-F DMA\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"C3 support requires BM control\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"C3 support without BM control\0A\00", align 1
@acpi_gbl_FADT = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@ACPI_FADT_WBINVD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [77 x i8] c"Cache invalidation should work properly for C3 to be enabled on SMP systems\0A\00", align 1
@ACPI_BITREG_BUS_MASTER_RLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_processor*, %struct.acpi_processor_cx*)* @acpi_processor_power_verify_c3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_processor_power_verify_c3(%struct.acpi_processor* %0, %struct.acpi_processor_cx* %1) #0 {
  %3 = alloca %struct.acpi_processor*, align 8
  %4 = alloca %struct.acpi_processor_cx*, align 8
  store %struct.acpi_processor* %0, %struct.acpi_processor** %3, align 8
  store %struct.acpi_processor_cx* %1, %struct.acpi_processor_cx** %4, align 8
  %5 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %4, align 8
  %6 = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %89

10:                                               ; preds = %2
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @errata, i32 0, i32 0, i32 0), align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i32, i32* @ACPI_DB_INFO, align 4
  %15 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([43 x i8]* @.str to i32))
  br label %89

16:                                               ; preds = %10
  br label %17

17:                                               ; preds = %16
  %18 = load i32, i32* @acpi_processor_power_verify_c3.bm_check_flag, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %35

20:                                               ; preds = %17
  %21 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %22 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %21, i32 0, i32 0
  %23 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %24 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @acpi_processor_power_init_bm_check(%struct.TYPE_7__* %22, i32 %25)
  %27 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %28 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* @acpi_processor_power_verify_c3.bm_check_flag, align 4
  %31 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %32 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* @acpi_processor_power_verify_c3.bm_control_flag, align 4
  br label %44

35:                                               ; preds = %17
  %36 = load i32, i32* @acpi_processor_power_verify_c3.bm_check_flag, align 4
  %37 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %38 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 4
  %40 = load i32, i32* @acpi_processor_power_verify_c3.bm_control_flag, align 4
  %41 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %42 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  store i32 %40, i32* %43, align 4
  br label %44

44:                                               ; preds = %35, %20
  %45 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %46 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %70

50:                                               ; preds = %44
  %51 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %52 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %69, label %56

56:                                               ; preds = %50
  %57 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %58 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 1
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load i32, i32* @ACPI_DB_INFO, align 4
  %64 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([32 x i8]* @.str.1 to i32))
  br label %89

65:                                               ; preds = %56
  %66 = load i32, i32* @ACPI_DB_INFO, align 4
  %67 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([31 x i8]* @.str.2 to i32))
  br label %68

68:                                               ; preds = %65
  br label %69

69:                                               ; preds = %68, %50
  br label %79

70:                                               ; preds = %44
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @acpi_gbl_FADT, i32 0, i32 0), align 4
  %72 = load i32, i32* @ACPI_FADT_WBINVD, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %70
  %76 = load i32, i32* @ACPI_DB_INFO, align 4
  %77 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([77 x i8]* @.str.3 to i32))
  br label %89

78:                                               ; preds = %70
  br label %79

79:                                               ; preds = %78, %69
  %80 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %4, align 8
  %81 = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %80, i32 0, i32 0
  store i32 1, i32* %81, align 4
  %82 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %4, align 8
  %83 = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %4, align 8
  %86 = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* @ACPI_BITREG_BUS_MASTER_RLD, align 4
  %88 = call i32 @acpi_write_bit_register(i32 %87, i32 1)
  br label %89

89:                                               ; preds = %79, %75, %62, %13, %9
  ret void
}

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_processor_power_init_bm_check(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @acpi_write_bit_register(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
