; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_tbinstal.c_acpi_tb_resize_root_table_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_tbinstal.c_acpi_tb_resize_root_table_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, %struct.acpi_table_desc* }
%struct.acpi_table_desc = type { i32 }

@tb_resize_root_table_list = common dso_local global i32 0, align 4
@acpi_gbl_root_table_list = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ACPI_ROOT_ALLOW_RESIZE = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Resize of Root Table Array is not allowed\00", align 1
@AE_SUPPORT = common dso_local global i32 0, align 4
@ACPI_ROOT_TABLE_SIZE_INCREMENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Could not allocate new root table array\00", align 1
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@ACPI_ROOT_ORIGIN_ALLOCATED = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_tb_resize_root_table_list() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.acpi_table_desc*, align 8
  %3 = load i32, i32* @tb_resize_root_table_list, align 4
  %4 = call i32 @ACPI_FUNCTION_TRACE(i32 %3)
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acpi_gbl_root_table_list, i32 0, i32 0), align 8
  %6 = load i32, i32* @ACPI_ROOT_ALLOW_RESIZE, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %0
  %10 = load i32, i32* @AE_INFO, align 4
  %11 = call i32 @ACPI_ERROR(i32 ptrtoint ([42 x i8]* @.str to i32))
  %12 = load i32, i32* @AE_SUPPORT, align 4
  %13 = call i32 @return_ACPI_STATUS(i32 %12)
  br label %14

14:                                               ; preds = %9, %0
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acpi_gbl_root_table_list, i32 0, i32 1), align 8
  %16 = trunc i64 %15 to i32
  %17 = load i32, i32* @ACPI_ROOT_TABLE_SIZE_INCREMENT, align 4
  %18 = add nsw i32 %16, %17
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 4
  %21 = trunc i64 %20 to i32
  %22 = call %struct.acpi_table_desc* @ACPI_ALLOCATE_ZEROED(i32 %21)
  store %struct.acpi_table_desc* %22, %struct.acpi_table_desc** %2, align 8
  %23 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %2, align 8
  %24 = icmp ne %struct.acpi_table_desc* %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %14
  %26 = load i32, i32* @AE_INFO, align 4
  %27 = call i32 @ACPI_ERROR(i32 ptrtoint ([40 x i8]* @.str.1 to i32))
  %28 = load i32, i32* @AE_NO_MEMORY, align 4
  %29 = call i32 @return_ACPI_STATUS(i32 %28)
  br label %30

30:                                               ; preds = %25, %14
  %31 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acpi_gbl_root_table_list, i32 0, i32 2), align 8
  %32 = icmp ne %struct.acpi_table_desc* %31, null
  br i1 %32, label %33, label %50

33:                                               ; preds = %30
  %34 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %2, align 8
  %35 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acpi_gbl_root_table_list, i32 0, i32 2), align 8
  %36 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acpi_gbl_root_table_list, i32 0, i32 1), align 8
  %37 = trunc i64 %36 to i32
  %38 = sext i32 %37 to i64
  %39 = mul i64 %38, 4
  %40 = trunc i64 %39 to i32
  %41 = call i32 @ACPI_MEMCPY(%struct.acpi_table_desc* %34, %struct.acpi_table_desc* %35, i32 %40)
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acpi_gbl_root_table_list, i32 0, i32 0), align 8
  %43 = load i32, i32* @ACPI_ROOT_ORIGIN_ALLOCATED, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %33
  %47 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acpi_gbl_root_table_list, i32 0, i32 2), align 8
  %48 = call i32 @ACPI_FREE(%struct.acpi_table_desc* %47)
  br label %49

49:                                               ; preds = %46, %33
  br label %50

50:                                               ; preds = %49, %30
  %51 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %2, align 8
  store %struct.acpi_table_desc* %51, %struct.acpi_table_desc** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acpi_gbl_root_table_list, i32 0, i32 2), align 8
  %52 = load i32, i32* @ACPI_ROOT_TABLE_SIZE_INCREMENT, align 4
  %53 = sext i32 %52 to i64
  %54 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acpi_gbl_root_table_list, i32 0, i32 1), align 8
  %55 = add nsw i64 %54, %53
  store i64 %55, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acpi_gbl_root_table_list, i32 0, i32 1), align 8
  %56 = load i32, i32* @ACPI_ROOT_ORIGIN_ALLOCATED, align 4
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acpi_gbl_root_table_list, i32 0, i32 0), align 8
  %58 = or i32 %57, %56
  store i32 %58, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acpi_gbl_root_table_list, i32 0, i32 0), align 8
  %59 = load i32, i32* @AE_OK, align 4
  %60 = call i32 @return_ACPI_STATUS(i32 %59)
  %61 = load i32, i32* %1, align 4
  ret i32 %61
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local %struct.acpi_table_desc* @ACPI_ALLOCATE_ZEROED(i32) #1

declare dso_local i32 @ACPI_MEMCPY(%struct.acpi_table_desc*, %struct.acpi_table_desc*, i32) #1

declare dso_local i32 @ACPI_FREE(%struct.acpi_table_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
