; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_evgpeblk.c_acpi_ev_gpe_initialize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_evgpeblk.c_acpi_ev_gpe_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@ev_gpe_initialize = common dso_local global i32 0, align 4
@ACPI_MTX_NAMESPACE = common dso_local global i32 0, align 4
@acpi_gbl_FADT = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@ACPI_GPE_REGISTER_WIDTH = common dso_local global i32 0, align 4
@acpi_gbl_fadt_gpe_device = common dso_local global i32 0, align 4
@acpi_gbl_gpe_fadt_blocks = common dso_local global i32* null, align 8
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Could not create GPE Block 0\00", align 1
@.str.1 = private unnamed_addr constant [80 x i8] c"GPE0 block (GPE 0 to %d) overlaps the GPE1 block (GPE %d to %d) - Ignoring GPE1\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Could not create GPE Block 1\00", align 1
@ACPI_DB_INIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"There are no GPE blocks defined in the FADT\0A\00", align 1
@AE_OK = common dso_local global i32 0, align 4
@ACPI_GPE_MAX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [48 x i8] c"Maximum GPE number from FADT is too large: 0x%X\00", align 1
@AE_BAD_VALUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ev_gpe_initialize() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %6 = load i32, i32* @ev_gpe_initialize, align 4
  %7 = call i32 @ACPI_FUNCTION_TRACE(i32 %6)
  %8 = load i32, i32* @ACPI_MTX_NAMESPACE, align 4
  %9 = call i32 @acpi_ut_acquire_mutex(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @ACPI_FAILURE(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %0
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @return_ACPI_STATUS(i32 %14)
  br label %16

16:                                               ; preds = %13, %0
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acpi_gbl_FADT, i32 0, i32 0), align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %43

19:                                               ; preds = %16
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acpi_gbl_FADT, i32 0, i32 5, i32 0), align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %43

22:                                               ; preds = %19
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acpi_gbl_FADT, i32 0, i32 0), align 8
  %24 = sdiv i32 %23, 2
  store i32 %24, i32* %2, align 4
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @ACPI_GPE_REGISTER_WIDTH, align 4
  %27 = mul nsw i32 %25, %26
  %28 = sub nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* @acpi_gbl_fadt_gpe_device, align 4
  %30 = load i32, i32* %2, align 4
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acpi_gbl_FADT, i32 0, i32 3), align 4
  %32 = load i32*, i32** @acpi_gbl_gpe_fadt_blocks, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = call i32 @acpi_ev_create_gpe_block(i32 %29, %struct.TYPE_4__* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acpi_gbl_FADT, i32 0, i32 5), i32 %30, i32 0, i32 %31, i32* %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i64 @ACPI_FAILURE(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %22
  %39 = load i32, i32* @AE_INFO, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @ACPI_EXCEPTION(i32 ptrtoint ([29 x i8]* @.str to i32))
  br label %42

42:                                               ; preds = %38, %22
  br label %43

43:                                               ; preds = %42, %19, %16
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acpi_gbl_FADT, i32 0, i32 1), align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %92

46:                                               ; preds = %43
  %47 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acpi_gbl_FADT, i32 0, i32 4, i32 0), align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %92

49:                                               ; preds = %46
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acpi_gbl_FADT, i32 0, i32 1), align 4
  %51 = sdiv i32 %50, 2
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* %2, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %49
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acpi_gbl_FADT, i32 0, i32 2), align 8
  %57 = icmp sge i32 %55, %56
  br i1 %57, label %58, label %69

58:                                               ; preds = %54
  %59 = load i32, i32* @AE_INFO, align 4
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acpi_gbl_FADT, i32 0, i32 2), align 8
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acpi_gbl_FADT, i32 0, i32 2), align 8
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* @ACPI_GPE_REGISTER_WIDTH, align 4
  %65 = mul nsw i32 %63, %64
  %66 = sub nsw i32 %65, 1
  %67 = add nsw i32 %62, %66
  %68 = call i32 @ACPI_ERROR(i32 %67)
  store i32 0, i32* %3, align 4
  br label %91

69:                                               ; preds = %54, %49
  %70 = load i32, i32* @acpi_gbl_fadt_gpe_device, align 4
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acpi_gbl_FADT, i32 0, i32 2), align 8
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acpi_gbl_FADT, i32 0, i32 3), align 4
  %74 = load i32*, i32** @acpi_gbl_gpe_fadt_blocks, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  %76 = call i32 @acpi_ev_create_gpe_block(i32 %70, %struct.TYPE_4__* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acpi_gbl_FADT, i32 0, i32 4), i32 %71, i32 %72, i32 %73, i32* %75)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = call i64 @ACPI_FAILURE(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %69
  %81 = load i32, i32* @AE_INFO, align 4
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @ACPI_EXCEPTION(i32 ptrtoint ([29 x i8]* @.str.2 to i32))
  br label %84

84:                                               ; preds = %80, %69
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acpi_gbl_FADT, i32 0, i32 2), align 8
  %86 = load i32, i32* %3, align 4
  %87 = load i32, i32* @ACPI_GPE_REGISTER_WIDTH, align 4
  %88 = mul nsw i32 %86, %87
  %89 = sub nsw i32 %88, 1
  %90 = add nsw i32 %85, %89
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %84, %58
  br label %92

92:                                               ; preds = %91, %46, %43
  %93 = load i32, i32* %2, align 4
  %94 = load i32, i32* %3, align 4
  %95 = add nsw i32 %93, %94
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  %98 = load i32, i32* @ACPI_DB_INIT, align 4
  %99 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([45 x i8]* @.str.3 to i32))
  %100 = load i32, i32* @AE_OK, align 4
  store i32 %100, i32* %5, align 4
  br label %111

101:                                              ; preds = %92
  %102 = load i32, i32* %4, align 4
  %103 = load i32, i32* @ACPI_GPE_MAX, align 4
  %104 = icmp sgt i32 %102, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %101
  %106 = load i32, i32* @AE_INFO, align 4
  %107 = load i32, i32* %4, align 4
  %108 = call i32 @ACPI_ERROR(i32 %107)
  %109 = load i32, i32* @AE_BAD_VALUE, align 4
  store i32 %109, i32* %5, align 4
  br label %111

110:                                              ; preds = %101
  br label %111

111:                                              ; preds = %110, %105, %97
  %112 = load i32, i32* @ACPI_MTX_NAMESPACE, align 4
  %113 = call i32 @acpi_ut_release_mutex(i32 %112)
  %114 = load i32, i32* @AE_OK, align 4
  %115 = call i32 @return_ACPI_STATUS(i32 %114)
  %116 = load i32, i32* %1, align 4
  ret i32 %116
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @acpi_ut_acquire_mutex(i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_ev_create_gpe_block(i32, %struct.TYPE_4__*, i32, i32, i32, i32*) #1

declare dso_local i32 @ACPI_EXCEPTION(i32) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_ut_release_mutex(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
