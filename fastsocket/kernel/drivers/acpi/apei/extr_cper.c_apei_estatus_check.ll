; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/apei/extr_cper.c_apei_estatus_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/apei/extr_cper.c_apei_estatus_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_hest_generic_status = type { i32 }
%struct.acpi_hest_generic_data = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @apei_estatus_check(%struct.acpi_hest_generic_status* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_hest_generic_status*, align 8
  %4 = alloca %struct.acpi_hest_generic_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.acpi_hest_generic_status* %0, %struct.acpi_hest_generic_status** %3, align 8
  %8 = load %struct.acpi_hest_generic_status*, %struct.acpi_hest_generic_status** %3, align 8
  %9 = call i32 @apei_estatus_check_header(%struct.acpi_hest_generic_status* %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %2, align 4
  br label %60

14:                                               ; preds = %1
  %15 = load %struct.acpi_hest_generic_status*, %struct.acpi_hest_generic_status** %3, align 8
  %16 = getelementptr inbounds %struct.acpi_hest_generic_status, %struct.acpi_hest_generic_status* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %5, align 4
  %18 = load %struct.acpi_hest_generic_status*, %struct.acpi_hest_generic_status** %3, align 8
  %19 = getelementptr inbounds %struct.acpi_hest_generic_status, %struct.acpi_hest_generic_status* %18, i64 1
  %20 = bitcast %struct.acpi_hest_generic_status* %19 to %struct.acpi_hest_generic_data*
  store %struct.acpi_hest_generic_data* %20, %struct.acpi_hest_generic_data** %4, align 8
  br label %21

21:                                               ; preds = %38, %14
  %22 = load i32, i32* %5, align 4
  %23 = zext i32 %22 to i64
  %24 = icmp uge i64 %23, 4
  br i1 %24, label %25, label %53

25:                                               ; preds = %21
  %26 = load %struct.acpi_hest_generic_data*, %struct.acpi_hest_generic_data** %4, align 8
  %27 = getelementptr inbounds %struct.acpi_hest_generic_data, %struct.acpi_hest_generic_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = zext i32 %29 to i64
  %31 = load i32, i32* %5, align 4
  %32 = zext i32 %31 to i64
  %33 = sub i64 %32, 4
  %34 = icmp ugt i64 %30, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %25
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %60

38:                                               ; preds = %25
  %39 = load i32, i32* %6, align 4
  %40 = zext i32 %39 to i64
  %41 = add i64 %40, 4
  %42 = load i32, i32* %5, align 4
  %43 = zext i32 %42 to i64
  %44 = sub i64 %43, %41
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %5, align 4
  %46 = load %struct.acpi_hest_generic_data*, %struct.acpi_hest_generic_data** %4, align 8
  %47 = getelementptr inbounds %struct.acpi_hest_generic_data, %struct.acpi_hest_generic_data* %46, i64 1
  %48 = bitcast %struct.acpi_hest_generic_data* %47 to i8*
  %49 = load i32, i32* %6, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr i8, i8* %48, i64 %50
  %52 = bitcast i8* %51 to %struct.acpi_hest_generic_data*
  store %struct.acpi_hest_generic_data* %52, %struct.acpi_hest_generic_data** %4, align 8
  br label %21

53:                                               ; preds = %21
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %60

59:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %56, %35, %12
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @apei_estatus_check_header(%struct.acpi_hest_generic_status*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
